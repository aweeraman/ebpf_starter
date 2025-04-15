#include "hello.skel.h"

int main(void) {
  struct hello *skel = hello__open();
  hello__load(skel);
  hello__attach(skel);

  for (;;) {}
  return 0;
}
