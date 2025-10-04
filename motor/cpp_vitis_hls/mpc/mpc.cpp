
/*
 	Alternating Method of Multipliers for solving quadratic convex optimization.
        Quadratic programing (QP) problem solution:
                    min 1/2 xk'*Q*xk + q'*xk
                    s.t     R*xk <= h
        Arrange the constraints into equality constraints for ADMM formulation, being finally:
                    min 1/2 xk'*Q*xk + q'*xk + g(zk)
                    s.t     R*xk + zk = h
                            zk >= 0
        where g(zk) is the indicator function of Z
            g(zk) = 0    if zk in Z
            g(zk) = ∞k    if any component of zk not in Z
*/

#include "mpc.hpp"
#include "utils.hpp"
// ADMM Global Variables

//#define IT 10
data_t xk_admm[N_QP] = {0};
data_t zk_admm[M_QP] = {0};
data_t uk_admm[M_QP] = {0};


// Function Definitions

void mpc(data_t (&r)[P_SYS], data_t (&x0)[N_SYS], data_t (&u0)[M_SYS]){
	data_t h[M_QP];
	data_t q_hat[N_QP];

	mpc_dense_constraint(r, x0, q_hat, h);

	qp_admm(q_hat, h);
	for (int i=0; i<M_SYS ; i++){
		u0[i] = xk_admm[i];
	}
	return;
}

void mpc_dense_constraint(data_t (&r)[P_SYS], data_t (&x0)[N_SYS], data_t (&qt)[N_QP], data_t (&h)[M_QP]){
	data_t xtemp[N_SYS];
	xtemp[0] = x0[0];
	xtemp[1] = x0[1] - r[0];
	vmmult<N_SYS,N_QP,data_t>(xtemp, qt_sinx0, qt);		// qt = (x0'*qt_sinx0)';
	data_t temp[N_SYS*N_HOR], f1[N_SYS*N_HOR], f2[N_SYS*N_HOR];
	mvmult<(N_SYS*N_HOR),N_SYS,data_t>(E, x0, temp);
	vsub<(N_SYS*N_HOR),data_t>(e, temp, f1);
	vsub<(N_SYS*N_HOR),data_t>(temp, d, f2);	// f = [e-E*x0; E*x0-d];
    // h = [f; b; -a];
	int i = 0;
	constraint1: for (int j=0; j<(N_SYS*N_HOR); j++){
		h[i] = f1[j];
		i++;
	}
	constraint2: for (int j=0; j<(N_SYS*N_HOR); j++){
		h[i] = f2[j];
		i++;
	}
	constraint3: for (int j=0; j<N_QP; j++){
		h[i] = b[j];
		i++;
	}
	constraint4: for (int j=0; j<N_QP; j++){
		h[i] = a_neg[j];
		i++;
	}
	return;
}



void qp_admm(data_t (&qt)[N_QP], data_t (&h)[M_QP]){
	loop_admm: for(int i = 0; i < 20; i++){
	#pragma HLS LOOP_TRIPCOUNT max=20
			data_t vx[M_QP];
			data_t temp[M_QP];
			admm_merge1:{	// vx = zk - h + uk;
				vsub<M_QP,data_t>(zk_admm, h, temp);
				vadd<M_QP,data_t>(temp, uk_admm, vx);
			}
			data_t temp1[N_QP], temp2[N_QP], temp3[N_QP];
			admm_merge2:{	// xk = W_inv * (-rho * R^T * vx - qt);
				mvmult<N_QP,M_QP,data_t>(RhoRt_neg, vx, temp1);
				vsub<N_QP,data_t>(temp1, qt, temp2);
			}
			mvmult<N_QP,N_QP,data_t>(W_inv, temp2, xk_admm);
			data_t Hxk[M_QP], temp4[M_QP], temp5[M_QP], temp6[M_QP], temp7[M_QP];
			admm_merge:{	// zk = max{0, h - uk - R*xk};	uk = uk + (R*xk + zk - h);
				mvmult<M_QP,N_QP,data_t>(R, xk_admm, Hxk);		// Hxk = R*kt
				vsub<M_QP,data_t>(h, uk_admm, temp4);			// temp4 = h - uk
				vsub<M_QP,data_t>(temp4, Hxk, temp5);			// temp5 = (h - uk) - Hxk
				vadd<M_QP,data_t>(uk_admm, Hxk, temp6);			// temp6 = uk + Hxk
				max0<M_QP,data_t>(temp5, zk_admm);				// zk = max{0, h - uk - R*xk}
				vsub<M_QP,data_t>(temp6, h, temp7);				// temp7 = (uk + Hxk) - h
			}
				vadd<M_QP,data_t>(temp7, zk_admm, uk_admm);		// uk = ((uk + Hxk) - h) + zk
	}
	return;
}
