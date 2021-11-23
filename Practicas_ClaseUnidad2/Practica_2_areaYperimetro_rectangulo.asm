TITLE Area y perimetro de un rectangulo

;.Obtenci�n del �rea y el per�metro
;de un rect�ngulo ingresando su base y altura.

;DESCRPICI�N
;
; Autore(s):
;      Catedratico:   Dr. Alejandro Garcia
;	   Alumno :       Rodr�guez Nu�ez Salma 

; Semestre: 8vo Semestre ISC
;FIN DESCRPICI�N
INCLUDE Irvine32.inc
.data
; �rea de Declaraci�n de Variables

altura dword 0
base dword 0
basei db "Ingrese base: ",0
alturai db "ingrese la altura : ", 0
perimetro db "el perimetro es : ", 0
area db "el area es : ", 0

.code


main1 PROC

;L�gica del Programa
mov edx, offset basei ;            
call writestring ;                 
call readint ;                     Captura el dato del usuario
mov base,eax ;                     Guarda la variable en un auxiliar

push eax ;							guarda el dato anterior en una pila

mov edx, offset alturai ;				
call writestring ;					
call readint ;						
mov altura,eax ;					guarda la varible


pop ebx ;							
mul ebx ;							multiplica eax por ebx

mov edx, offset area ;				 
call writestring ;					
call writedec ;						imprime lo que hay en ebx (la multiplicaci�n)

call crlf ;                        
mov eax, base ;                    base
mov ebx, altura ;                  altura
add eax, ebx ;                     eax y se realiza la suma
mov ebx, 2 ;                      
mul ebx ;                          El resultado se guardar� en eax
mov edx, offset perimetro ;           
call writestring ;                
call writedec ;                   imprime lo que hay en la multiplicaci�n


exit

main1 ENDP

END main1