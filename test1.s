# 0 "src/test1.S"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "src/test1.S"





.data
 helloworld : .ascii "Hello world\n My name is Paschal\n"

.text
.global _start

_start:

    mov x0, #1
    ldr x1, =helloworld
    mov x2, #32
    mov x8, #64
    svc 0


    mov x0, #0
    mov x8, #93
    svc 0
