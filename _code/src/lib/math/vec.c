#include "vec.h"

void vec_dyn_init(struct vec_dyn *self, size_t length) {
  self->length = length;
  self->data = malloc(sizeof(double) * length);
}
