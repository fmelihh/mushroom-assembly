	LDX		#$0100
	CLRB
aa	STAB	$00,X
	INX
*100 DEKILERI 120 YE KOPYALA	
	INCB
	CPX		#$0110
*ESITSE Z=0 DEGILSE; ADRES<X N=1
	BNE 	aa
*HAFIZAYA VERILERI YAZAR

	LDX		#$0100
	STX		$80
	LDX		#$0120
	STX		$82
cc	LDX		$80
	LDAA	$00,X
	INX
	STX		$80
	LDX		$82
	STAA	$00,XX
	INX
	STX		$82
	CPX		#$0130
	BNE		cc
	WAI