list p=16f876
#include<p16f876.inc>
	org 0x00
		debut clrw
			; TRISC = 0x00
			BSF STATUS , RP0
			BCF STATUS , RP1
			CLRF TRISC
			;TRISB = 0xFF
			MOVLW 0xFFZ
			MOVWF TRISB
			; PORTC = 0x55
			BCF STATUS , RP0
			BCF STATUS , RP1
			MOVLW 0x55
			MOVWF PORTC
START		BTFSS PORTB , 2
			GOTO KOpen
			GOTO KClosed
KOpen 		MOVLW 0x55
			MOVWF PORTC
			GOTO START
KClosed 	MOVLW 0xAA
			MOVWF PORTC
			GOTO START

END