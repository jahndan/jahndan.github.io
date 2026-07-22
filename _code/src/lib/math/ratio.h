#pragma once

struct ratio {
  int64_t n;
  uint64_t d;
};

struct ratio ratio_add(struct ratio lhs, struct ratio rhs);
struct ratio ratio_add_id();
struct ratio ratio_add_inv(struct ratio r);

struct ratio ratio_mul(struct ratio lhs, struct ratio rhs);
struct ratio ratio_mul_id();
struct ratio ratio_mul_inv(struct ratio r);
