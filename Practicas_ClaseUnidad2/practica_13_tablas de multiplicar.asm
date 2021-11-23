TITLE tabla de multiplicar

;DESCRPICI�N 
;Objetivo: Explicaci�n
;
; Autore(s):
;         Rodr�guez Nu�ez Salma 
;         

; Semestre: 8vo Semestre ISC 
;FIN DESCRIPCI�N

INCLUDE Irvine32.inc  


.data
; �rea de Declaraci�n de Variables

txttabla db "Que tabla quieres visualizar? ",0 

msj_operadorX db " x ", 0
msj_operadorIgual db " = ", 0


.code
	
	main14 PROC	
		;L�gica del Programa

		mov edx, offset txttabla
		call writestring  ; despliega el mensaje
		call readint  ; leer tabla   -> eax
		mov ebx, 1  ; registro usado como contador para la tabla

		ciclo:
			call writedec   ; imprime el valor de la tabla
			mov edx, offset msj_operadorX
			call writestring
			mov ecx, eax  ; respalda en ecx el valor de la tabla (eax)
			mov eax, ebx   ; guardamos en eax el valor del contador
			call writedec

			mov edx, offset msj_operadorIgual
			call writestring 
			call writedec
            call readint
			call crlf
			; contador
			mov eax, ecx ; regresamos a eax el valor de ecx (valor de la tabla)
			;mul ecx    ; eax = eax(contador)  *  ecx(tabla)

			;incremento o decremento (puede ir aqui)
			inc ebx ; suma 1 a ebx
			cmp ebx, 10
			jle ciclo


		exit	
	
	main14 ENDP
	
	END main14