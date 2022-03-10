list p=16f876
#include<p16f876.inc>
	org 0x00
		debut clrw
			MOVLW 0x53
		    MOVWF 0x22

			MOVLW 0x60
			MOVWF 0x24

			ADDWF 0x22 , w
			MOVWF 0x30

			BSF STATUS , RP0
			BCF STATUS , RP1
			MOVWF 0xA0

				GOTO debut
				end