#include <stdio.h>

#define N 2048  // limiting the no. of runs

int A[N][N];
long long sum = 0;

int main(void) {

    // Initializing array 
    for (int i = 0; i < N; i++)
        for (int j = 0; j < N; j++)
            A[i][j] = (i + j) & 0xFF;

    // Row major traversal
    for (int i = 0; i < N; i++)
        for (int j = 0; j < N; j++)
            sum += A[i][j];

    // Column major traversal
    for (int j = 0; j < N; j++)
        for (int i = 0; i < N; i++)
            sum += A[i][j];

    printf("sum = %lld\n", sum);
    return 0;
}
