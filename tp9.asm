;para el tp 9

;  3. Escribir un programa que utilice una subrutina para realizar la suma de dos
;  números.

sumNum:
    stx $04
    ldy #$04
    adc ($00), y
;  4. Escribir un programa que utilice una subrutina para dividir un número por
;  dos.
div:
    lda #$0a
    jsr dividir
brk

dividir:
    lsr
    RTS

;  5. Escribir un programa que utilice una subrutina para multiplicar dos
;  números.

init:
    lda #$04 ;multiplicando
    ldx #$04 ;multiplicador

    jsr multiplicar

    brk

multiplicar:  

    stx $0006 ;guardo en la zp
    sta $0007 ; lo mismo
    lda #$00 ; limpio el acumulador para que no entre sucio(?)
    ldy $0006 ; cargo la cantidad de veces a iterar
    jsr sum
    rts

sum:
    adc $0007 ;suma la cantidad pertinente
    dey
    bne sum
    beq: rts

;  6. Incorporar las subrutinas dentro de algunos de los programas realizados en
;  los prácticos 7 y 8






 