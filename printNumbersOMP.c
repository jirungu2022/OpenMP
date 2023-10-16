#include <stdio.h>
#include <math.h>
#include <omp.h>

#define numThreads 10

int main(int argc, char **argv)
{
  int i;

  /* Serial Code */
  printf("List of numbers from 1 to 20: ");
  omp_set_num_threads(numThreads);

  /* Enable parallel execution */
  #pragma omp parallel
  {
    int num_threads = omp_get_num_threads();
    int thread_num = omp_get_thread_num();

    /* Parallel Code */
    for(i = 1; i <= 20; i++)
      // Print numbers from 1 to 20
      printf("%d %d %d ", i, thread_num, num_threads);
    printf("\n");
  }
return 0;
}
