#pragma once

struct complex {
  double re;
  double im;
};

struct complex complex_add(struct complex lhs, struct complex rhs);
struct complex complex_add_id();
struct complex complex_add_inv(struct complex c);

struct complex complex_mul(struct complex lhs, struct complex rhs);
struct complex complex_mul_id();
struct complex complex_mul_inv(struct complex c);
