 	LDAA 	#3
	STAA	$61
	
d3	STAA	$63

d2	STAA	$62

d1	DEC		$62
	BNE 	d1
	DEC		$63
	BNE 	d2
	DEC		$61
	BNE 	d3
