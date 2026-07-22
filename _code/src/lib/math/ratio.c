#include "ratio.h"

struct ratio ratio_add(struct ratio lhs, struct ratio rhs) {
  (void)lhs; // DELETE THIS LINE (does nothing, just avoids unused var warnings)
  (void)rhs; // DELETE THIS LINE (does nothing, just avoids unused var warnings)

  // try working this out yourself
  struct ratio out = {
      // .n = ?,
      // .d = ?,
  };
  return out;
}

struct ratio ratio_add_id() {
  struct ratio out = {
      .n = 0,
      .d = 1,
  };
  return out;
}

struct ratio ratio_add_inv(struct ratio r) {
  (void)r; // DELETE THIS LINE (does nothing, just avoids unused var warnings)

  struct ratio out = {
      // .n = ?,
      // .d = ?,
  };
  return out;
}
