* -------------
 LDX #$0100
 STX $80
 LDX #$0300
 STX $82
* -------------
DN2  LDX $80
  LDAA $00,X
  TAB *B = A (akümülatör aktarma)
  INX
  CPX #$0201
  BEQ DN1
  STX $80
* -------------
  LSR B
  BCS DN2
* -------------
  LDX $82
  STAA $00,X
  INX
  STX $82
  BRA DN2
* -------------    
DN1 WAI
