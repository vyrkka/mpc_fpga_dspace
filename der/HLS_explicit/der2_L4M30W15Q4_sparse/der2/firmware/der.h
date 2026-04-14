#ifndef DER_H_
#define DER_H_

#include "ap_fixed.h"
#include "ap_int.h"
#include "hls_stream.h"

#include "defines.h"

// Prototype of top level function for C-synthesis
void der(
    input_t fc0_input[N_INPUT_1_1],
    result_t layer16_out[N_LAYER_14]
);

#endif
