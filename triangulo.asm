swap2: macro &a, &b, &t
	copy &a, &t
	copy &b, &a
	copy &t, &b
	end macro

swap: macro &a, &b, &t
	copy &a, &t
	copy &b, &a
	copy &t, &b
	end macro
section data
	b:	space
	h:	space
	r:	space
	dois:	const	2
	triangulo: equ 1
	TESTAMACRO: EQU 1
Section text
	IF TESTAMACRO
	swap testamacro, triangulo, b
	input	b
	input	h
	load	b
	mult	h
	IF TRIANGULO
	div	dois
	store	r
	output	r
	stop
