from keras.models import load_model
from qkeras.utils import _add_supported_quantized_objects
import hls4ml
import numpy as np
import argparse

def parse_arguments():
    parser = argparse.ArgumentParser(description='Process Verilog files with specified parameters')

    
    # Es red - boolean flag or integer (OPTIONAL, defaults to 0)
    parser.add_argument('problem', type=str)
    parser.add_argument('L', type=int)
    parser.add_argument('M', type=int)
    parser.add_argument('W', type=int)
    parser.add_argument('Q', type=int)
    parser.add_argument('--fr', type=int)
    return parser.parse_args()

args = parse_arguments()
problem = args.problem
L = args.L
M = args.M
W = args.W
Q = args.Q

#PRUNED
dir_name = f'{problem}_L{L}M{M}W{W}Q{Q}_sparse/{problem}'
project_name = f'{problem[:-1]}'

#NO PRUNED
#dir_name = f'{problem}_L{L}M{M}W{W}Q{Q}/{problem}'
#project_name = f'{problem}'

# Load the model
h5_name = f'{problem}/{problem}L{L}M{M}/fixed_{problem}_L{L}M{M}W{W}Q{Q}_pruned.h5'
#h5_name = f'{problem}/{problem}L{L}M{M}/fixed_{problem}_L{L}M{M}W{W}Q{Q}.h5'
co = {}
_add_supported_quantized_objects(co)
model = load_model(h5_name, custom_objects=co)

# Example: Assuming your model expects an input shape of (1, input_size)
#input_data = np.array([[0.18258176437397122, 0.25205465332619936, 1]])

#prediction = model.predict(input_data)

# Print the prediction
#print("Model Prediction:", prediction)

#model_name = model_name.format(loss=loss_name, M=M, L=L, W=W, Q=Q, Epochs=EPOCHS)
#import plotting
#import add_interface
#granularidad por capa (name) o sino sería model (para todo)
granularity = 'name'
fr = args.fr
config = hls4ml.utils.config_from_keras_model(
    model, 
    granularity=granularity,
    default_reuse_factor=fr,
    default_precision='fixed<{W},{Q},RND,SAT>'.format(W=W, Q=Q)
    )

if granularity == 'name':
    config['Model']['TraceOutput'] = True
    for layer in config['LayerName'].keys():
        #para grafico de distribucion de pesos
        config['LayerName'][layer]['Trace'] = True
        if 'relu' in layer: 
            #para forzar cuantización en capa relu
            #config['LayerName'][layer]['Precision']['result'] = 'fixed<{W},{Q}>'.format(W=W,Q=Q)
            config['LayerName'][layer]['Precision']['result'] = 'fixed<{W},{Q},RND,SAT>'.format(W=W, Q=Q)
print("--"*40)
#para ver dicts bonitos
#plotting.print_dict(config)
print("--"*40)

hls_model = hls4ml.converters.convert_from_keras_model(
    model,
    hls_config = config,
    #project_name="empc_qmodel_"+model_suffix.format(loss=loss_name, M=M, L=L, W=W, Q=Q, Epochs=EPOCHS),
    project_name=project_name,
    #input_data_tb = 'der2/golden_reference_data_in.csv',
    #output_data_tb = 'der2/golden_reference_data_out.csv',
    output_dir = 'HLS_exp/'+ dir_name,
    part = 'xc7k325tfbg900-1',
    clock_period = 10,
    backend='Vitis'
    )


hls_model.compile()
'''
add_interface.add_interface(
    "HLS/hls4ml_prj_"+ model_suffix.format(loss=loss_name, M=M, L=L, W=W, Q=Q, Epochs=EPOCHS)+"/firmware",
    "empc_qmodel_" + model_suffix.format(loss=loss_name, M=M, L=L, W=W, Q=Q, Epochs=EPOCHS)+".cpp",
    int_type="s_axilite",
    interrupt=True
)'''
#hls4ml.utils.plot_model(hls_model, show_shapes=True, show_precision=True, to_file=None)