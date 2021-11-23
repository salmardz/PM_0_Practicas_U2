TITLE obtener el mayor numero

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
r6 db "mayor N es:  ",0
mayor dword 1000

.code

    main7 PROC    
        ;L�gica del Programa

        mov edx, offset txnumero ; ingresa el total de repeticiones
        call writestring
        call readint
        mov ecx, EAX ; se almacena el valor el ecx la cantidad
        
        ciclo:
            mov edx, offset txn ; ingrese N segun la cantidad de repeticiones 
            call writestring
            dec ecx             ; decrementa a ecx -n >
            call crlf           ; deja una sencuencia
            cmp ecx, 0          ;compara ecx con 0
            ;
           ; jl salir   ; salta si es menor que el anterior asta que sea menor a la cantidad salir

      compara:
             call readint        ; ingresa el valor n
             cmp eax, mayor      ; compara si N es menor que mayor (1000)
             jg nmayor           ; si es mayor compara la siguiente 

             jmp ciclo          ; salta al siguitente dato
             nmayor:
             mov mayor, eax
             jmp ciclo          ; se compara con el siguiente dato hasta que no haiga mas 

        imprime:
        mov edx, offset r6
        call writestring
        call writeint

		exit		
	main7 ENDP
	END main7