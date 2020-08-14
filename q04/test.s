	.globl test
test:

	LDR X15, =0xffffffffffffff0f
	ADD X11, XZR, X15
	LDR X15, =0xffffffffffffffff
	EOR X10, X11, X15
	BR	X30
