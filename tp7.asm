 Se quiere almacenar el contenido del acumulador, que tiene un valor
 de 03, en la dirección de memoria 0300. Después, se le debe sumar 05
 a este valor y almacenar el resultado en la dirección de memoria 0301.


    lda #$03
    sta $0300

    adc #$05

    sta $0300


 Sequiere escribir un programa que realice las siguientes operaciones:
 15+10
 7-3

    sum:
        lda #$0f

        adc #$0a

    res:

        lda #$07

        sbc #03


Se requiere transferir el valor f1 del acumulador al registro X. Luego,
 debe disminuir en uno el valor del registro X y sumarle un número a
 elección. El resultado de esta operación debe guardarse en la
 dirección de memoria 0750.

 transfer:

    lda #$f1
    tax
    dex
    TXA
    adc #$02
    sta $0750


 Escriba un programa para pintar la pantalla de la siguiente forma:
 primer segmento color rojo
 segundo segmento color gris
 tercer segmento color verde
 cuarto segmento color celeste

printColors:
    ldx #$00
    lda #$fa
    jsr red
    lda #$ff
    jsr gray
    lda #$05
    jsr green
    lda #$f3
    jsr lightblue

brk

red:
    sta $200, x
    inx
    cpx #$00
    bne red
    rts

gray:
    sta $300, x
    inx
    cpx #$00
    bne gray
    rts

green:
    sta $400, x
    inx
    cpx #$00
    bne green
    rts

lightblue:
    sta $500, x
    inx
    cpx #$00
    bne lightblue
    rts



 Escriba un programa en el que en la mitad de la pantalla los colores
    cambien deforma aleatoria.

    printRandom:
    ldx #$00
    lda #$00
    jsr randomize

    brk

randomize:
    inx
    sta $200, X
    sta $300, X
    adc #$04
jmp randomize  


 7. Escriba un programa que compare el valor almacenado en el registro
 A con otro valor. Si ambos valores son iguales, el programa debe restar
 uno al valor del acumulador.

  comparador:

    lda #$0a
    
    ldx #$0a
    stx $0020
    ldy #$20
    cmp ($00), y
    beq:
    sbc #$01



 8. Suponiendo que se realiza un sorteo en el que 15 personas resultarán
 ganadoras, se necesita un código que obtenga dichos números y los
 almacene en memoria.


