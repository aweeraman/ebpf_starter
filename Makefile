compile: gen-header
	clang -g -O2 -target bpf -c hello.bpf.c -o hello.bpf.o
	/usr/sbin/bpftool gen skeleton hello.bpf.o name hello > hello.skel.h
	clang hello.c -lbpf -o hello

install-deps:
	sudo apt install clang llvm libbpf-dev linux-headers-$(uname -r) bpftool

gen-header:
	sudo bpftool btf dump file /sys/kernel/btf/vmlinux format c > vmlinux.h

clean:
	rm *.o
	rm vmlinux.h hello hello.skel.h
