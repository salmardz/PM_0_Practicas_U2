TITLE velocidad

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
;formula ; v=d/t

txdistancia db "Ingrese la distancia (km)):",0
txtiempo db "ingrece el tiempo en (Hrs): ",0
r db "Tu imc es: ",0
distancia dword ?
tiempo dword ?

.code

    main9 PROC    
       ;L�gica del Programa

       mov edx, offset txdistancia
       call writestring
       call readint
       mov distancia ,eax ; almacena el peso e68


       mov edx, offset txtiempo ; mensaje  estatura
       call writestring
       call readint
       mov tiempo,eax           ; almacena el valor de tiempo
      
        mov eax,distancia
        mov edx, 0
        div tiempo
        
        mov edx, offset r
        call writestring
        call writeint

      
		exit		
	main9 ENDP
	END main9
