#include "utils.hpp"
#include "ap_fixed.h"

typedef ap_fixed<32,8, AP_RND, AP_SAT> data_t;
//typedef float data_t;

////////// System //////////
#define N_SYS 2		// system states
#define M_SYS 1		// control inputs
#define P_SYS 1		// system outputs
#define N_HOR	3//16//HOR_SIZE		// prediction horizon
#define N_QP M_SYS*N_HOR							// Number of optimization values
#define M_QP (2 * N_HOR * (N_SYS + M_SYS))			// Number of optimization constraints

//zhat: N_SYS+1
//


//1e-4 horizonte 4
//data_t Ax[N_SYS+1][N_SYS+1] =	{{0.997118339975927,0,0.004494022411287},{9.985584769920494e-05,1,2.248091950465783e-07},{0,0,1}};
//data_t Bx[N_SYS+1][M_SYS] =	{{0.004494022411287},{2.248091950465783e-07},{0}};
//data_t Lx[N_SYS+1][P_SYS] =	{{6.841419596833540e+03},{1.497118339975926},{2.781472555322424e+05}};

//data_t Ad[N_SYS][N_SYS] =	{{0.971554221087980,0},{9.857087036620495e-04,1}};
//data_t Bd[N_SYS][M_SYS] =	{{0.044361918779181},{2.228764166923803e-05}};
//data_t Cd[P_SYS][N_SYS] =	{{0,1}};

//data_t zmin[N_SYS+1] = {-10,-10,-10};
//data_t zmax[N_SYS+1] = {10,10,10};

//1e-3 horizonte 4


data_t Ax[N_SYS+1][N_SYS+1] =	{{7.073013968765778e-01, 0.000000000000000e+00, 4.564709477178039e-01},
					 {1.014264933791512e-02, 1.000000000000000e+00, 2.896585798220128e-03},
					 {0.000000000000000e+00, 0.000000000000000e+00, 1.000000000000000e+00}};


data_t Bx[N_SYS+1][M_SYS] =	{{4.564709477178039e-01},
					 {2.896585798220128e-03},
					 {0.000000000000000e+00}};


data_t Lx[N_SYS+1][P_SYS] =	{{3.258758840457511e+01},
					 {1.207301396876578e+00},
					 {2.281999921078523e+01}};


data_t zmin[N_SYS+1] = {-10,-2*3.141592653589793,-1};
data_t zmax[N_SYS+1] = {10,2*3.141592653589793,1};


void estimador_func(data_t (&zhat_prev)[N_SYS+1],data_t (&zhat_next)[N_SYS+1], data_t (&uk)[M_SYS], data_t (&yhat)[P_SYS], data_t (&y)[P_SYS]){
	#pragma HLS ARRAY_PARTITION variable=zhat_next complete dim=1
	#pragma HLS ARRAY_PARTITION variable=zhat_prev complete dim=1
	data_t temp1[P_SYS], temp2[N_SYS+1], temp3[N_SYS+1], temp4[N_SYS+1], temp5[N_SYS+1], temp6[N_SYS+1];

	vsub<P_SYS,data_t>(y, yhat, temp1);
	mvmult<N_SYS+1,P_SYS,data_t>(Lx, temp1, temp2);

	mvmult<N_SYS+1,M_SYS,data_t>(Bx, uk, temp3);

	mvmult<N_SYS+1,N_SYS+1,data_t>(Ax, zhat_prev, temp4);

	vadd<N_SYS+1,data_t>(temp2, temp3, temp5);
	vadd<N_SYS+1,data_t>(temp4, temp5, temp6);
	sat_vec<N_SYS+1, data_t>(zhat_next, temp6, zmin, zmax);
	return;
}

