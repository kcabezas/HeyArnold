	.cpu arm7tdmi
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.arm
	.syntax divided
	.file	"main.c"
	.text
	.align	2
	.global	setPixel
	.type	setPixel, %function
setPixel:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	rsb	r0, r0, r0, lsl #4
	add	r1, r1, r0, lsl #4
	mov	r1, r1, asl #1
	add	r1, r1, #100663296
	strh	r2, [r1]	@ movhi
	bx	lr
	.size	setPixel, .-setPixel
	.align	2
	.global	drawFrame2
	.type	drawFrame2, %function
drawFrame2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, #0
	ldr	r3, .L7
	ldr	r2, .L7+4
	strh	r1, [r3, #76]	@ movhi
	strh	r1, [r3, #78]	@ movhi
	strh	r1, [r3, #120]	@ movhi
	strh	r1, [r3, #122]	@ movhi
	sub	sp, sp, #8
.L3:
	ldr	r3, [sp, #4]
	subs	r2, r2, #1
	add	r3, r3, #1
	str	r3, [sp, #4]
	bne	.L3
	add	sp, sp, #8
	@ sp needed
	bx	lr
.L8:
	.align	2
.L7:
	.word	100719616
	.word	70000
	.size	drawFrame2, .-drawFrame2
	.align	2
	.global	drawFrame6
	.type	drawFrame6, %function
drawFrame6:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, #0
	ldr	r3, .L13
	ldr	r2, .L13+4
	strh	r1, [r3, #156]	@ movhi
	strh	r1, [r3, #158]	@ movhi
	strh	r1, [r3, #232]	@ movhi
	strh	r1, [r3, #234]	@ movhi
	sub	sp, sp, #8
.L10:
	ldr	r3, [sp, #4]
	subs	r2, r2, #1
	add	r3, r3, #1
	str	r3, [sp, #4]
	bne	.L10
	add	sp, sp, #8
	@ sp needed
	bx	lr
.L14:
	.align	2
.L13:
	.word	100718080
	.word	70000
	.size	drawFrame6, .-drawFrame6
	.align	2
	.global	delay
	.type	delay, %function
delay:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L19
	sub	sp, sp, #8
.L16:
	ldr	r3, [sp, #4]
	subs	r2, r2, #1
	add	r3, r3, #1
	str	r3, [sp, #4]
	bne	.L16
	add	sp, sp, #8
	@ sp needed
	bx	lr
.L20:
	.align	2
.L19:
	.word	70000
	.size	delay, .-delay
	.align	2
	.global	drawFrame10
	.type	drawFrame10, %function
drawFrame10:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	delay
	.size	drawFrame10, .-drawFrame10
	.align	2
	.global	drawFrame9
	.type	drawFrame9, %function
drawFrame9:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	delay
	.size	drawFrame9, .-drawFrame9
	.align	2
	.global	drawFrame8
	.type	drawFrame8, %function
drawFrame8:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	delay
	.size	drawFrame8, .-drawFrame8
	.align	2
	.global	drawFrame7
	.type	drawFrame7, %function
drawFrame7:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	delay
	.size	drawFrame7, .-drawFrame7
	.align	2
	.global	drawLine
	.type	drawLine, %function
drawLine:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r2, #0
	bxle	lr
	rsb	r0, r0, r0, lsl #4
	add	r1, r1, r0, lsl #4
	add	r0, r1, #50331648
	add	r2, r0, r2
	mov	r1, r1, asl #1
	mov	r2, r2, asl #1
	add	r1, r1, #100663296
.L27:
	strh	r3, [r1], #2	@ movhi
	cmp	r1, r2
	bne	.L27
	bx	lr
	.size	drawLine, .-drawLine
	.align	2
	.global	drawOval
	.type	drawOval, %function
drawOval:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	cmp	r2, #0
	ldrh	lr, [sp, #24]
	ble	.L31
	rsb	r4, r0, r0, lsl #4
	mov	r5, r4, asl #4
	add	r4, r2, #50331648
	add	ip, r1, r5
	add	r4, r4, r1
	mov	ip, ip, asl #1
	add	r4, r4, r5
	add	ip, ip, #100663296
	mov	r4, r4, asl #1
.L32:
	strh	lr, [ip], #2	@ movhi
	cmp	r4, ip
	bne	.L32
	cmp	r3, #0
	add	r0, r0, #1
	add	r7, r2, #4
	ble	.L39
.L42:
	mov	r6, #0
	rsb	r5, r0, r0, lsl #4
	sub	ip, r1, #2
	add	r5, ip, r5, lsl #4
	mov	r5, r5, asl #1
	add	r5, r5, #100663296
	mov	r8, r7, asl #1
.L35:
	cmp	r7, #0
	movgt	ip, r5
	addgt	r4, r8, r5
	ble	.L38
.L37:
	strh	lr, [ip], #2	@ movhi
	cmp	ip, r4
	bne	.L37
.L38:
	add	r6, r6, #1
	cmp	r3, r6
	add	r0, r0, #1
	add	r5, r5, #480
	bgt	.L35
	cmp	r2, #0
	ble	.L30
.L39:
	mov	r3, #0
	rsb	r0, r0, r0, lsl #4
	add	r1, r1, r0, lsl #4
	mov	r1, r1, asl #1
	add	r1, r1, #100663296
.L40:
	add	r3, r3, #1
	cmp	r2, r3
	strh	lr, [r1], #2	@ movhi
	bgt	.L40
.L30:
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L31:
	cmp	r3, #0
	addgt	r0, r0, #1
	addgt	r7, r2, #4
	bgt	.L42
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
	.size	drawOval, .-drawOval
	.align	2
	.global	drawHead
	.type	drawHead, %function
drawHead:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}
	mov	r5, r1
	rsb	lr, r0, r0, lsl #4
	ldr	r4, .L73
	mov	lr, lr, asl #4
	add	r1, r1, #50331648
	add	r4, r5, r4
	add	ip, r5, lr
	add	r3, r1, #100
	add	r6, r4, lr
	mov	ip, ip, asl #1
	add	r3, r3, lr
	mov	r4, r2
	sub	sp, sp, #12
	add	ip, ip, #100663296
	mov	r2, r3, asl #1
	mov	r6, r6, asl #1
.L53:
	mov	r3, ip
.L54:
	strh	r4, [r3], #2	@ movhi
	cmp	r2, r3
	bne	.L54
	add	ip, ip, #476
	add	ip, ip, #2
	add	r2, r2, #480
	cmp	r6, ip
	add	r2, r2, #2
	bne	.L53
	mov	r7, #0
	sub	ip, r5, #20
	add	r3, lr, #4800
	add	r3, r3, ip
	sub	r3, r3, #-2147483647
	mov	r3, r3, asl #1
	add	r6, r0, #20
	add	r0, r3, #100663296
.L55:
	mov	r3, r0
	add	r2, r0, #280
.L56:
	strh	r4, [r3, #2]!	@ movhi
	cmp	r2, r3
	bne	.L56
	add	r7, r7, #1
	cmp	r7, #10
	addne	r0, r0, #480
	bne	.L55
.L72:
	add	r2, lr, #7168
	add	r2, r2, #32
	add	r0, r2, r5
	add	r3, r2, ip
	add	r1, r1, #120
	add	r0, r0, #50331648
	add	r2, r1, r2
	mov	r3, r3, asl #1
	add	r0, r0, #4800
	add	r1, r3, #100663296
	mov	r0, r0, asl #1
	mov	r2, r2, asl #1
.L60:
	mov	r3, r1
.L59:
	strh	r4, [r3], #2	@ movhi
	cmp	r2, r3
	bne	.L59
	add	r1, r1, #480
	add	r1, r1, #2
	add	r2, r2, #476
	cmp	r1, r0
	add	r2, r2, #2
	bne	.L60
	mov	r3, #8
	sub	r1, r5, #28
	mov	r2, r3
	mov	r0, r6
	str	r4, [sp]
	bl	drawOval
	mov	r3, #8
	str	r4, [sp]
	add	r1, r5, #120
	mov	r0, r6
	mov	r2, r3
	bl	drawOval
	add	sp, sp, #12
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, lr}
	bx	lr
.L74:
	.align	2
.L73:
	.word	50336428
	.size	drawHead, .-drawHead
	.align	2
	.global	drawPupils
	.type	drawPupils, %function
drawPupils:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r5, r0
	mov	r7, r2
	mov	r8, r3
	sub	sp, sp, #8
	ldrh	r4, [sp, #32]
	mov	r6, r1
	str	r4, [sp]
	bl	drawOval
	mov	r3, r8
	mov	r2, r7
	mov	r0, r5
	add	r1, r6, #70
	str	r4, [sp, #32]
	add	sp, sp, #8
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	b	drawOval
	.size	drawPupils, .-drawPupils
	.align	2
	.global	drawEyes
	.type	drawEyes, %function
drawEyes:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrh	ip, [sp]
	str	ip, [sp]
	b	drawPupils
	.size	drawEyes, .-drawEyes
	.align	2
	.global	drawNose
	.type	drawNose, %function
drawNose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	rsb	r0, r0, r0, lsl #4
	mov	r0, r0, asl #4
	add	r3, r1, r0
	sub	r3, r3, #-2147483647
	mov	r3, r3, asl #1
	add	r3, r3, #100663296
	mov	ip, r3
	str	lr, [sp, #-4]!
	add	lr, r1, #50331648
	add	lr, lr, #7
	add	lr, lr, r0
	mov	lr, lr, asl #1
.L79:
	strh	r2, [ip, #2]!	@ movhi
	cmp	lr, ip
	bne	.L79
.L85:
	strh	r2, [r3, #2]!	@ movhi
	cmp	r3, lr
	bne	.L85
	ldr	lr, .L92
	add	ip, r0, #240
	add	r3, r1, #9
	add	lr, r1, lr
	add	r3, r3, ip
	add	lr, lr, r0
	mov	r3, r3, asl #1
	mov	lr, lr, asl #1
	add	r3, r3, #100663296
.L81:
	strh	r2, [r3]	@ movhi
	strh	r2, [r3, #-2]	@ movhi
	add	r3, r3, #480
	cmp	lr, r3
	bne	.L81
	add	r3, r0, #1920
	add	r3, r3, r1
	mov	r3, r3, asl #1
	add	r3, r3, #100663296
	mov	r0, r3
	ldr	lr, .L92+4
	add	lr, r1, lr
	add	r1, lr, ip
	mov	r1, r1, asl #1
.L82:
	strh	r2, [r0], #2	@ movhi
	cmp	r0, r1
	bne	.L82
.L84:
	strh	r2, [r3], #2	@ movhi
	cmp	r1, r3
	bne	.L84
	ldr	lr, [sp], #4
	bx	lr
.L93:
	.align	2
.L92:
	.word	50333817
	.word	50333336
	.size	drawNose, .-drawNose
	.align	2
	.global	drawHat
	.type	drawHat, %function
drawHat:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	rsb	r0, r0, r0, lsl #4
	mov	ip, r0, asl #4
	stmfd	sp!, {r4, r5, lr}
	mov	r4, ip
	mov	lr, #0
	mov	r5, #8
.L95:
	add	r3, r4, r1
	add	r0, r3, #50331648
	add	r0, r0, r5
	mov	r3, r3, asl #1
	mov	r0, r0, asl #1
	add	r3, r3, #100663296
.L96:
	strh	r2, [r3], #2	@ movhi
	cmp	r3, r0
	bne	.L96
	tst	lr, #1
	add	lr, lr, #1
	subeq	r1, r1, #2
	addeq	r5, r5, #4
	cmp	lr, #6
	add	r4, r4, #240
	bne	.L95
	add	r0, ip, #1440
	add	lr, r0, #50331648
	add	r3, r1, #6
	add	lr, lr, #20
	add	r0, r3, r0
	add	lr, lr, r1
	mov	r0, r0, asl #1
	mov	lr, lr, asl #1
	add	r0, r0, #100663296
.L99:
	strh	r2, [r0], #2	@ movhi
	cmp	r0, lr
	bne	.L99
	add	lr, ip, #1680
	add	r0, lr, #50331648
	add	r3, r3, lr
	add	r0, r0, #20
	add	r0, r0, r1
	mov	r3, r3, asl #1
	mov	r0, r0, asl #1
	add	r3, r3, #100663296
.L100:
	strh	r2, [r3], #2	@ movhi
	cmp	r3, r0
	bne	.L100
	add	lr, ip, #1920
	add	r3, r1, #8
	add	r0, r3, lr
	add	lr, lr, #50331648
	sub	r0, r0, #-2147483647
	add	lr, lr, #19
	mov	r0, r0, asl #1
	add	lr, lr, r1
	add	r0, r0, #100663296
	mov	lr, lr, asl #1
.L101:
	strh	r2, [r0, #2]!	@ movhi
	cmp	r0, lr
	bne	.L101
	add	ip, ip, #2160
	add	r3, r3, ip
	add	ip, ip, #50331648
	sub	r3, r3, #-2147483647
	add	r0, ip, #19
	mov	r3, r3, asl #1
	add	r1, r0, r1
	add	r3, r3, #100663296
	mov	r1, r1, asl #1
.L102:
	strh	r2, [r3, #2]!	@ movhi
	cmp	r1, r3
	bne	.L102
	ldmfd	sp!, {r4, r5, lr}
	bx	lr
	.size	drawHat, .-drawHat
	.align	2
	.global	drawBlush
	.type	drawBlush, %function
drawBlush:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r5, r0
	mov	r7, r2
	mov	r8, r3
	sub	sp, sp, #8
	ldrh	r4, [sp, #32]
	mov	r6, r1
	str	r4, [sp]
	bl	drawOval
	mov	r3, r8
	mov	r2, r7
	mov	r0, r5
	add	r1, r6, #62
	str	r4, [sp, #32]
	add	sp, sp, #8
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	b	drawOval
	.size	drawBlush, .-drawBlush
	.align	2
	.global	drawFrame3
	.type	drawFrame3, %function
drawFrame3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #0
	stmfd	sp!, {r4, lr}
	ldr	r2, .L115
	ldr	r3, .L115+4
	ldr	r0, .L115+8
	ldr	lr, .L115+12
	ldr	ip, .L115+16
	ldr	r4, .L115+20
	sub	sp, sp, #16
	strh	r1, [r2, #72]	@ movhi
	strh	r1, [r2, #74]	@ movhi
	strh	r1, [r2, #124]	@ movhi
	strh	r1, [r2, #126]	@ movhi
	strh	r3, [r4, #116]	@ movhi
	mov	r2, #2
	strh	r3, [lr, #24]	@ movhi
	mov	r1, #97
	strh	r3, [r0, #80]	@ movhi
	strh	r3, [r0, #252]	@ movhi
	mov	r3, #1
	str	ip, [sp]
	mov	r0, #111
	bl	drawBlush
	ldr	r2, .L115+24
.L112:
	ldr	r3, [sp, #12]
	subs	r2, r2, #1
	add	r3, r3, #1
	str	r3, [sp, #12]
	bne	.L112
	add	sp, sp, #16
	@ sp needed
	ldmfd	sp!, {r4, lr}
	bx	lr
.L116:
	.align	2
.L115:
	.word	100719616
	.word	19196
	.word	100707072
	.word	100706816
	.word	20990
	.word	100706560
	.word	70000
	.size	drawFrame3, .-drawFrame3
	.align	2
	.global	drawFrame4
	.type	drawFrame4, %function
drawFrame4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #0
	stmfd	sp!, {r4, lr}
	ldr	r3, .L121
	ldr	r2, .L121+4
	ldr	lr, .L121+8
	ldr	ip, .L121+12
	ldr	r0, .L121+16
	ldr	r4, .L121+20
	sub	sp, sp, #16
	strh	r1, [r2, #100]	@ movhi
	strh	r1, [r2, #102]	@ movhi
	strh	r1, [r2, #160]	@ movhi
	strh	r1, [r2, #162]	@ movhi
	strh	r3, [lr, #118]	@ movhi
	strh	r3, [lr, #120]	@ movhi
	mov	r2, #4
	strh	r3, [ip, #82]	@ movhi
	strh	r3, [ip, #250]	@ movhi
	mov	r1, #96
	strh	r3, [r0, #22]	@ movhi
	strh	r3, [r0, #20]	@ movhi
	mov	r3, #2
	str	r4, [sp]
	mov	r0, #110
	bl	drawBlush
	ldr	r2, .L121+24
.L118:
	ldr	r3, [sp, #12]
	subs	r2, r2, #1
	add	r3, r3, #1
	str	r3, [sp, #12]
	bne	.L118
	add	sp, sp, #16
	@ sp needed
	ldmfd	sp!, {r4, lr}
	bx	lr
.L122:
	.align	2
.L121:
	.word	19196
	.word	100719104
	.word	100706560
	.word	100707072
	.word	100706816
	.word	20990
	.word	70000
	.size	drawFrame4, .-drawFrame4
	.align	2
	.global	drawFrame5
	.type	drawFrame5, %function
drawFrame5:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}
	mov	r1, #0
	mvn	r4, #32768
	ldr	r2, .L125
	ldr	r3, .L125+4
	ldr	lr, .L125+8
	ldr	ip, .L125+12
	ldr	r0, .L125+16
	ldr	r5, .L125+20
	sub	sp, sp, #12
	strh	r1, [r2, #128]	@ movhi
	strh	r1, [r2, #130]	@ movhi
	strh	r1, [r2, #196]	@ movhi
	strh	r1, [r2, #198]	@ movhi
	strh	r4, [lr, #30]	@ movhi
	strh	r4, [lr, #170]	@ movhi
	mov	r2, #6
	strh	r3, [ip, #122]	@ movhi
	strh	r3, [ip, #124]	@ movhi
	mov	r1, #95
	strh	r3, [r0, #16]	@ movhi
	strh	r3, [r0, #18]	@ movhi
	mov	r3, #4
	str	r5, [sp]
	mov	r0, #109
	bl	drawBlush
	add	sp, sp, #12
	@ sp needed
	ldmfd	sp!, {r4, r5, lr}
	bx	lr
.L126:
	.align	2
.L125:
	.word	100718592
	.word	19196
	.word	100708096
	.word	100706560
	.word	100706816
	.word	20990
	.size	drawFrame5, .-drawFrame5
	.align	2
	.global	drawLeftTri
	.type	drawLeftTri, %function
drawLeftTri:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #0
	bxle	lr
	stmfd	sp!, {r4, r5, r6, r7, lr}
	rsb	r7, r0, r0, lsl #4
	rsb	r0, r2, r0
	mov	r7, r7, asl #4
	rsb	r0, r0, r0, lsl #4
	add	r6, r2, r1
	add	r6, r6, r7
	add	r5, r1, r0, lsl #4
	add	r7, r1, r7
	mov	r5, r5, asl #1
	mov	r6, r6, asl #1
	mov	r7, r7, asl #1
	add	r5, r5, #100663296
	add	r6, r6, #100663296
	add	r7, r7, #100663296
.L130:
	mov	ip, r6
	mov	lr, r7
	mov	r0, r5
	mov	r1, #0
.L129:
	add	r1, r1, #1
	sub	r4, ip, #480
	cmp	r1, r2
	strh	r3, [r0]	@ movhi
	strh	r3, [lr], #2	@ movhi
	add	r0, r0, #480
	strh	r3, [ip]	@ movhi
	sub	ip, r4, #2
	blt	.L129
	subs	r2, r2, #1
	add	r5, r5, #480
	sub	r6, r6, #2
	bne	.L130
	ldmfd	sp!, {r4, r5, r6, r7, lr}
	bx	lr
	.size	drawLeftTri, .-drawLeftTri
	.align	2
	.global	drawRightTri
	.type	drawRightTri, %function
drawRightTri:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #0
	bxle	lr
	stmfd	sp!, {r4, r5, r6, lr}
	rsb	ip, r2, r1
	rsb	r5, r2, r0
	rsb	r5, r5, r5, lsl #4
	add	ip, ip, #1
	rsb	r0, r0, r0, lsl #4
	add	r5, r1, r5, lsl #4
	add	r6, ip, r0, lsl #4
	mov	r5, r5, asl #1
	mov	r6, r6, asl #1
	add	r5, r5, #100663296
	add	r6, r6, #100663296
.L139:
	mov	ip, r5
	mov	lr, r6
	mov	r0, r5
	mov	r1, #0
.L138:
	add	r1, r1, #1
	add	r4, ip, #476
	cmp	r1, r2
	strh	r3, [r0]	@ movhi
	strh	r3, [lr], #2	@ movhi
	add	r0, r0, #480
	strh	r3, [ip]	@ movhi
	add	ip, r4, #2
	blt	.L138
	subs	r2, r2, #1
	add	r5, r5, #480
	add	r6, r6, #2
	bne	.L139
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
	.size	drawRightTri, .-drawRightTri
	.align	2
	.global	drawHair
	.type	drawHair, %function
drawHair:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	mov	r3, r0
	mov	r2, #40
	mov	r1, #70
	mov	r0, #80
	bl	drawLeftTri
	mov	r3, r4
	mov	r2, #35
	mov	r1, #55
	mov	r0, #95
	bl	drawLeftTri
	mov	r3, r4
	mov	r2, #40
	mov	r1, #170
	mov	r0, #80
	bl	drawRightTri
	mov	r3, r4
	mov	r2, #35
	mov	r1, #185
	mov	r0, #95
	ldmfd	sp!, {r4, lr}
	b	drawRightTri
	.size	drawHair, .-drawHair
	.align	2
	.global	drawFrame1
	.type	drawFrame1, %function
drawFrame1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r0, .L153
	sub	sp, sp, #16
	bl	drawHair
	ldr	r2, .L153+4
	mov	r1, #70
	mov	r0, #80
	bl	drawHead
	mov	r1, #90
	mov	r4, #0
	ldr	r3, .L153+8
	mov	r0, r1
	str	r3, [sp]
	mov	r2, #12
	mov	r3, #8
	bl	drawPupils
	mov	r3, #4
	mov	r2, #3
	mov	r1, #95
	mov	r0, #92
	str	r4, [sp]
	bl	drawPupils
	ldr	r2, .L153+12
	mov	r1, #130
	mov	r0, #100
	bl	drawNose
	mov	r2, r4
	ldr	r3, .L153+16
	ldr	r1, .L153+20
.L148:
	strh	r2, [r3, #2]!	@ movhi
	cmp	r3, r1
	bne	.L148
	ldr	r2, .L153+24
	mov	r1, #123
	mov	r0, #74
	bl	drawHat
	mvn	r1, #32768
	ldr	r3, .L153+28
	ldr	r2, .L153+32
	strh	r1, [r3, #28]	@ movhi
	strh	r1, [r3, #168]	@ movhi
.L149:
	ldr	r3, [sp, #12]
	subs	r2, r2, #1
	add	r3, r3, #1
	str	r3, [sp, #12]
	bne	.L149
	add	sp, sp, #16
	@ sp needed
	ldmfd	sp!, {r4, lr}
	bx	lr
.L154:
	.align	2
.L153:
	.word	1023
	.word	19196
	.word	32767
	.word	5460
	.word	100719694
	.word	100719734
	.word	26181
	.word	100708096
	.word	70000
	.size	drawFrame1, .-drawFrame1
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	stmfd	sp!, {r7, lr}
	ldr	r2, .L166
	ldr	r9, .L166+4
	strh	r2, [r3]	@ movhi
	ldr	r8, .L166+8
	ldr	r7, .L166+12
	ldr	r6, .L166+16
	ldr	r5, .L166+20
	ldr	r4, .L166+24
	sub	sp, sp, #16
.L160:
	mov	lr, pc
	bx	r9
	mov	lr, pc
	bx	r8
	mov	lr, pc
	bx	r7
	mov	lr, pc
	bx	r6
	mov	lr, pc
	bx	r5
	mov	lr, pc
	bx	r4
	ldr	r2, .L166+28
.L156:
	ldr	r3, [sp, #12]
	subs	r2, r2, #1
	add	r3, r3, #1
	str	r3, [sp, #12]
	bne	.L156
	ldr	r2, .L166+28
.L157:
	ldr	r3, [sp, #8]
	subs	r2, r2, #1
	add	r3, r3, #1
	str	r3, [sp, #8]
	bne	.L157
	ldr	r2, .L166+28
.L158:
	ldr	r3, [sp, #4]
	subs	r2, r2, #1
	add	r3, r3, #1
	str	r3, [sp, #4]
	bne	.L158
	ldr	r2, .L166+28
.L159:
	ldr	r3, [sp]
	subs	r2, r2, #1
	add	r3, r3, #1
	str	r3, [sp]
	bne	.L159
	b	.L160
.L167:
	.align	2
.L166:
	.word	1027
	.word	drawFrame1
	.word	drawFrame2
	.word	drawFrame3
	.word	drawFrame4
	.word	drawFrame5
	.word	drawFrame6
	.word	70000
	.size	main, .-main
	.ident	"GCC: (devkitARM release 45) 5.3.0"
