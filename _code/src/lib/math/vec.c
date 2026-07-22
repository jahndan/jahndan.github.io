#include "vec.h"

struct vec2 vec2_add(struct vec2 lhs, struct vec2 rhs) {
  struct vec2 out = {
      .x = lhs.x + rhs.x,
      .y = lhs.y + rhs.y,
  };
  return out;
}

struct vec2 vec2_id() {
  struct vec2 out = {
      .x = 0.0,
      .y = 0.0,
  };
  return out;
}

struct vec2 vec2_inv(struct vec2 v) {
  struct vec2 out = {
      .x = -v.x,
      .y = -v.y,
  };
  return out;
}

void vec_dyn_init(struct vec_dyn *self, size_t length) {
  self->length = length;
  self->data = malloc(sizeof(double) * length);
}

void vec_dyn_kill(struct vec_dyn *self) { free(self->data); }
