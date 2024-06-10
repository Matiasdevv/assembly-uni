; Copiar N bytes contiguos de memoria a otro espacio de memoria. (0 <= N < 256)

from:           ; Param 1 (ZP): Dir DESDE donde se copia.
  LDA #$06
  STA $01       ; FROMH (High, pagina)
  LDA #$00 
  STA $00       ; FROML (Low, posicion)

to:             ; Param 2 (ZP): Dir HASTA donde se copia.
  LDA #$02 
  STA $03       ; TOH (High, pagina)
  LDA #$00 
  STA $02       ; TOL (Low, posicion)

size:           ; Param 3 (Y): Cantidad de bytes a copiar
  LDY #$84  

copymemn:        ; Rutina que copia la memoria  
  LDA ($00),Y       
  STA ($02),Y   
  DEY
  CPY #$FF
  BNE copymemn