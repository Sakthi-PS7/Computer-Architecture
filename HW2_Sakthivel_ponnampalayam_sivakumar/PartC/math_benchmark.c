// fp_math_bench.c
#include <stdio.h>
#include <time.h>
#include <math.h>

#define ITERATIONS 10000000
#define FLOPS_PER_ITER 4   // sin, cos, sqrt, log = 4 FP operations

int main() {
    clock_t start, end;
    double elapsed_time;
    double x = 0.5, result = 0.0;

    start = clock();

    for (int i = 0; i < ITERATIONS; i++) {
        result += sin(x);   // Floating point op 1
        result += cos(x);   // Floating point op 2
        result += sqrt(x);  // Floating point op 3
        result += log(x+1); // Floating point op 4
        x += 0.000001;      // avoid constant folding
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
