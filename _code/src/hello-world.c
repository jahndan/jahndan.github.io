#include <stdio.h>

int main() {
  for (int i = 0; i < 10; i++) {
    if (i == 5) break;
    defer { printf("world!\n"); }
    printf("Hello ");
  }
  return 0;
}
