	.globl test
test:
	LDUR X9, [X0, #0]
	LDUR X10, [X1, #0]
	LDUR X11, [X2, #0]
	LDR X12, =5
	ADD X9, XZR, X12 // a = 5
	LDR X12, =4
	ADD X10, XZR, X12 // b = 4
	LDR X12, =12
	ADD X11, XZR, X12 // m = 12
	ADD X11, X9, #0 // m = a
	CMP X10, X11 // b == m
	B.NE Else
	SUB X11, X10, X9 // m = b - a
	B Exit
	Else:
	SUB X11, X9, X10 // m = a - b
	Exit:
	STUR X9, [X0, #0]
	STUR X10, [X1, #0]
	STUR X11, [X2, #0]
	BR	X30
