	.globl test
test:

	ADD X19, XZR, X0
	ADD X20, XZR, X1

//	LDR X15, =16
//	SUB SP, SP, X15
//	STUR X30, [SP, #0]
	ADD X21, XZR, X30

	BL Pont
	ADD X26, X1, XZR // Pegando o resultado que vai estar em X1
	ADD X0, X20, XZR // Colocando o endereço da string em X0
	BL Pont
	ADD X27, X1, XZR // Pegando o resultado que vai estar em X1
	// Resultado do jogador 1 em X26 e do jogador 2 em X27
	CMP X26, X27
	B.GT J1
	B.LT J2
	LDR X15, =69
	ADD X5, XZR, X15 // Empate = E
	B Exit
	J1: LDR X15, =65
	ADD X5, XZR, X15 // Jogador 1 = A
	B Exit
	J2: LDR X15, =66
	ADD X5, XZR, X15 // Jogador 2 = B
	B Exit

	Pont: ADD X9, XZR, XZR // i = 0 + 0
	ADD X1, XZR, XZR // Pont = 0 + 0
	L1:  ADD X10, X0, X9 // endereço de str[i] em X10
	LDRSB X11, [X10, #0] // X11 = str[i]
	CBZ X11, EndFunc // se str[i] == 0, acabou a string
	ADD X9, X9, #1 // i = i + 1

	// 1 ponto
	CMP X11, #65 // X11 == A
	B.EQ Cont1
	CMP X11, #69 // X11 == E
	B.EQ Cont1
	CMP X11, #73 // X11 == I
	B.EQ Cont1
	CMP X11, #79 // X11 == O
	B.EQ Cont1
	CMP X11, #85 // X11 == U
	B.EQ Cont1
	CMP X11, #78 // X11 == N
	B.EQ Cont1
	CMP X11, #82 // X11 == R
	B.EQ Cont1
	CMP X11, #83 // X11 == S
	B.EQ Cont1

	// 2 pontos
	CMP X11, #68 // X11 == D
	B.EQ Cont2
	CMP X11, #71 // X11 == G
	B.EQ Cont2
	CMP X11, #84 // X11 == T
	B.EQ Cont2

	// 3 pontos
	CMP X11, #66 // X11 == B
	B.EQ Cont3
	CMP X11, #67 // X11 == C
	B.EQ Cont3
	CMP X11, #77 // X11 == M
	B.EQ Cont3
	CMP X11, #80 // X11 == P
	B.EQ Cont3

	// 4 pontos
	CMP X11, #70 // X11 == F
	B.EQ Cont4
	CMP X11, #72 // X11 == H
	B.EQ Cont4
	CMP X11, #86 // X11 == V
	B.EQ Cont4
	CMP X11, #87 // X11 == W
	B.EQ Cont4
	CMP X11, #89 // X11 == Y
	B.EQ Cont4

	// 5 pontos
	CMP X11, #75 // X11 == K
	B.EQ Cont5

	// 8 pontos
	CMP X11, #74 // X11 == J
	B.EQ Cont8
	CMP X11, #76 // X11 == L
	B.EQ Cont8
	CMP X11, #88 // X11 == X
	B.EQ Cont8

	// 10 pontoS
	CMP X11, #81 // X11 == Q
	B.EQ Cont10
	CMP X11, #90 // X11 == Z
	B.EQ Cont10

	B L1
	Cont1: ADD X1, X1, #1 // Pont = Pont + 1
	B L1
	Cont2: ADD X1, X1, #2 // Pont = Pont + 2
	B L1
	Cont3: ADD X1, X1, #3 // Pont = Pont + 3
	B L1
	Cont4: ADD X1, X1, #4 // Pont = Pont + 4
	B L1
	Cont5: ADD X1, X1, #5 // Pont = Pont + 5
	B L1
	Cont8: ADD X1, X1, #8 // Pont = Pont + 8
	B L1
	Cont10: ADD X1, X1, #10 // Pont = Pont + 10
	B L1
	EndFunc: BR X30

	Exit:
//	STUR X30, [SP, #0]
//	LDR X15, =16
//	ADD SP, SP, X15

	ADD X30, XZR, X21
	ADD X0, XZR, X5

	BR	X30
