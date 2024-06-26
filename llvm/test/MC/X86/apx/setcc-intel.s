# RUN: llvm-mc -triple x86_64 -show-encoding -x86-asm-syntax=intel -output-asm-variant=1 %s | FileCheck %s

# CHECK: {evex}	seto	al
# CHECK: encoding: [0x62,0xf4,0x7f,0x08,0x40,0xc0]
         {evex}	seto	al
# CHECK: {evex}	setno	al
# CHECK: encoding: [0x62,0xf4,0x7f,0x08,0x41,0xc0]
         {evex}	setno	al
# CHECK: {evex}	setb	al
# CHECK: encoding: [0x62,0xf4,0x7f,0x08,0x42,0xc0]
         {evex}	setb	al
# CHECK: {evex}	setae	al
# CHECK: encoding: [0x62,0xf4,0x7f,0x08,0x43,0xc0]
         {evex}	setae	al
# CHECK: {evex}	sete	al
# CHECK: encoding: [0x62,0xf4,0x7f,0x08,0x44,0xc0]
         {evex}	sete	al
# CHECK: {evex}	setne	al
# CHECK: encoding: [0x62,0xf4,0x7f,0x08,0x45,0xc0]
         {evex}	setne	al
# CHECK: {evex}	setbe	al
# CHECK: encoding: [0x62,0xf4,0x7f,0x08,0x46,0xc0]
         {evex}	setbe	al
# CHECK: {evex}	seta	al
# CHECK: encoding: [0x62,0xf4,0x7f,0x08,0x47,0xc0]
         {evex}	seta	al
# CHECK: {evex}	sets	al
# CHECK: encoding: [0x62,0xf4,0x7f,0x08,0x48,0xc0]
         {evex}	sets	al
# CHECK: {evex}	setns	al
# CHECK: encoding: [0x62,0xf4,0x7f,0x08,0x49,0xc0]
         {evex}	setns	al
# CHECK: {evex}	setp	al
# CHECK: encoding: [0x62,0xf4,0x7f,0x08,0x4a,0xc0]
         {evex}	setp	al
# CHECK: {evex}	setnp	al
# CHECK: encoding: [0x62,0xf4,0x7f,0x08,0x4b,0xc0]
         {evex}	setnp	al
# CHECK: {evex}	setl	al
# CHECK: encoding: [0x62,0xf4,0x7f,0x08,0x4c,0xc0]
         {evex}	setl	al
# CHECK: {evex}	setge	al
# CHECK: encoding: [0x62,0xf4,0x7f,0x08,0x4d,0xc0]
         {evex}	setge	al
# CHECK: {evex}	setle	al
# CHECK: encoding: [0x62,0xf4,0x7f,0x08,0x4e,0xc0]
         {evex}	setle	al
# CHECK: {evex}	setg	al
# CHECK: encoding: [0x62,0xf4,0x7f,0x08,0x4f,0xc0]
         {evex}	setg	al
# CHECK: {evex}	seto	byte ptr [rax]
# CHECK: encoding: [0x62,0xf4,0x7f,0x08,0x40,0x00]
         {evex}	seto	byte ptr [rax]
# CHECK: {evex}	setno	byte ptr [rax]
# CHECK: encoding: [0x62,0xf4,0x7f,0x08,0x41,0x00]
         {evex}	setno	byte ptr [rax]
# CHECK: {evex}	setb	byte ptr [rax]
# CHECK: encoding: [0x62,0xf4,0x7f,0x08,0x42,0x00]
         {evex}	setb	byte ptr [rax]
# CHECK: {evex}	setae	byte ptr [rax]
# CHECK: encoding: [0x62,0xf4,0x7f,0x08,0x43,0x00]
         {evex}	setae	byte ptr [rax]
# CHECK: {evex}	sete	byte ptr [rax]
# CHECK: encoding: [0x62,0xf4,0x7f,0x08,0x44,0x00]
         {evex}	sete	byte ptr [rax]
# CHECK: {evex}	setne	byte ptr [rax]
# CHECK: encoding: [0x62,0xf4,0x7f,0x08,0x45,0x00]
         {evex}	setne	byte ptr [rax]
# CHECK: {evex}	setbe	byte ptr [rax]
# CHECK: encoding: [0x62,0xf4,0x7f,0x08,0x46,0x00]
         {evex}	setbe	byte ptr [rax]
# CHECK: {evex}	seta	byte ptr [rax]
# CHECK: encoding: [0x62,0xf4,0x7f,0x08,0x47,0x00]
         {evex}	seta	byte ptr [rax]
# CHECK: {evex}	sets	byte ptr [rax]
# CHECK: encoding: [0x62,0xf4,0x7f,0x08,0x48,0x00]
         {evex}	sets	byte ptr [rax]
# CHECK: {evex}	setns	byte ptr [rax]
# CHECK: encoding: [0x62,0xf4,0x7f,0x08,0x49,0x00]
         {evex}	setns	byte ptr [rax]
# CHECK: {evex}	setp	byte ptr [rax]
# CHECK: encoding: [0x62,0xf4,0x7f,0x08,0x4a,0x00]
         {evex}	setp	byte ptr [rax]
# CHECK: {evex}	setnp	byte ptr [rax]
# CHECK: encoding: [0x62,0xf4,0x7f,0x08,0x4b,0x00]
         {evex}	setnp	byte ptr [rax]
# CHECK: {evex}	setl	byte ptr [rax]
# CHECK: encoding: [0x62,0xf4,0x7f,0x08,0x4c,0x00]
         {evex}	setl	byte ptr [rax]
# CHECK: {evex}	setge	byte ptr [rax]
# CHECK: encoding: [0x62,0xf4,0x7f,0x08,0x4d,0x00]
         {evex}	setge	byte ptr [rax]
# CHECK: {evex}	setle	byte ptr [rax]
# CHECK: encoding: [0x62,0xf4,0x7f,0x08,0x4e,0x00]
         {evex}	setle	byte ptr [rax]
# CHECK: {evex}	setg	byte ptr [rax]
# CHECK: encoding: [0x62,0xf4,0x7f,0x08,0x4f,0x00]
         {evex}	setg	byte ptr [rax]
