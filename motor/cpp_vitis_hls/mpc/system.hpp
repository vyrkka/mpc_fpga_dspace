#ifndef SYSTEM_H
#define SYSTEM_H
#include "ap_fixed.h"

////////// System //////////
#define N_SYS 2		// system states
#define M_SYS 1		// control inputs
#define P_SYS 1		// system outputs

#define N_HOR	3    // prediction horizon
typedef ap_fixed<21, 7, AP_RND, AP_SAT> data_t;
//typedef float data_t;

////////// MPC Formulation //////////

#define N_QP M_SYS*N_HOR							// Number of optimization values
#define M_QP (2 * N_HOR * (N_SYS + M_SYS))			// Number of optimization constraints
extern data_t a_neg[N_QP];
extern data_t b[N_QP];
extern data_t d[N_SYS*N_HOR];
extern data_t e[N_SYS*N_HOR];
extern data_t E[N_SYS*N_HOR][N_SYS];
extern data_t qt_sinx0[N_SYS][N_QP];
extern data_t g[(2*N_QP)];
// f is (N_HOR+1)*N_SYSx1

extern data_t qt[N_QP];
extern data_t R[M_QP][N_QP];

////////// ADMM //////////

//rho is not required
extern data_t W_inv[N_QP][N_QP];
extern data_t RhoRt_neg[N_QP][M_QP];


#endif // SYSTEM_H



