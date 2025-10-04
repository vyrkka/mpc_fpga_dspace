
#ifndef MPC_H
#define MPC_H

#include "system.hpp"

////// MPC //////

void mpc(data_t (&r)[P_SYS], data_t (&x0)[N_SYS], data_t (&u0)[M_SYS]);

void mpc_dense_constraint(data_t (&r)[P_SYS], data_t (&x0)[N_SYS], data_t (&q)[N_QP], data_t (&h)[M_QP]);

////// ADMM //////

extern data_t xk_admm[N_QP];
extern data_t zk_admm[M_QP];
extern data_t uk_admm[M_QP];

void qp_admm(data_t (&q)[N_QP], data_t (&h)[M_QP]);

#endif

