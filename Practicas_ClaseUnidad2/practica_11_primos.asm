TITLE numero primo
; Autore(s) :
;      Catedratico:   Dr. Alejandro Garcia
;Alumno  Rodr�guez Nu�ez Salma 
; Semestre: 8vo Semestre ISC
	; FIN DESCRPICI�N

	INCLUDE Irvine32.inc

.data
; �rea de Declaraci�n de Variables
txtmensaje  db "Igresa el numero: ",0
esprimo db "es un numero primo ",0
noesprimo db "no es un numero primo ",0    

.code
main12 PROC
;L�gica del Programa

    mov edx, offset txtmensaje
	call writestring
	call readint
    call crlf
   
    cmp eax, 1 ; a comparar

  ;  jnz si ; Salta si no es cero
    ; si:
        mov edx, offset esprimo
	    call writestring

    ;jz no ; salta si es cero
    ;no:
        mov edx, offset noesprimo
	    call writestring

exit 
           
main12 ENDP 
END main12