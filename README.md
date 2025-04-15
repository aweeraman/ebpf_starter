# eBPF Starter

## Pre-requisites
- eBPF-enabled Linux kernel (most modern kernels)
- Build dependencies: Python (3.6+), sudo, make
- Install required dependencies with `make install-deps`
    - libbpf-python
    - clang
    - llvm
    - libbpf-dev
    - linux-headers
    - bpftool

## Compile

Run `make` to build the program
Execute the program to attach the eBPF program: `sudo ./hello`
Run `ls` in another terminal
View the eBPF log with `sudo cat /sys/kernel/debug/tracing/trace_pipe`
