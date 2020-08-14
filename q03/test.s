	.globl test
test:

	LDR X15, =0xffffffffffffffff
	ADD X11, XZR, X15
	UBFX X12, X10, #11, #6 // X12 = X10[16:11]
	LSR X12, X12, #11 // X12 >> 11
	BFI X11, X10, #26, #6 // X11[31:26] = X10[16:11]
	BR	X30
