TITLE numeros pares e inpares
;eax Registro de acumulador extendido 
;  Almacenar el valor de retorno de una funci�n y utilizarlo como contenedor para resolver sencillas operaciones matem�ticas. 
; varia segun la operacion

; EBX  registro base extendido- Suele utilizarse como apoyo 
;para acelerar el c�lculo de operaciones. Es un registro no vol�til.

;ECX (registro de contador) � Registro vol�til que puede ser utilizado como 
;contador de bucle o contenedor de par�metros que sean pasado a funciones

; EDX (Registro de datos extendido ) � Registro vol�til usado mayormente como par�metro para funciones.
;Normalmente se usa tambi�n para almacenar variables a corto plazo dentro de una funci�n

; DESCRPICI�N
;
; Autore(s) :
;       Catedratico:   Dr. Alejandro Garcia
;       Alumno  Rodr�guez Nu�ez Salma 
; Semestre: 8vo Semestre ISC

INCLUDE Irvine32.inc
.data
; �rea de Declaraci�n de Variables
msj_p18 db "lista de 0 a : ",0
txtpar db "son pares: ",0
txtinpar db "son inpares: ",0
par dword 0
impar dword 0
.code
	
	main18 PROC	
		;L�gica del Programa

		mov edx, offset msj_p18 ; mensaje 
		call writestring 
		call readint		; determinar asta n
		call crlf
		
		;eax dividendo 
		mov ebx, 2 ; divisor
		mov ecx, eax  ; respaldo de eax para no perder su valor cuando se haga la division
		mov edx, 0   ; para evitar el overflow
		div ebx

		cmp edx, 0 ; edx contiene el residuo
		jz ciclo
		;si no es cero ...
		dec ecx ;<- le restamos uno a ecx para que se convierta en par

		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	ciclo:
		mov eax, ecx
		call writedec
		call crlf
		dec ecx  ;decremento adicional para que en acumulativo sea como
		cmp edx, 0 ; compara a 0
		;je npar ; salta si es igual
;		inc inpar
		jmp siguiente

		npar:
		inc par
		siguiente:		 
		loop ciclo
			mov edx, offset txtpar
			call writestring
			mov eax, par
			call writedec
			call crlf

			mov edx, offset txtinpar
			call writestring
			mov eax, par
;			sub eax, inpar
			call writedec
			call crlf

		exit	
	main18 ENDP
	END main18