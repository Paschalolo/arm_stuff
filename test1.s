# 0 "src/test1.S"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "src/test1.S"
; Hello world in assembly

; Author : Pascahl Ahanmisi
; Purpose teesting script on mac
.data
 helloworld : .ascii "Hello world\n My name is Paschal\n"

.global _start

_start :
 mov x0, #1
 ldr x1 , helloworld
 mov x2 , #32
 mov x8 , 0X40

 svc 0; call syscall

 ; terminate the process '
 mov x0 , 0x5d
 mov x1 , #0
 svc 0
