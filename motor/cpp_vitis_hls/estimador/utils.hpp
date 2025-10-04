#ifndef UTILS_H
#define UTILS_H

/*
template<int N, int M, int P, typename T>
void mmult(T (&A)[N][M], T (&B)[M][P], T (&R)[N][P]){
	mmult_row: for(int i = 0; i < N; ++i){
		mmult_column: for(int j = 0; j < P; ++j){
			R[i][j] = A[i][0] * B[0][j];
			mmult_dotp: for(int k = 1; k < M; ++k){
				R[i][j] += A[i][k] * B[k][j];
			}
		}
	}
	return;
}
*/

/*!
@brief R = A*B, with A a NxM matrix and B a Mx1 vector
*/
template<int N, int M, typename T>
void mvmult(T (&A)[N][M], T (&B)[M], T (&R)[N]){
	mvmult_row: for(int i = 0; i < N; ++i){
		R[i] = 0;
		mvmult_column: for(int j = 0; j < M; ++j){
			R[i] += A[i][j] * B[j];
		}
	}
	return;
}
/*
template<int N, int M, typename T>
void mvmult(T (&A)[N][M], T (&B)[M], T (&R)[N]){
	mvmult_column: for(int j = 0; j < M; ++j){
		mvmult_row: for(int i = 0; i < N; ++i){
			if (j == 0){
				R[i] = A[i][j] * B[j];
			}
			else{
				R[i] += A[i][j] * B[j];
			}
		}
	}
	return;
}
*/

/*!
@brief R = (A'*B)', with A a 1xN vector and B a NxM matrix
*/
template<int N, int M, typename T>
void vmmult(T (&A)[N], T (&B)[N][M], T (&R)[M]){
	vmmult_column: for(int j = 0; j < M; ++j){
		R[j] = 0;
		vmvmult_row: for(int i = 0; i < N; ++i){
			R[j] += A[i] * B[i][j];
		}
	}
	return;
}


template<int N, typename T>
void sat_vec(T (&znext)[N], T (&zprev)[N], T (&zmin)[N], T (&zmax)[N]) {
    for (int i = 0; i < N; ++i) {
        if (zprev[i] < zmin[i]) {
            znext[i] = zmin[i];
        } else if (zprev[i] > zmax[i]) {
            znext[i] = zmax[i];
        }else{
        	znext[i] = zprev[i];
        }
    }
}


/*
template<int N, int M, typename T>
void mvmult3(T (&A)[N][M], T (&B)[M], T (&R)[N]){
	mvmult_init: for(int i = 0; i < N; ++i){
		R[i] = 0;
	}
	mvmult_column: for(int j = 0; j < M; ++j){
		mvmult_row: for(int i = 0; i < N; ++i){
#pragma HLS PIPELINE II=1
#pragma HLS UNROLL factor=2
			R[i] += A[i][j] * B[j];
		}
	}
	return;
}

template<int N, int M, typename T>
void mvmult4(T (&A)[N][M], T (&B)[M], T (&R)[N]){
	mvmult_column: for(int j = 0; j < M; ++j){
		mvmult_row: for(int i = 0; i < N; ++i){
#pragma HLS PIPELINE II=1
#pragma HLS UNROLL factor=2
			if (j == 0){
				R[i] = A[i][j] * B[j];
			}
			else {
				R[i] += A[i][j] * B[j];
			}
		}
	}
	return;
}

template<int N, int M, typename T>
void madd(T (&A)[N][M], T (&B)[N][M], T (&R)[N][M]){
	madd_row: for(int i = 0; i < N; ++i){
		madd_column: for(int j = 0; j < M; ++j){
			R[i][j] = A[i][j] + B[i][j];
		}
	}
	return;
}

template<int N, int M, typename T>
void msub(T (&A)[N][M], T (&B)[N][M], T (&R)[N][M]){
	msub_row: for(int i = 0; i < N; ++i){
		msub_column: for(int j = 0; j < M; ++j){
			R[i][j] = A[i][j] - B[i][j];
		}
	}
	return;
}
*/

template<int N, typename T>
void vadd(T (&A)[N], T (&B)[N], T (&R)[N]){
	vadd_row: for(int i = 0; i < N; ++i){
		R[i] = A[i] + B[i];
	}
	return;
}

template<int N, typename T>
void vsub(T (&A)[N], T (&B)[N], T (&R)[N]){
	vsub_row: for(int i = 0; i < N; ++i){
		R[i] = A[i] - B[i];
	}
	return;
}

template<int N, typename T>
void max0(T (&A)[N], T (&R)[N]){
    max0_row: for (int i = 0; i < N; i++){
        if (A[i] > 0){
            R[i] = A[i];
        }
        else {
        	R[i] = 0;
        }
    }
    return;
}

