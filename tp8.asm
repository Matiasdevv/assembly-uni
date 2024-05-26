1. Se requiere comparar el valor almacenado en el registro A con otro valor. Si
ambos valores son iguales, se debe multiplicar por dos el valor del
acumulador.


    
   comparador:

lda #$03 ;almacenar valor

cmp #$03

beq:
  jsr _sum
  
brk

_sum:

adc a





2. Se desea realizar la multiplicación de dos números de 8 bits utilizando sumas.


        lda #$45

        sta $01
        adc $01


3. Escribe un programa que compare los valores de dos números, A y B. Si el
valor de A es mayor que el valor de B, entonces se debe desplazar el valor
de A un bit hacia la izquierda. Si el valor de A no es mayor que el valor de B,
entonces se debe incrementar el valor de B en 1.


        ldx #$09 ;valor a
        ldy #$ 10 ; valor b

        bpl:
            asl
        bmi:
            iny ;incremento valor b

        ;rol te los da vuelta


4. Escribe un programa que almacene los valores de un número, empezando
desde el número 10 y aumentando de 2 en 2, en direcciones de memoria
consecutivas. El almacenamiento debe continuar hasta que el valor del
registro Y sea menor que 30. El valor inicial de Y debe ser 60.

0001 1110
1e

60 = $38


    lda #$0a
    sta $00
    ldy #$38
    sty $0300
    ldy $#00
loop:
    adc #$02
    sta ($03), y
    iny
    cpx #$1e
    bmi loop 

    brk  


    





5. Escribe un programa que realice una cuenta regresiva del registro X,
iniciando con el valor 255. Los valores de X deben almacenarse endirecciones de memoria consecutivas, comenzando desde la dirección de
memoria $57.


6. Escribe un programa que tome el número $84 y ponga en 1 los bits 0 y 3.
Luego, compare el resultado con el número $85:
● Si el resultado es menor que $85, almacene el número resultante enla dirección de memoria $F0.
● Si el resultado es mayor o igual que $85, almacene el númeroresultante en la dirección de memoria F1.
