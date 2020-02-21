@second program  Register =  val2 + 9 + val3 -val1
.section .data
val1: .word 6 @32bit memory variables
val2: .word 11 @32 bit memory variables
val3: .word 16 @32 bit memory variable

.section .text
.globl _start
_start:
ldr r1, = val1 @load memory of val into r1
ldr r1,[r1] @ load the value of val1 into r1
ldr r2, = val2 @ load memory of val2 into r2
ldr r2,[r2] @load value of val2 into r2
ldr r3, = val3  @load memory of val3 into r3
ldr r3,[r3] @load value of  val3 into r3
mov r5,#9
add r2,r2,r5 @ add r2 to 9 and store it into r2
add r2,r2,r3 @ add r2 to r3 and store it into r2
sub r2,r2,r1 @sub r2 to r1 and store it into r2
ldr r2,[r2]


mov r7,#1
svc #0
.end
 
