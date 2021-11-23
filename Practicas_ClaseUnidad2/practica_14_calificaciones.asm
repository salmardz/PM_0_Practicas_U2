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
txnumero db "cantidad de numeros a ingresar:  ", 0
txn db "escriba el numero: ",0
a db "aprobado ",0
r db "reprobado ",0
.code

    main15 PROC    
        ;L�gica del Programa

        mov edx, offset txnumero ; ingresa el total de repeticiones
        call writestring
        call readint
        push ecx   ; decrementa a ecx
        mov ebx, 0; asta llegar a 0
        
        ciclo:
            mov edx, offset txn ; ingrese N segun la cantidad de repeticiones 
            call writestring
            call readint
            add ebx, eax ; suma ebx en eax

        loop ciclo ; salta a 0

            mov eax,ebx  ; mueve registro
            pop ebx ; almacena ebx
            mov edx,0 ; inicia en 0 evitando error 
            div ebx ; divide 
            cmp eax,7 ; compara con el valor 7 
        
        ; si es igual 7 

;        jae aprobado ; si es mayor a 7 o igual
        mov edx, offset a
;        jmp sig ; si es diferente pasa a la sig condicion 

        Reprobado:
        mov edx, offset r ; mensaje reprobado 
         call writestring
         call crlf
         call crlf

		exit		
	main15 ENDP
	END main15