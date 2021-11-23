TITLE numero mayor a 
;eax Registro de acumulador extendido 
;  Almacenar el valor de retorno de una funci�n y utilizarlo como contenedor para resolver sencillas operaciones matem�ticas. 
; varia segun la operacion

; EBX  registro base extendido- Suele utilizarse como apoyo 
;para acelerar el c�lculo de operaciones. Es un registro no vol�til.

;ECX (registro de contador) � Registro vol�til que puede ser utilizado como 
;contador de bucle o contenedor de par�metros que sean pasado a funciones

; EDX (Registro de datos extendido ) � Registro vol�til usado mayormente como par�metro para funciones.
;Normalmente se usa tambi�n para almacenar variables a corto plazo dentro de una funci�n

; Autore(s) :
;      Catedratico:   Dr. Alejandro Garcia
;       Alumno  Rodr�guez Nu�ez Salma 
; Semestre: 8vo Semestre ISC
	; FIN DESCRPICI�N

	INCLUDE Irvine32.inc
.data
; �rea de Declaraci�n de Variables
txtdato db "ingrese un dato ",0
total db "total es ", 0
esmayo db "es mayor", 0
esmenor db "no es mayor",0

.code

main13 PROC

;L�gica del Programa
   mov ecx, 3

   ciclo:
        mov edx, offset txtdato
        call writestring
        call readint
        push eax

   loop ciclo

        pop ebx
        pop eax
        pop ecx
        add eax, ecx
        call crlf

   mov edx, offset total
   call writestring

   cmp eax, ebx
   ;   ja  mayor
   ;mayor:
      ;mov edx, offset esmayor
   
  ; mov edx, offset esmenor
  ;    jmp ending
   

 

		exit		
	main13 ENDP
	END main13