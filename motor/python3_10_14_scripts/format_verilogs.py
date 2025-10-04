import os
import re
import shutil
import argparse

def parse_arguments():
    parser = argparse.ArgumentParser(description='Process Verilog files with specified parameters')
    
    # Base routes - accepts multiple values (MANDATORY)
    parser.add_argument('--base-routes', 
                       nargs='+', 
                       required=True,
                       help='List of base routes (REQUIRED)')

    # Carpetas verilogs - accepts multiple values (MANDATORY)
    parser.add_argument('--carpetas-verilogs', 
                       nargs='+', 
                       required=True,
                       help='List of Verilog folders (REQUIRED)')

    
    # Es red - boolean flag or integer (OPTIONAL, defaults to 0)
    parser.add_argument('--es-red', 
                       type=int, 
                       default=0,
                       help='Network flag (default: 0)')
    
    # Inputs - accepts multiple values
    parser.add_argument('--inputs', 
                       nargs='+',
                       help='List of input signals (REQUIRED)')
    
    # Outputs - accepts multiple values
    parser.add_argument('--outputs',
                       nargs='+', 
                       help='List of output signals (REQUIRED)')
    
    return parser.parse_args()

#Función que agrega nombre de inputs y outputs en el main de explícito redes
def layers_to_signals(input_file, output_file, inputs, outputs):
    """
    Formats a Verilog file by replacing fc0_input with multiple signals and renaming outputs.
    
    Args:
        input_file (str): Path to input Verilog file
        output_file (str): Path to output Verilog file  
        inputs (list): List of input signal names to replace fc0_input
        outputs (list): List of output signal names to replace layerN_out_k
    """
    
    with open(input_file, 'r') as f:
        for linea in f:
            print(linea[0:-2])
        content = f.read()
    
    # Calculate bit width for each input signal
    # Find original fc0_input bit width
    fc0_match = re.search(r'input\s+\[(\d+):0\]\s+fc0_input', content)
    if not fc0_match:
        raise ValueError("Could not find fc0_input declaration with bit width")
    
    total_bits = int(fc0_match.group(1)) + 1  # +1 because [83:0] means 84 bits
    bits_per_signal = total_bits // len(inputs)
    
    print(f"Total bits: {total_bits}, Signals: {len(inputs)}, Bits per signal: {bits_per_signal}")
    
    # Find all layerN_out_k patterns to determine N and number of outputs
    layer_outputs = re.findall(r'layer(\d+)_out_(\d+)', content)
    if not layer_outputs:
        raise ValueError("Could not find layer output patterns")
    
    layer_n = layer_outputs[0][0]  # Get N from first match
    
    # 1. Replace module declaration
    # Find the module declaration
    module_match = re.search(r'module\s+(\w+)\s*\(\s*(.*?)\s*\);', content, re.DOTALL)
    if not module_match:
        raise ValueError("Could not find module declaration")
    
    module_name = module_match.group(1)
    port_list = module_match.group(2)
    
    # Replace fc0_input with individual input signals in port list
    new_port_list = port_list.replace('fc0_input,', ', '.join(inputs) + ',')
    
    # Replace layerN_out_k with new output names
    for i, output_name in enumerate(outputs):
        old_output = f'layer{layer_n}_out_{i}'
        old_output_vld = f'layer{layer_n}_out_{i}_ap_vld'
        new_output_vld = f'{output_name}_ap_vld'
        
        new_port_list = new_port_list.replace(old_output + ',', output_name + ',')
        new_port_list = new_port_list.replace(old_output_vld, new_output_vld)
    
    # 2. Replace input declarations
    # Remove original fc0_input declaration
    content = re.sub(r'input\s+\[\d+:0\]\s+fc0_input;\s*\n', '', content)
    
    # Add new input declarations
    new_input_declarations = []
    for input_name in inputs:
        new_input_declarations.append(f'input [{bits_per_signal-1}:0] {input_name};')
    
    # Find where to insert new declarations (after fc0_input_ap_vld)
    fc0_vld_match = re.search(r'(input\s+fc0_input_ap_vld;\s*\n)', content)
    if fc0_vld_match:
        insert_pos = fc0_vld_match.end()
        content = content[:insert_pos] + '\n'.join(new_input_declarations) + '\n' + content[insert_pos:]
    
    # 3. Replace output declarations and reg declarations
    for i, output_name in enumerate(outputs):
        old_output = f'layer{layer_n}_out_{i}'
        old_output_vld = f'layer{layer_n}_out_{i}_ap_vld'
        new_output_vld = f'{output_name}_ap_vld'
        
        # Replace output declarations
        content = re.sub(f'output\\s+\\[\\d+:0\\]\\s+{re.escape(old_output)};', 
                        f'output [11:0] {output_name};', content)
        content = re.sub(f'output\\s+{re.escape(old_output_vld)};', 
                        f'output {new_output_vld};', content)
        
        # Replace reg declarations
        content = re.sub(f'reg\\s+{re.escape(old_output_vld)};', 
                        f'reg {new_output_vld};', content)
    
    # 4. Add fc0_input reg declaration and always block
    fc0_reg_declaration = f'reg [{total_bits-1}:0] fc0_input;'
    always_block = f'''always @ (*) begin
    fc0_input = {{{', '.join(inputs)}}};
end'''
    
    # Find where to insert (before the first reg declaration)
    first_reg_match = re.search(r'(\nreg\s+)', content)
    if first_reg_match:
        insert_pos = first_reg_match.start() + 1
        content = content[:insert_pos] + fc0_reg_declaration + '\n' + always_block + '\n\n' + content[insert_pos:]
    
    # 5. Update the module declaration in the content
    old_module_decl = module_match.group(0)
    new_module_decl = f'module {module_name} (\n    {new_port_list}\n);'
    content = content.replace(old_module_decl, new_module_decl)
    
    # Write the modified content to output file
    with open(output_file, 'w') as f:
        f.write(content)
    
    print(f"Verilog file formatted successfully!")
    print(f"Input: {input_file}")
    print(f"Output: {output_file}")
    print(f"Replaced fc0_input with: {inputs}")
    print(f"Renamed outputs to: {outputs}")


