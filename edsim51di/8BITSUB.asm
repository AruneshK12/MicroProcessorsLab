		MOV R0,#00
		MOV A,r1
		CLR C
		SUBB A,r2
		JNC SAVE
		INC R0
		CPL A
		ADD A,#01H
SAVE:	MOV r4,A
		MOV 03,R0
HERE:	SJMP HERE
		