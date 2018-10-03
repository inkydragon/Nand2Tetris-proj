// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.
// **
// * Input: 
// *    R0 >= 0
// *    R1 >= 0
// * Result:
// *    R2 = R0*R1 < 32768
@R2
M=0 // R2 = 0

@R0
D=M
@ZERO
D;JEQ // if R0 == 0: goto ZERO

@R1
D=M
@ZERO
D;JEQ // if R1 == 0: goto ZERO


(LOOP)
@R1
D=M   // D = R1

@R2
M=M+D // R2 += D

@R0
M=M-1 // R0 -= 1

@R0
D=M
@LOOP
D;JGT // if R0 > 0: goto LOOP


(ZERO)  // if R0 == 0 | R1 == 0: return 0
(END)
@END
0;JMP //* -- end of program -- *//
