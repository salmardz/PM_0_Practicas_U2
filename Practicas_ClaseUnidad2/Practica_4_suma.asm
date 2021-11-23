TITLE suma de cifra

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
;      Catedratico:   Dr. Alejandro Garcia
				;Alumno  Rodr�guez Nu�ez Salma 
; Semestre: 8vo Semestre ISC
	; FIN DESCRPICI�N

	INCLUDE Irvine32.inc


.data
; �rea de Declaraci�n de Variables
ms db "ingresa una cifra: ",0
res db "la suma es: ",0

.code

	main5 PROC	
	;L�gica del Programa
		
	mov edx,offset ms  ; almacena la variable en el registro edx
        call writestring
        call readint        ; leer un valor entero
        mov ebx,0       ; guarda en ebx 
        mov ecx,10   ; almacena el valor de 10

       mov edx, 0   ; se almacena el valor 
       div ecx      ; se divide entre %10
       add ebx, edx ; se agrega a edx
       ; el proceso de genera cuatro veces y se almacena la suma en edx

       mov edx, 0
       div ecx
       add ebx, edx

       mov edx, 0
       div ecx
       add ebx, edx

       mov edx, 0
       div ecx
       add ebx, edx


        mov edx,offset res ; txt 
        call writestring
        mov eax,ebx ; se muestra al usuario la cantidd sumada
        call writeint

      
		exit		
	main5 ENDP
	END main5