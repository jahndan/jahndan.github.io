#include <stdcountof.h>
#include <stdio.h>

#include "lib/math/vec.h"

#define VEC_SIZE 10

int main() {
  struct vec_dyn v;
  vec_dyn_init(&v, VEC_SIZE);
  defer { vec_dyn_kill(&v); }

  // inspect struct
  printf("vec_dyn { .length = %zu, .data = %p }\n", v.length, (void *)v.data);

  // setup buffer of same size
  static_assert(sizeof(uint64_t) == sizeof(double));
  uint64_t buf[VEC_SIZE];

  // open random source
  FILE *random = fopen("/dev/urandom", "rb");
  if (random == nullptr)
    return perror("fopen"), 1;
  defer fclose(random);

  // read random bytes into buffer
  size_t ret = fread(&buf, sizeof(*buf), countof(buf), random);
  if (ret != countof(buf)) {
    if (ferror(random)) {
      return perror("fread"), 1;
    } else {
      return fprintf(stderr, "ERROR: reach EOF on /dev/urandom"), 1;
    }
  }

  // copy buffer into heap array
  memcpy(v.data, &buf, sizeof(*buf) * countof(buf));

  // inspect contents of heap array
  printf("%p: [", (void *)v.data);
  for (size_t i = 0; i < v.length; i++) {
    if (i != 0)
      printf(", ");
    printf("%e", v.data[i]);
  }
  printf("]\n");

  return 0;
}
