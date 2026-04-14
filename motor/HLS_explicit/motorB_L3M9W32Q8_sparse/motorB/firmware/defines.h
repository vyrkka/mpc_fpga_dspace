#ifndef DEFINES_H_
#define DEFINES_H_

#include "ap_fixed.h"
#include "ap_int.h"
#include "nnet_utils/nnet_types.h"
#include <cstddef>
#include <cstdio>

// hls-fpga-machine-learning insert numbers
#define N_INPUT_1_1 3
#define N_LAYER_2 9
#define N_LAYER_2 9
#define N_LAYER_5 9
#define N_LAYER_5 9
#define N_LAYER_8 9
#define N_LAYER_8 9
#define N_LAYER_11 1
#define N_LAYER_11 1

// hls-fpga-machine-learning insert layer-precision
typedef ap_fixed<32,8,AP_RND,AP_SAT> input_t;
typedef ap_fixed<32,8,AP_RND,AP_SAT> model_default_t;
typedef ap_fixed<32,8,AP_RND,AP_SAT> layer2_t;
typedef ap_fixed<32,8> weight2_t;
typedef ap_fixed<32,8> bias2_t;
typedef ap_uint<1> layer2_index;
typedef ap_fixed<32,8,AP_RND,AP_SAT> layer4_t;
typedef ap_fixed<18,8> relu0_table_t;
typedef ap_fixed<32,8,AP_RND,AP_SAT> layer5_t;
typedef ap_fixed<32,8> weight5_t;
typedef ap_fixed<32,8> bias5_t;
typedef ap_uint<1> layer5_index;
typedef ap_fixed<32,8,AP_RND,AP_SAT> layer7_t;
typedef ap_fixed<18,8> relu1_table_t;
typedef ap_fixed<32,8,AP_RND,AP_SAT> layer8_t;
typedef ap_fixed<32,8> weight8_t;
typedef ap_fixed<32,8> bias8_t;
typedef ap_uint<1> layer8_index;
typedef ap_fixed<32,8,AP_RND,AP_SAT> layer10_t;
typedef ap_fixed<18,8> relu2_table_t;
typedef ap_fixed<32,8,AP_RND,AP_SAT> layer11_t;
typedef ap_fixed<32,8> weight11_t;
typedef ap_fixed<32,8> bias11_t;
typedef ap_uint<1> layer11_index;
typedef ap_fixed<32,8,AP_RND,AP_SAT> result_t;
typedef ap_fixed<18,8> relu3_table_t;

#endif
