TITLE matriz
; DESCRPICI�N
;
; Autore(s) :
;       Catedratico:   Dr. Alejandro Garcia
;       Alumno  Rodr�guez Nu�ez Salma 
; Semestre: 8vo Semestre ISC

INCLUDE Irvine32.inc
.data
; �rea de Declaraci�n de Variables
txtdato db "Ingrese un dato: ",0
total db "el resultado es : ", 0
.code

main19 PROC

;L�gica del Programa
   mov ecx, 4
   ciclo:
        mov edx, offset txtdato
        call writestring
        call readint
        push eax

   loop ciclo

        pop eax
        pop ecx

        mov ebx, 2 ; divisor
		mov edx, 0   ; para evitar el overflow
        add eax, ecx
		div ebx
     
   call crlf
   mov edx, offset total
   call writestring
   call writedec

		exit		
	main19 ENDP
	END main19