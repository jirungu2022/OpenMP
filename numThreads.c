#include <stdio.h>
#include <math.h>
#include <omp.h>

#define numThreads 4

// int main(int argc, char **argv)
int main()
{
  /* Serial Code */
  printf("Number of threads running in process:\n");
  omp_set_num_threads(numThreads);

  /* Enable parallel execution */
  #pragma omp parallel
  {
    int num_threads = omp_get_num_threads();
    int thread_num = omp_get_thread_num();

    /* Parallel Code */
      printf("Thread %2d of %2d \n", thread_num, num_threads);
  } // Implied barrier

  /* Serial Code */
  printf("Main thread now running in serial execution mode\n");
  return 0;
}
