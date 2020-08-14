	.globl test
test:

	ADD X19, XZR, X0
	ADD X14, XZR, X1
	ADD X21, XZR, X30
	ADD X13, XZR, XZR

	ADD X27, XZR, XZR // i = 0 + 0
	ADD X20, XZR, XZR // X18 = 0 + 0
	L1:  ADD X10, X19, X27 // endereço de str[i] em X10
	LDRSB X11, [X10, #0] // X11 = str[i]
	CBZ X11, Exit // se str[i] == 0, acabou a string
	ADD X27, X27, #1 // i = i + 1
	ADD X0, XZR, X11
	SUB X0, X0, #48
	MUL X13, X13, X14
	ADD X13, X13, X0
	BL fact
	ADD X20, X20, X0
	B L1
	Exit:
	ADD X5, XZR, XZR
	CMP X13, X20
	B.NE EndFunc
	ADD X5, X5, #1
	B EndFunc

	EndFunc:
	ADD X0, XZR, X5
	ADD X30, XZR, X21
	BR	X30

	fact:
	CMP X0, #0
	B.NE FactCont
	ADD X0, XZR, XZR
	ADD X0, X0, #1
	BR X30
	FactCont:
	SUBS XZR, X0, #1
	B.GT else
	BR X30
	else:
	SUB SP, SP, #32
	STUR X30, [SP, #16]
	STUR X0, [SP, #0]
	SUB X0, X0, #1
	BL fact
	LDUR X9, [SP, #0]
	LDUR X30, [SP, #16]
	ADD SP, SP, #32
	MUL X0, X9, X0
	BR X30
