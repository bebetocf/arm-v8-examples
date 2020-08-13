	.globl test
test:

	ADD X9, XZR, XZR // i = 0 + 0
	ADD X18, XZR, XZR // X18 = 0 + 0
	L1:  ADD X10, X0, X9 // endereço de str[i] em X10
	LDRSB X11, [X10, #0] // X11 = str[i]
	CBZ X11, Exit // se str[i] == 0, acabou a string
	ADD X9, X9, #1 // i = i + 1
	CMP X11, #65 // X11 == A
	B.EQ Cont
	CMP X11, #69 // X11 == E
	B.EQ Cont
	CMP X11, #73 // X11 == I
	B.EQ Cont
	CMP X11, #79 // X11 == O
	B.EQ Cont
	CMP X11, #85 // X11 == U
	B.NE L1
	Cont: ADD X18, X18, #1 // X18 = X18 + 1
	B L1
	Exit:
	ADD X0, XZR, X18

	BR	X30
