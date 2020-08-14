	.globl test
test:
	// x5 - cont total
	// x12 - cont temp

	// x19 - a
	// x15 - j
	// x14 - x19 + x15
	// x13 - char in x14

	// x20 - b
	// x9 - i
	// x10 - x20 + x9
	// x11 - char in x10

	ADD X19, XZR, X0
	ADD X20, XZR, X1

	ADD X9, XZR, XZR // i = 0 + 0
	LDR X15, =0x7fffffffffffffff
	ADD X5, XZR, X15 // Cont
	L1:  ADD X10, X20, X9 // endereço de b[i] em X10
	LDRSB X11, [X10, #0] // X11 = b[i]
	CBZ X11, Exit // se b[i] == 0, acabou a string
	ADD X9, X9, #1 // i = i + 1
	ADD X12, XZR, XZR // cont temp = 0
	ADD X15, XZR, XZR // j = 0 + 0
	L2:  ADD X14, X19, X15 // endereço de a[j] em X14
	LDRSB X13, [X14, #0] // X14 = a[j]
	CBZ X13, Comp // se a[j] == 0, acabou a string
	ADD X15, X15, #1 // j = j + 1
	CMP X11, X13 // a[j] == b[i]
	B.NE L2
	ADD X12, X12, #1 // cont temp = cont temp + 1
	B L2

	Comp:
	CMP X5, X12 // cont total > cont temp
	B.LT L1
	ADD X5, XZR, X12 // cont total = cont temp
	B L1

	Exit:
	ADD X0, XZR, X5

	BR	X30
