	.globl test
test:
	LDUR X9, [X0, #0] // a
	LDUR X10, [X1, #0] // b
	LDUR X11, [X2, #0] // c
	LDUR X12, [X3, #0] // x

	ADD X12, XZR, XZR // x = 0
	CMP X9, XZR // a >= 0
	B.LT Exit
	CMP X10, #64 // b <= 64
	B.GT Exit
	CMP X11, #24 // c > 24
	B.LE Exit
	LDR X15, =1
	ADD X12, XZR, X15 // x = 1
	Exit:

	STUR X9, [X0, #0]
	STUR X10, [X1, #0]
	STUR X11, [X2, #0]
	STUR X12, [X3, #0]
	BR	X30
