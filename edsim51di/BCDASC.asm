		MOV R0,#00H
		MOV A,R1
		ANL A,#0FH
		ADD A,#30H
		MOV R3,A
		MOV A,R1
		SWAP A
		ANL A,#0FH
		ADD A,#30H
		MOV R2,A
HERE:	SJMP HERE
