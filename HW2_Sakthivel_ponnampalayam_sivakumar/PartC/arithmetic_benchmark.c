// fp_arith_bench.c
#include <stdio.h>
#include <time.h>

#define ITERATIONS 100000000
#define FLOPS_PER_ITER 4   // add, sub, mul, div = 4 FP operations

int main() {
    clock_t start, end;
    double elapsed_time;
    double a = 1.234567, b = 2.345678, c = 3.456789, result = 1.0;

    start = clock();

    for (long long i = 0; i < ITERATIONS; i++) {
        result += a + b;   // FP addition
        result -= b - c;   // FP subtraction
        result *= a * c;   // FP multiplication
        result /= b + 1.0; // FP division
    }

    end = clock();
    elapsed_time = (double)(end - start) / CLOCKS_PER_SEC;

    double total_ops = (double)ITERATIONS * FLOPS_PER_ITER;
    double mflops = (total_ops / 1.0e6) / elapsed_time;

    printf("Final result = %f\n", result);
    printf("Elapsed time = %f seconds\n", elapsed_time);
    printf("Performance = %.2f MFLOPS\n", mflops);

    return 0;
}
