	LDX		#$0050
	LDAA 	#2
	STAA	$60
	LDAA	#2

	CLRB
d1	STAB	$00,X
	INX
	CPX		#$0052
	BNE 	d1
d11	STAB	$00,X
	DEX
	CPX		#$50
	BNE		d11
	BEQ 	d2

d2	DECA
	BEQ		d3
	BNE 	d1

d3	LDAA 	#2
	DEC		$60
	BNE		d1