#Función que devuelve el nombre del módulo verilog
def mod_name(linea):
    module_index = linea.find("module")
    if('(' in linea):
        open_paren_index = linea.rindex("(")
        if('#' in linea):
            gato_index = linea.rindex("#")
        else:
            gato_index = open_paren_index+1
        if(open_paren_index > gato_index):
            index1 = gato_index
        else:
            index1 = open_paren_index
        module_name = linea[module_index + len("module"):index1].strip()
    else:
        temp = linea.strip().split(' ')
        module_name = temp[1]
    return(module_name)

#Función que agrega nombre de inputs y outputs en el main de explícito redes
def layers_to_signals(input_file, output_file, inputs, outputs):
    """
    Formats a Verilog file by replacing fc0_input with multiple signals and renaming outputs.
    
    Args:
        input_file (str): Path to input Verilog file
        output_file (str): Path to output Verilog file  
        inputs (list): List of input signal names to replace fc0_input
        outputs (list): List of output signal names to replace layerN_out_k
    """
    content = []
    with open(input_file, 'r') as f:
        content = f.read()
    
    # Calculate bit width for each input signal
    # Find original fc0_input bit width
    fc0_match = re.search(r'input\s+\[(\d+):0\]\s+fc0_input', content)
    if not fc0_match:
        raise ValueError("Could not find fc0_input declaration with bit width")
    
    total_bits = int(fc0_match.group(1)) + 1  # +1 because [83:0] means 84 bits
    bits_per_signal = total_bits // len(inputs)
    
    print(f"Total bits: {total_bits}, Signals: {len(inputs)}, Bits per signal: {bits_per_signal}")
    
    # Find all layerN_out_k patterns to determine N and number of outputs
    layer_outputs = re.findall(r'layer(\d+)_out_(\d*)', content)
    if not layer_outputs:
        raise ValueError("Could not find layer output patterns")
    
    layer_n = layer_outputs[0][0]  # Get N from first match
    
    # 1. Replace module declaration
    # Find the module declaration
    module_match = re.search(r'module\s+(\w+)\s*\(\s*(.*?)\s*\);', content, re.DOTALL)
    if not module_match:
        raise ValueError("Could not find module declaration")
    
    module_name = module_match.group(1)
    port_list = module_match.group(2)
    
    # Replace fc0_input with individual input signals in port list
    new_port_list = port_list.replace('fc0_input,', ', '.join(inputs) + ',')
    
    # Replace layerN_out_k with new output names
    for i, output_name in enumerate(outputs):
        old_output = f'layer{layer_n}_out_{i}'
        old_output_vld = f'layer{layer_n}_out_{i}_ap_vld'
        new_output_vld = f'{output_name}_ap_vld'
        
        new_port_list = new_port_list.replace(old_output + ',', output_name + ',')
        new_port_list = new_port_list.replace(old_output_vld, new_output_vld)
    
    # 2. Replace input declarations
    # Remove original fc0_input declaration
    content = re.sub(r'input\s+\[\d+:0\]\s+fc0_input;\s*\n', '', content)
    
    # Add new input declarations
    new_input_declarations = []
    for input_name in inputs:
        new_input_declarations.append(f'input [{bits_per_signal-1}:0] {input_name};')
    
    # Find where to insert new declarations (after fc0_input_ap_vld)
    fc0_vld_match = re.search(r'(input\s+fc0_input_ap_vld;\s*\n)', content)
    if fc0_vld_match:
        insert_pos = fc0_vld_match.end()
        content = content[:insert_pos] + '\n'.join(new_input_declarations) + '\n' + content[insert_pos:]
    
    # 3. Replace output declarations and reg declarations
    layer_outputs_digit = re.findall(r'layer(\d+)_out_(\d+)', content)
    for i, output_name in enumerate(outputs):
        if(layer_outputs_digit):
            old_output = f'layer{layer_n}_out_{i}'
            old_output_vld = f'layer{layer_n}_out_{i}_ap_vld'
        new_output_vld = f'{output_name}_ap_vld'
        
        # Replace output declarations
        content = re.sub(f'output\\s+\\[\\d+:0\\]\\s+{re.escape(old_output)};', 
                        f'output [11:0] {output_name};', content)
        content = re.sub(f'output\\s+{re.escape(old_output_vld)};', 
                        f'output {new_output_vld};', content)
        
        # Replace reg declarations
        content = re.sub(f'reg\\s+{re.escape(old_output_vld)};', 
                        f'reg {new_output_vld};', content)
    
    # 4. Add fc0_input reg declaration and always block
    fc0_reg_declaration = f'reg [{total_bits-1}:0] fc0_input;'
    always_block = f'''always @ (*) begin
    fc0_input = {{{', '.join(inputs)}}};
end'''
    
    # Find where to insert (before the first reg declaration)
    first_reg_match = re.search(r'(\nreg\s+)', content)
    if first_reg_match:
        insert_pos = first_reg_match.start() + 1
        content = content[:insert_pos] + fc0_reg_declaration + '\n' + always_block + '\n\n' + content[insert_pos:]
    
    # 5. Update the module declaration in the content
    old_module_decl = module_match.group(0)
    new_module_decl = f'module {module_name} (\n    {new_port_list}\n);'
    content = content.replace(old_module_decl, new_module_decl)
    
    # Write the modified content to output file
    with open(output_file, 'w') as f:
        f.write(content)
    '''
    print(f"Verilog file formatted successfully!")
    print(f"Input: {input_file}")
    print(f"Output: {output_file}")
    print(f"Replaced fc0_input with: {inputs}")
    print(f"Renamed outputs to: {outputs}")'''



