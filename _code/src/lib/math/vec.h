#pragma once

struct vec2 {
  double x, y;
};
struct vec3 {
  double x, y, z;
};
struct vec4 {
  double x, y, z, w;
};

struct vec2 vec2_add(struct vec2 lhs, struct vec2 rhs);
struct vec3 vec3_add(struct vec3 lhs, struct vec3 rhs);
struct vec4 vec4_add(struct vec4 lhs, struct vec4 rhs);

struct vec2 vec2_id();
struct vec3 vec3_id();
struct vec4 vec4_id();

struct vec2 vec2_inv(struct vec2 v);
struct vec3 vec3_inv(struct vec3 v);
struct vec4 vec4_inv(struct vec4 v);

struct vec2 vec2_scale(struct vec2 v, double s);
struct vec3 vec3_scale(struct vec3 v, double s);
struct vec4 vec4_scale(struct vec4 v, double s);

double vec2_dot(struct vec2 v, struct vec2 w);
double vec3_dot(struct vec3 v, struct vec3 w);
double vec4_dot(struct vec4 v, struct vec4 w);

double vec2_norm2(struct vec2 v);
double vec3_norm2(struct vec3 v);
double vec4_norm2(struct vec4 v);

double vec2_norm(struct vec2 v);
double vec3_norm(struct vec3 v);
double vec4_norm(struct vec4 v);

/// arbitrary-length vector (i.e. dynamically allocated array)
struct vec_dyn {
  double *data;
  size_t length;
};

void vec_dyn_init(struct vec_dyn *self, size_t length);
void vec_dyn_kill(struct vec_dyn *self);
