/*
-------------------------------------------------------
l02_t03.s
Copies contents of one vector to another.
-------------------------------------------------------
Author:  Paige Broussard
ID:      190832520
Email:   brou2520@mylaurier.ca
Date:    2021-01-29
-------------------------------------------------------
*/
.org	0x1000	// Start at memory location 1000
.text  // Code section
.global _start
_start:

.text	// code section
// Copy contents of first element of Vec1 to Vec2
LDR	R0, =Vec1
LDR	R1, =Vec2
LDR	R2, [R0]
STR	R2, [R1]
// Copy contents of second element of Vec1 to Vec2
ADD	R0, R0, #4 // changed both R1 to R0
ADD	R1, R1, #4
LDR	R2, [R0]
STR	R2, [R1]
// Copy contents of third element of Vec1 to Vec2
ADD	R0, R0, #4
ADD	R1, R1, #4
LDR	R2, [R0]
STR	R2, [R1] // changed R2 to R1
// End program
_stop:
B _stop

.data	// Initialized data section
Vec1:
.word	1, 2, 3
.bss	// Uninitialized data section
Vec2: // changed .word to .space to make it uninitialized
.space	12 // change to 6 to allocate need for larger for memory

.end