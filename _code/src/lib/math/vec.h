#pragma once

// struct vec2 {
//   /* TODO */
// };
// struct vec3 {
//   /* TODO */
// };
// struct vec4 {
//   /* TODO */
// };

/// arbitrary-length vector (i.e. dynamically allocated array)
struct vec_dyn {
  double *data;
  size_t length;
};

void vec_dyn_init(struct vec_dyn *self, size_t length);
