	.globl test
test:

	LDR X15, =1
	ADD X12, XZR, X15
	Loop:
	CMP X12, XZR
	B.LE Exit
	LDR X15, =1
	SUB X12, X12, X15
	B Loop
	Exit:

	BR	X30