if __name__ == "__main__":
    args = parse_arguments()
    
    # Access the parsed arguments
    carpetas_verilogs = args.carpetas_verilogs
    base_routes = args.base_routes
    es_red = args.es_red
    if(es_red):
        inputs = args.inputs
        inputs.reverse()
        outputs = args.outputs
    #Lista de carpetas con archivos verilogs a procesar

    for path in base_routes:
        abspath = os.path.abspath(__file__)
        dname = os.path.dirname(abspath)
        #os.chdir(dname)
        os.chdir(f'{dname}/{path}')

        for carpeta_verilog in carpetas_verilogs:
            cvname = os.path.join(f'{dname}/{path}', carpeta_verilog)
            os.chdir(cvname)
            #Tratamiento archivos .dat
            dats = os.listdir()
            dats = [k[0:-4] for k in dats if k[-4:]=='.dat']
            #print(dats)

            for dat in dats:
                indice = 0
                k=-1
                mem_name = ''
                with open(dat+'.v', 'r') as ar_v:  
                    lines_v = ar_v.readlines()  
                for line in lines_v:
                    k+=1
                    if '$readmemh' in line:
                        indice = k
                        last_comma_index = line.rfind(',')
                        last_parenthesis_index = line.rfind(')')
                        mem_name = line[last_comma_index + 1:last_parenthesis_index].strip()
                        break
                del lines_v[indice]
                with open(dat+'.dat', 'r') as ar_dat:
                    k=0
                    mem = []
                    for linea in ar_dat:
                        pre = f"{mem_name}[{k}] = 'h"
                        mem.append(pre + linea[0:-1]+';\n')
                        k+=1
                lines_v[indice:indice] = mem
                with open(dat+'.v', 'w') as ar_v:
                    ar_v.writelines(lines_v)


            #Lista de módulos no separados
            sinv_list_pre = []
            verilogs = os.listdir()
            verilogs = [k for k in verilogs if k[-2:]=='.v']
            os.makedirs('verilogs')


            #Separa los modulos verilogs en archivos distintos
            for verilog in verilogs:
                sinv = verilog[0:-2]
                with open(verilog,'r') as ar:
                    start = 0
                    go = 0
                    stop = 0
                    #Problemas: considerar comentarios
                    for linea in ar:
                        if 'module' in linea and 'endmodule' not in linea and "//" not in linea:
                            start = 1
                            go = 1
                        if('endmodule' in linea):
                            stop = 1
                        if(start):
                            start = 0
                            nombre = mod_name(linea)
                            sinv_list_pre.append(nombre)     
                            file_path = os.path.join('verilogs', nombre + '.v')
                            ar2 = open(file_path, "w")
                        if(go):
                            ar2.write(linea)
                        if(stop):
                            stop = 0
                            go = 0
                            ar2.close()


            #Diccionario que indica para cada módulo los nombres de otros módulos que contienen su nombre (ejemplo: holanda contiene a hola)
            cont = dict()
            for sinv in sinv_list_pre:
                cont[sinv] = set()
            for sinv1 in sinv_list_pre:
                for sinv2 in sinv_list_pre:
                    if sinv1 == sinv2:
                        continue
                    if sinv1 in sinv2:
                        cont[sinv1].add(sinv2)

            #Lista de módulos verilog separados y ordenados solo por contención de nombres
            sinv_list = []
            while(len(sinv_list_pre) != len(sinv_list)):
                for key, item in cont.items():
                    if(len(item) == 0):
                        next = key
                sinv_list.append(next)
                del cont[next]
                for key, item in cont.items():
                    if next in item:
                        item.remove(next)


            #Diccionario de jerarquías(dependencias) de archivos 
            jerq = dict()
            for sinv in sinv_list:
                jerq[sinv] = set()

            for verilog in verilogs:
                sinv = verilog[0:-2]
                with open(verilog,'r') as ar:
                    for linea in ar:
                        #Aquí es donde importa el orden según nombres que contienen a otros
                        for sinv2 in sinv_list:
                            if sinv2==sinv and linea.strip().startswith(sinv2):
                                break
                            #Revisa si el módulo es instanciado en la línea
                            if sinv2 !=sinv and linea.strip().startswith(sinv2):
                                jerq[sinv].add(sinv2)
                                break

            #Lista de verilogs ordenados por jerarquías de dependencias (main al final)
            sinv_ordenado = []
            while(len(sinv_ordenado) != len(sinv_list)):
                for key, item in jerq.items():
                    if(len(item) == 0):
                        next = key
                sinv_ordenado.append(next)
                del jerq[next]
                for key, item in jerq.items():
                    if next in item:
                        item.remove(next)

            #Archivos .v por orden de dependencia para el archivo de System Generator
            with open('en_orden.txt','w') as ar:
                for sinv in sinv_ordenado:
                    ar.write(f"this_block.addFile('{carpeta_verilog}/{sinv}.v');\n")


            #Cambios en el main
            old_clk = 'ap_clk'
            new_clk = 'clk_1'
            ce = 'ce_1'
            mainv = sinv_ordenado[-1]
            mainv_path = os.path.join('verilogs', mainv + '.v')
            lineas = []
            with open(mainv_path, "r") as ar:
                for linea in ar:
                    if old_clk in linea:
                        temp = linea.strip().split()
                        if temp[0] == old_clk+',':
                            lineas.append(linea.replace(old_clk, new_clk))
                            lineas.append(linea.replace(old_clk, ce))
                            continue
                        if(len(temp)>1):
                            if temp[1] == old_clk+';':
                                lineas.append(linea.replace(old_clk, new_clk))
                                lineas.append(linea.replace(old_clk, ce))
                                continue
                        
                        index_ini = [index.start() for index in re.finditer(old_clk, linea)]
                        index_replace = []
                        for i in index_ini:
                            if i == 0:
                                continue
                            else:
                                i_fin = i + len(old_clk)
                                if linea[i-1] not in ('(',')',' ','.') or linea[i_fin] not in ('(',')',' ','.') or (linea[i-1]=='.' and linea[i_fin]=='('):
                                    continue
                                else:
                                    index_replace.append(i)
                        i_ant = 0
                        linea_new = ''
                        for i in index_replace:
                            linea_new += linea[i_ant:i] + new_clk
                            i_ant = i + len(old_clk)
                        linea_new += linea[i_ant:]
                        lineas.append(linea_new)
                    else:
                        lineas.append(linea)

            with open(mainv_path, "w") as ar:
                for linea in lineas:
                    ar.write(linea)

            if(es_red and carpeta_verilog == carpetas_verilogs[0]):
                layers_to_signals(mainv_path, mainv_path, inputs, outputs)

            #Se eliminan archivos antiguos
            for dat in dats:
                dst = dat+'.dat'
                if os.path.exists(dst):
                    os.remove(dst)

            for verilog in verilogs:
                if os.path.exists(verilog):
                    os.remove(verilog)


            #Mueve los archivos nuevos a la carpeta correspondiente
            new_files_dir = 'verilogs'
            for filename in os.listdir(new_files_dir):
                src = os.path.join(new_files_dir, filename)
                dst = os.path.join(cvname, filename)
                shutil.move(src, dst)

            os.rmdir(new_files_dir)

            '''config_file_path = os.path.join(dname, f'{mainv}_config.m')
            if os.path.exists(config_file_path):
                with open(config_file_path,'a') as ar:
                    ar.write('HOLA')'''
        print(f'formateo exitoso de {path}\n')