/*
template<int N, int M, int P, typename T>
void mmult(T (&A)[N][M], T (&B)[M][P], T (&R)[N][P]);

template<int N, int M, typename T>
void mvmult(T (&A)[N][M], T (&B)[M], T (&R)[N]);

template<int N, int M, typename T>
void madd(T (&A)[N][M], T (&B)[N][M], T (&R)[N][M]);

template<int N, int M, typename T>
void msub(T (&A)[N][M], T (&B)[N][M], T (&R)[N][M]);

template<int N, typename T>
void vadd(T (&A)[N], T (&B)[N], T (&R)[N]);

template<int N, typename T>
void vsub(T (&A)[N], T (&B)[N], T (&R)[N]);
*/
/*
template<int N, int M, typename T>
void add2(T (&A)[N][M], T (&B)[N][M], T (&R)[N][M])
{
	for(int i = 0; i < N; ++i)
	{
		for(int j = 0; j < M; ++j)
		{
			R[i][j] = A[i][j] + B[i][j];
		}
	}
}

template<int N, int M, typename T>
void add3(T (&A)[N][M], T (&B)[N][M], T (&C)[N][M], T (&res)[N][M])
{
	for(int i = 0; i < N; ++i)
	{
		for(int j = 0; j < M; ++j)
		{
			res[i][j] = A[i][j] + B[i][j] + C[i][j];
		}
	}
}

template<int N, int M, typename T>
void add4(T (&A)[N][M], T (&B)[N][M], T (&C)[N][M], T (&D)[N][M], T (&res)[N][M])
{
	for(int i = 0; i < N; ++i)
	{
		for(int j = 0; j < M; ++j)
		{
			res[i][j] = A[i][j] + B[i][j] + C[i][j] + D[i][j];
		}
	}
}

template<int N, int M, typename T>
void neg(T (&A)[N][M], T (&res)[N][M])
{
	for(int i = 0; i < N; ++i)
	{
		for(int j = 0; j < M; ++j)
		{
			res[i][j] = -A[i][j];
		}
	}
}

template<int N, int M, typename T>
void max(T (&A)[N][M], T sat_max)
{
    for (int i = 0; i < N; i++)
    {
        for (int j = 0; j < M; j++)
        {
            if (A[i][j] < sat_max)
            {
                A[i][j] = sat_max;
            }
        }
    }
}
//(T rho, T (&q_neg)[N][P], T (&rho_neg_A_T)[M][N], T (&c)[M][P], T (&R_inv)[N][N],
//T (&x)[N][P], T (&z)[M][P], T (&u)[M][P])
template<int N, int M, int P, typename T>
void x_min(T (&q_neg)[N][P], T (&rho_neg_A_T)[N][M], T (&c_neg)[M][P], T (&R_inv)[N][N],
            T (&x)[N][P], T (&z)[M][P], T (&u)[M][P])
{
    // v_x = z - c + u;
    T v_x[M][P];
    add3(z, c_neg, u, v_x);

    // x = R_inv * (-rho * A^T * v_x - q);
    T x1[N][P], x2[N][P], x3[N][P];
    mult(rho_neg_A_T, v_x, x1);
    add2(x1, q_neg, x2);
    mult(R_inv, x2, x);
}

template<int N, int M, int P, typename T>
void z_min(T (&A_neg)[M][N], T (&c)[M][P],
            T (&x)[N][P], T (&z)[M][P], T (&u)[M][P])
{
    T ub = 0;
    //  z = (-A*x - u + c).max(0);
    T loc_val1[M][P], u_neg[M][P];
    mult(A_neg, x, loc_val1);
    neg(u, u_neg);
    add3(loc_val1, u_neg, c, z);
    max(z, ub);
}

template<int N, int M, int P, typename T>
void u_update(T (&A)[M][N], T (&c_neg)[M][P],
            T (&x)[N][P], T (&z)[M][P], T (&u)[M][P])
{
    // u = u + (A*x + z - c);
    T loc_val1[M][P];
    mult(A,x,loc_val1);
    add4(u,loc_val1,z,c_neg,u);
}

float sum4(float vec[4]){
	return vec[0]+vec[1]+vec[2]+vec[3];
}

float sum8(float vec[8]){
//#pragma HLS UNROLL
	return vec[0]+vec[1]+vec[2]+vec[3]+vec[4]+vec[5]+vec[6]+vec[7];
}

float sum16(float vec[16]){//, float vec_b[50]){
//#pragma HLS ARRAY_PARTITION dim=1 type=cyclic factor=8 variable=vec_a
//#pragma HLS ARRAY_PARTITION dim=1 type=cyclic factor=8 variable=vec_b
	int i;
	float temp[8];
	for (i=0; i<8; i++){
		temp[i] = vec[i] + vec[i+8];
	}
	return sum8(temp);
}

float vec_sum_sw(float vec[32]){//, float vec_b[50]){
#pragma HLS ARRAY_PARTITION dim=1 type=cyclic factor=4 variable=vec
	int i;
	float sum = 0;
//	float temp[16];
	for (i=0; i<32; i++){
#pragma HLS PIPELINE
#pragma HLS UNROLL factor=4
		sum += vec[i];//temp[i] = vec[i] + vec[i+16];
	}
	return sum; //16(temp);
}

float vec_sum_hw(float vec_in[32]){
	int i,j;
	//int mask[2] = {0, ~((int)0)};
	float sum_p[4] = {0};
	for (i=0, j=0; i<32; i++){
#pragma HLS DEPENDENCE variable=sum_p array inter distance=8 true
#pragma HLS PIPELINE
		sum_p[j] += vec_in[i];
		j = (j+1)%4; // & mask[(j+1) != 8];
	}
	for(i=1; i<4; i++){
#pragma HLS UNROLL
		sum_p[0] += sum_p[i];
	}
	return sum_p[0];
}*/

#endif
