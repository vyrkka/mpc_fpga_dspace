import os

dats = os.listdir()
dats = [k[:-4] for k in dats if k[-4:]=='.dat']


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

verilogs = os.listdir()
verilogs = [k for k in verilogs if k[-2:]=='.v']

os.makedirs('verilogs')

def str_in(x, arc):
    ret = 0
    ar = open(arc)
    for linea in ar:
        if(x in linea): ret += 1
    ar.close()
    return ret

#Problemas: considerar '#' y comentarios
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

sinv_list_pre = []




for verilog in verilogs:
    sinv = verilog[0:-2]
    ar = open(verilog,'r')
    start = 0
    go = 0
    stop = 0
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
    ar.close()

cont = dict()
for k in sinv_list_pre:
    cont[k] = set()
for k1 in sinv_list_pre:
    for k2 in sinv_list_pre:
        if k1 == k2:
            continue
        if k1 in k2:
            cont[k1].add(k2)

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

jerq = dict()
for k in sinv_list:
    jerq[k] = set()

for verilog in verilogs:
    sinv = verilog[0:-2]
    with open(verilog,'r') as ar:
        for linea in ar:
            for k in sinv_list:
                if k==sinv and linea.strip().startswith(k):
                    break
                if k !=sinv and linea.strip().startswith(k):
                    jerq[sinv].add(k)
                    break
deps = []
while(len(deps) != len(sinv_list)):
    for key, item in jerq.items():
        if(len(item) == 0):
            next = key
    deps.append(next)
    del jerq[next]
    for key, item in jerq.items():
        if next in item:
            item.remove(next)

with open('en_orden.txt','w') as ar:
    for k in deps:
        ar.write(f"this_block.addFile('{k}.v');\n")
    