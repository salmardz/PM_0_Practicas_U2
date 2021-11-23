TITLE promedio calificaciones
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

txtx db "Ingresa el numero a contar ",0
txtI db "Dame el total de numeros: ", 0
txtveces db "numero de veces repetida ", 0
contador dword 0

.code

	mai17 PROC
	      mov edx, offset txtx ; ingresa el valor a buscar 
		  call writestring
		  call readint
		  mov ebx, eax

		  mov edx, offset txtI ; ingresa la cantidad
		  call writestring
		  call readdec
		  mov ecx, eax ; almacena el valor ecx en eax
		  inc ecx
	ciclo:
		dec ecx ; decrementa a ecx
		jz sig ; salta si es 0

		mov edx, offset txtx ; ingresa los vsalores 
		call writestring
		call readint

		cmp ebx,eax
		jne ciclo
			  
		inc contador
		jmp ciclo
	sig:
		mov edx, offset txtveces
		call writestring
		mov eax, ebx
		mov eax, contador
		call writedec
			 
			exit
	mai17 ENDP
	END mai17



