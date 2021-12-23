	.file	"findMedian.c"
	.option nopic
	.attribute arch, "rv64i2p0_a2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	findMedian
	.type	findMedian, @function
findMedian:
	mv	t4,a0
	beq	a1,zero,.L10
	slli	a6,a1,2
	add	a6,a0,a6
	mv	a7,a0
	li	a0,0
	li	t3,0
	j	.L3
.L4:
	bgeu	a3,a4,.L6
	addiw	a2,a2,-1
.L5:
	addi	a5,a5,4
	beq	a5,a6,.L13
.L7:
	lw	a4,0(a5)
	bleu	a3,a4,.L4
	addiw	a2,a2,1
	j	.L5
.L6:
	bne	a3,a4,.L5
	addiw	t1,t1,1
	j	.L5
.L13:
	beq	t1,a1,.L11
	bne	a2,zero,.L9
	sext.w	a0,a3
	j	.L8
.L9:
	addiw	a5,a2,1
	andi	a5,a5,-3
	sext.w	a5,a5
	bne	a5,zero,.L8
	srliw	a3,a3,1
	addw	a0,a3,a0
	j	.L8
.L11:
	mv	a0,t1
.L8:
	addi	a7,a7,4
	beq	a7,a6,.L2
.L3:
	lw	a3,0(a7)
	mv	a5,t4
	mv	t1,t3
	mv	a2,t3
	j	.L7
.L10:
	li	a0,0
.L2:
	ret
	.size	findMedian, .-findMedian
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
