;************************************************
;*                                              *
;*               PC-1251   R O M                *
;*                                              *
;************************************************
;
                    .title  ROM-PC1251
                    .list   (bin)
                    .area   EXECUTABLE (ABS)
                    .org    0x0000

LBL0000:            WAIT    0xA0
                    LIA     0x01            ; Turn on LCD display.
                    LIP     0x5F            ;
                    EXAM                    ;
                    OUTC                    ;
LBL0008:            WAIT    0xA0
                    ANIM    0x00            ; Turn off LCD display.
                    OUTC
                    TEST    0x40            ; Test if we are coming out of a
                                            ;  reset of a powerup.
                    JPZ     0x44E9          ; If powerup, go to BASIC ROM.
                    WAIT    0xA0
                    TEST    0x40
                    JRZM    LBL0008
                    LIA     0x5C            ; Reset stack pointer.
                    STR                     ;
                    INA
                    CPIA    0x01
                    JRZP    LBL004B
                    LIP     0x5F
                    LIDP    LBL0000
                    LDD
                    CPIA    0x02
                    JRCP    LBL003E
                    JRZP    LBL0045
                    TSIA    0xF3
                    JRZP    LBL0047
                    LIA     0x11
                    EXAM
                    LII     0x02
                    LIA     0xFF
                    LIP     0x5C
                    FILM
                    OUTA
                    OUTB
                    OUTF
                    OUTC
LBL003E:            INCA
                    TEST    0x40
                    JRNZM   LBL003E
                    JRM     LBL0000
LBL0045:            LIA     0x60
LBL0047:            EXAM
                    OUTC
                    JRM     LBL003E
LBL004B:            LIDP    0xF800
                    LII     0xBF
                    LIA     0x00
                    FILD
                    LIA     0x01
                    CAL     wr_portc
                    LP      0x08
                    LII     0x4F
                    LIA     0x96
                    FILM
LBL005D:            LP      0x08
                    LII     0x4F
                    SRW
                    LII     0x23
                    LIA     0x03
                    PUSH
LBL0066:            LP      0x2F
                    LIQ     0x53
                    ADW
                    LOOP    LBL0066
                    PUSH
LBL006D:            LP      0x2F
                    LIQ     0x53
                    SBW
                    LOOP    LBL006D
                    LII     0x3F
                    LIDP    0xF800
                    LP      0x10
                    EXWD
                  LIDL  0x00
                  LP    0x10
                  MVWD
LBL007E:          TEST  0x40
                  JRZM  LBL0000
                  TEST  0x01
                  JRZM  LBL007E
                  LIJ   0x01
                  CAL   scan_keybd
                  JRNCM LBL007E
                  LP    0x04
                  CPIM  0x5E
                  JRNZM LBL007E
                  LIP   0x5F
                  LDM
                  ORIM  0x31
                  TSIA  0x10
                  JRZP  LBL009C
                  ANIM  0x21
LBL009C:          OUTC
                  JRM   LBL005D
; The high nibble of scratchpad byte $11 holds the state of the 4 BCD registers.
; Each time one is cleared one of the bits is also cleared.
MDL009F:          LP    0x11                ; Clear bit 4. BCD register
                  ANIM  0xFE                ; Xreg is now clear.
                  LP    0x20
clr_bcd:          LII   0x07
                  LIA   0x00
                  FILM
                  RTN
MDL00A9:          LP    0x11                ; Flag BCD register 1 clear.
                  ANIM  0xFD
                  LP    0x28                ; Clear Yreg BCD register.
                  JRM   clr_bcd
                  LP    0x11                ; Flag BCD register 2 clear.
                  ANIM  0xFB
                  LP    0x30
                  JRM   clr_bcd             ; Clear Zreg BCD register.
MDL00B5:          LP    0x39
                  JRP   LBL00B9
MDL00B8:          LP    0x21
LBL00B9:          ANIM  0xF0
                  INCP
                  LIA   0x00
                  LII   0x05
                  FILM
                  RTN
MDL00C2:          LP    0x29
                  JRM   LBL00B9
MDL00C5:          LP    0x31
                  JRM   LBL00B9
MDL00C8:          LP    0x20
LBL00C9:          ANIM  0x00
                  INCP
                  ANIM  0x0F
                  RTN
MDL00CF:          LP    0x28
                  JRM   LBL00C9
MDL00D2:          LP    0x20
LBL00D3:          LII   0x07
                  SRW
                  RTN
                  LP    0x30
                  JRM   LBL00D3
                  LP    0x38
                  JRM   LBL00D3
MDL00DD:          LP    0x22
                  LII   0x05
                  SRW
                  LP    0x21
LBL00E2:          LDM
                  ANIM  0xF0
                  SWP
                  ANIA  0xF0
                  INCP
                  ORMA
                  RTN
MDL00EB:          LP    0x2A
                  LII   0x05
                  SRW
                  LP    0x29
                  JRM   LBL00E2
MDL00F2:          LP    0x3A
                  LII   0x05
                  SRW
                  LP    0x39
                  JRM   LBL00E2
MDL00F9:          LP    0x27
LBL00FA:          LII   0x07
                  SLW
                  RTN
MDL00FE:          LP    0x37
                  JRM   LBL00FA
                  LP    0x3F
                  JRM   LBL00FA
MDL0104:          LP    0x22
LBL0105:          LDM
                  SWP
                  ANIA  0x0F
                  DECP
                  ANIM  0xF0
                  ORMA
                  LDP
                  ADIA  0x06
                  STP
                  LII   0x05
                  SLW
                  RTN
MDL0115:          LP    0x2A
                  JRM   LBL0105
MDL0118:          LP    0x3A
                  JRM   LBL0105
MDL011B:          LP    0x21
                  TSIM  0x0F
                  JRNZP LBL012D
                  LP    0x22
                  LIA   0x05
LBL0123:          CPIM  0x00
                  JRNZP LBL012D
                  INCP
                  DECA
                  JRNCM LBL0123
                  SC
                  RTN
LBL012D:          RC
                  RTN
MDL012F:          LP    0x11
                  ANIM  0xFD
                  LP    0x28
                  LII   0x07
                  LIA   0x00
                  FILM
                  LP    0x2A
                  ORIM  0x10
                  RTN
MDL013C:          LP    0x11
                  TSIM  0x01
                  JRNZP LBL0144
                  ORIM  0x01
                  RTN
LBL0144:          ANIM  0xFE
                  RTN
MDL0147:          RC
                  LP    0x11
                  LDM
                  SR
                  ANIA  0x01
                  LIB   0x00
                  LP    0x03
                  ADCM
                  LDM
                  ANIA  0x01
                  LP    0x11
                  ANIM  0xFE
                  ORMA
                  RTN
MDL0159:          LP    0x27
                  LII   0x07
                  LIQ   0x2F
                  ADW
                  RC
                  RTN
MDL0161:          LP    0x29
                  LDM
                  ANIA  0x0F
                  PUSH
                  ANIM  0xF0
                  LP    0x21
                  LIQ   0x29
                  LII   0x01
                  ADW
                  POP
                  LP    0x29
                  ORMA
                  RTN
MDL0172:          LP    0x29
                  LDM
                  ANIA  0xF0
                  LP    0x2F
                  LIQ   0x27
LBL0179:          LII   0x06
                  ADW
                  INCP
                  ANIM  0x0F
                  ORMA
                  RC
                  RTN
MDL0182:          LP    0x21
                  LDM
                  ANIA  0xF0
                  LP    0x27
                  LIQ   0x2F
                  JRM   LBL0179
MDL018B:          LP    0x21
                  LDM
                  ANIM  0x0F
                  ANIA  0xF0
                  PUSH
                  LP    0x29
                  LDM
                  ANIA  0xF0
                  LP    0x21
                  ORMA
                  LP    0x27
                  LIQ   0x2F
LBL019B:          LII   0x06
                  SBW
                  POP
                  INCP
                  ANIM  0x0F
                  ORMA
                  RTN
MDL01A4:          LP    0x29
                  LDM
                  ANIM  0x0F
                  ANIA  0xF0
                  PUSH
                  LP    0x21
                  LDM
                  ANIA  0xF0
                  LP    0x29
                  ORMA
                  LP    0x2F
                  LIQ   0x27
                  JRM   LBL019B
MDL01B6:          LP    0x21
                  LDM
                  ANIA  0x0F
                  ANIM  0xF0
                  LP    0x29
                  LIQ   0x21
                  LII   0x01
                  SBW
                  LP    0x21
                  ORMA
                  RTN
MDL01C5:          LP    0x29
LBL01C6:          LII   0x01
                  LIA   0x10
                  ADN
                  RC
                  RTN
MDL01CD:          LP    0x21
                  JRM   LBL01C6
MDL01D0:          LP    0x39
LBL01D1:          LII   0x01
                  LIA   0x10
                  SBN
                  RTN
MDL01D7:          LP    0x29
                  JRM   LBL01D1
MDL01DA:          LP    0x21
                  JRM   LBL01D1
                  LP    0x21
LBL01DE:          LDM
                  ANIM  0x0F
                  ANIA  0xF0
                  EXAB
                  DECP
                  LIA   0x00
                  EXAM
                  INCP
                  LII   0x01
                  LIQ   0x03
                  SBW
                  RC
                  RTN
MDL01F0:          LP    0x29
                  JRM   LBL01DE
                  LP    0x30
                  JRP   LBL0200
MDL01F6:          LP    0x11
                  ANIM  0xF7
                  TSIM  0x01
                  JRZP  LBL01FF
                  ORIM  0x08
LBL01FF:          LP    0x38
LBL0200:          LIQ   0x20
LBL0202:          LII   0x07
                  MVW
                  RTN
                  LP    0x11
                  ANIM  0xFE
                  TSIM  0x08
                  JRZP  LBL020F
                  ORIM  0x01
LBL020F:          LP    0x20
                  LIQ   0x38
                  JRM   LBL0202
MDL0214:          LP    0x21
                  LDM
                  ANIA  0xF0
                  LP    0x39
                  ANIM  0x0F
                  ORMA
                  LP    0x20
                  LDM
                  LP    0x38
                  EXAM
                  RTN
MDL0221:          LP    0x11
                  ANIM  0xFD
                  TSIM  0x01
                  JRZP  LBL022A
                  ORIM  0x02
LBL022A:          LP    0x28
                  LIQ   0x20
                  JRM   LBL0202
MDL022F:          LP    0x11
                  ANIM  0xFE
                  TSIM  0x02
                  JRZP  LBL0238
                  ORIM  0x01
LBL0238:          LP    0x20
LBL0239:          LIQ   0x28
                  JRM   LBL0202
MDL023D:          LP    0x30
                  JRM   LBL0239
MDL0240:          LP    0x21
                  LDM
                  DECP
                  LIQ   0x28
                  LII   0x01
                  MVW
                  DECP
                  ANIM  0xF0
                  ANIA  0x0F
                  ORMA
                  RTN
MDL024F:          LP    0x21
                  LDM
                  LIQ   0x29
                  LII   0x06
                  MVW
                  LP    0x21
                  ANIM  0x0F
                  ANIA  0xF0
                  ORMA
                  RTN
MDL025D:          LP    0x21
                  LDM
                  ANIA  0xF0
                  LP    0x29
                  ANIM  0x0F
                  ORMA
                  LP    0x20
                  LDM
                  LP    0x28
                  EXAM
                  RTN
MDL026A:          LP    0x11
                  ANIM  0xFD
                  TSIM  0x08
                  JRZP  LBL0273
                  ORIM  0x02
LBL0273:          LP    0x28
                  LIQ   0x38
                  JRM   LBL0202
MDL0278:          LP    0x11
                  ANIM  0xF7
                  TSIM  0x02
                  JRZP  LBL0281
                  ORIM  0x08
LBL0281:          LP    0x38
                  JRM   LBL0239
MDL0284:          LP    0x11
                  LDM
                  SR
                  ANIM  0xFC
                  ANIA  0x01
                  ORMA
                  SL
                  SL
                  ANIA  0x02
                  ORMA
                  LP    0x20
                  LIQ   0x28
                  LII   0x07
                  EXW
                  RTN
MDL0298:          LP    0x11
                  LDM
                  ANIM  0xFA
                  PUSH
                  SR
                  SR
                  ANIA  0x01
                  ORMA
                  POP
                  SL
                  SL
                  ANIA  0x04
                  ORMA
                  RTN
MDL02A9:          LP    0x21
                  LDM
                  ANIM  0x0F
                  ANIA  0xF0
                  LP    0x0A
                  EXAM
                  LP    0x29
                  LDM
                  ANIM  0x0F
                  ANIA  0xF0
                  SWP
                  LP    0x0A
                  ORMA
                  RTN
MDL02BB:          LP    0x0A
                  LDM
                  ANIA  0xF0
                  LP    0x21
                  ANIM  0x0F
                  ORMA
                  LP    0x0A
                  LDM
                  SWP
                  ANIA  0xF0
                  LP    0x29
                  ANIM  0x0F
                  ORMA
                  RTN
MDL02CD:          LP    0x27
                  LIQ   0x2F
                  LII   0x06
                  ADW
                  RTN
MDL02D4:          LP    0x2F
                  LIQ   0x27
                  LII   0x06
                  ADW
                  RTN
MDL02DB:          LP    0x2F
                  LIQ   0x27
                  LII   0x06
                  SBW
                  RTN
MDL02E2:          LP    0x27
                  LIQ   0x2F
                  LII   0x06
                  SBW
                  RTN
MDL02E9:          CAL   MDL013C
MDL02EB:          LP    0x22
                  TSIM  0xF0
                  JRZP  LBL032B
                  LP    0x2A
                  TSIM  0xF0
                  JRZP  LBL032D
                  CAL   MDL01B6
LBL02F7:          LP    0x28
                  TSIM  0x80
                  JRZP  LBL0302
                  CAL   MDL00EB
                  CAL   MDL01C5
                  JRM   LBL02F7
LBL0302:          CAL   MDL01D7
                  JRCP  LBL030C
                  CAL   MDL00DD
                  CAL   MDL01CD
                  JRM   LBL02F7
LBL030C:          CAL   MDL0147
                  LP    0x11
                  TSIM  0x01
                  JRNZP LBL031B
                  CAL   MDL0172
LBL0315:          CAL   MDL024F
                  CAL   MDL0147
                  JRP   LBL032D
LBL031B:          CAL   MDL01A4
                  JRCP  LBL0323
                  CAL   MDL013C
                  JRM   LBL0315
LBL0323:          CAL   MDL024F
                  CAL   MDL00C2
                  CAL   MDL01A4
                  JRM   LBL0315
LBL032B:          CAL   MDL022F
LBL032D:          CAL   MDL0330
                  RTN
MDL0330:          CAL   MDL011B
                  JRCP  LBL034A
                  LP    0x21
                  TSIM  0x0F
                  JRZP  LBL033F
                  CAL   MDL00DD
                  CAL   MDL01CD
                  JRP   LBL034C
LBL033F:          LP    0x22
                  TSIM  0xF0
                  JRNZP LBL034C
                  CAL   MDL0104
                  CAL   MDL01DA
                  JRM   LBL033F
LBL034A:          CAL   MDL009F
LBL034C:          LP    0x20
                  TSIM  0xF0
                  JRZP  LBL0368
                  LDM
                  ANIA  0xF0
                  CPIA  0x10
                  JPZ   LBL0B41
                  CPIA  0x80
                  JRZP  LBL0366
                  TSIM  0x0F
                  JRNZP LBL0368
                  INCP
                  TSIM  0xF0
                  JRNZP LBL0368
LBL0366:          CAL   MDL009F
LBL0368:          RTN
MDL0369:          CAL   MDL0221
MDL036B:          CAL   MDL0161
                  CAL   MDL0147
                  CAL   MDL0104
                  CAL   MDL04B4
                  CAL   MDL02A9
                  LP    0x09
                  LIA   0x0C
                  EXAM
                  CAL   MDL00B8
LBL037B:          LP    0x09
                  LDM
                  RC
                  SR
                  JRCP  LBL0388
                  ADIA  0x31
                  STP
                  LDM
                  SWP
                  JRP   LBL038C
LBL0388:          ADIA  0x31
                  STP
                  LDM
LBL038C:          ANIA  0x0F
                  LP    0x08
                  EXAM
LBL0390:          DECK
                  JRCP  LBL0397
                  CAL   MDL02CD
                  JRM   LBL0390
LBL0397:          DECL
                  JRZP  LBL039E
                  CAL   MDL00DD
                  JRM   LBL037B
LBL039E:          CAL   MDL02BB
                  CAL   MDL0330
                  RTN
MDL03A3:          CAL   MDL012F
MDL03A5:          CAL   MDL01CD
                  CAL   MDL01B6
                  CAL   MDL0240
                  CAL   MDL02A9
                  CAL   MDL00C5
                  LP    0x11
                  ORIM  0x10
                  LP    0x08
                  LIA   0x31
                  EXAM
                  LIA   0x31
                  STP
                  LDM
LBL03BA:          SWP
                  LP    0x09
                  EXAM
LBL03BD:          CAL   MDL02DB
                  JRCP  LBL03CB
                  LP    0x09
                  ADIM  0x10
                  JRNCM LBL03BD
                  CAL   MDL02BB
                  JP    LBL0B41
LBL03CB:          CAL   MDL02D4
                  CAL   MDL0115
                  LP    0x11
                  TSIM  0x10
                  JRZP  LBL03EB
                  ANIM  0xEF
                  LP    0x09
                  LDM
                  SWP
                  PUSH
                  LP    0x08
                  LDM
                  STP
                  POP
                  EXAM
                  LP    0x08
                  ADIM  0x01
                  CPIM  0x38
                  JRZP  LBL03F2
                  LP    0x09
                  ANIM  0x00
                  JRM   LBL03BD
LBL03EB:          LP    0x11
                  ORIM  0x10
                  LP    0x09
                  LDM
                  JRM   LBL03BA
LBL03F2:          CAL   MDL02BB
                  CAL   MDL03FB
                  CAL   MDL0147
                  CAL   MDL0330
                  RTN
MDL03FB:          LP    0x21
                  LDM
                  LIQ   0x31
                  LII   0x06
                  MVW
                  LP    0x21
                  ANIM  0x0F
                  ANIA  0xF0
                  ORMA
                  RTN
MDL0409:          LP    0x11
                  TSIM  0x01
                  JPNZ  LBL0B41
                  CAL   MDL04B4
                  CAL   MDL00D2
                  CAL   MDL0221
                  CAL   MDL0159
                  CAL   MDL0159
                  CAL   MDL0159
                  CAL   MDL0159
                  LP    0x11
                  ANIM  0xDF
                  LP    0x21
                  TSIM  0x0F
                  JRZP  LBL0427
                  CAL   MDL00FE
LBL0427:          LP    0x20
                  TSIM  0xF0
                  JRZP  LBL0430
                  ANIM  0x0F
                  ORIM  0x90
LBL0430:          CAL   MDL03FB
                  CAL   MDL00C2
                  LP    0x2A
                  ORIM  0x10
                  LP    0x11
                  ANIM  0xEF
                  LP    0x08
                  LIA   0x2A
                  EXAM
                  CAL   MDL01DA
                  CAL   MDL02A9
LBL0442:          CAL   MDL02E2
                  JRCP  LBL045E
LBL0446:          LP    0x08
                  LDM
                  SBIA  0x29
                  LP    0x00
                  EXAM
                  LP    0x08
                  LDM
                  LP    0x11
                  TSIM  0x10
                  JRNZP LBL0459
                  STP
                  LIA   0x20
LBL0456:          ADN
                  JRM   LBL0442
LBL0459:          STP
                  LIA   0x02
                  JRM   LBL0456
LBL045E:          LP    0x11
                  TSIM  0x20
                  JRZP  LBL046A
                  ANIM  0xDF
                  LP    0x21
                  ANIM  0x0F
                  JRM   LBL0446
LBL046A:          CAL   MDL02CD
                  LP    0x08
                  LDM
                  LP    0x11
                  TSIM  0x10
                  JRNZP LBL0478
                  STP
                  SBIM  0x10
                  JRP   LBL047B
LBL0478:          STP
                  SBIM  0x01
LBL047B:          LP    0x11
                  TSIM  0x10
                  JRZP  LBL0497
                  ANIM  0xEF
                  INCK
                  LP    0x08
                  CPIM  0x30
                  JRNZP LBL0499
                  CAL   MDL024F
                  CAL   MDL02CD
                  CAL   MDL02CD
                  CAL   MDL02CD
                  CAL   MDL02CD
                  CAL   MDL02BB
                  CAL   MDL0330
                  RTN
LBL0497:          ORIM  0x10
LBL0499:          LP    0x21
                  TSIM  0x0F
                  JRZP  LBL04A1
                  LP    0x11
                  ORIM  0x20
LBL04A1:          CAL   MDL0104
                  LP    0x08
                  LDM
                  LP    0x11
                  TSIM  0x10
                  JRNZP LBL04AF
                  STP
                  ORIM  0x10
                  JRM   LBL0442
LBL04AF:          STP
                  ORIM  0x01
                  JRM   LBL0442
MDL04B4:          LP    0x31
                  LDM
                  LIQ   0x21
                  LII   0x06
                  MVW
                  LP    0x31
                  ANIM  0x0F
                  ANIA  0xF0
                  ORMA
                  RTN
MDL04C2:          LP    0x11
                  ORIM  0x40
                  JRP   LBL04CA
MDL04C7:          LP    0x11
                  ANIM  0xBF
LBL04CA:          LP    0x11
                  TSIM  0x01
                  JRNZP LBL04D4
                  LP    0x22
                  TSIM  0xF0
                  JRNZP LBL04D7
LBL04D4:          JP    LBL0B41
LBL04D7:          LP    0x11
                  ANIM  0x7F
                  LP    0x20
                  TSIM  0xF0
                  JRZP  LBL04E4
                  LP    0x11
                  ORIM  0x80
                  CAL   MDL03A3
LBL04E4:          CAL   MDL0214
                  CAL   MDL00C8
                  LP    0x22
                  SBIM  0x10
                  CAL   MDL0330
                  CAL   MDL025D
                  CAL   MDL01F0
                  CAL   MDL06FE
                  CAL   MDL01DA
                  CAL   MDL00A9
                  LP    0x38
                  LDM
                  ANIA  0x0F
                  LP    0x29
                  ANIM  0xF0
                  ORMA
                  LP    0x39
                  LDM
                  ANIA  0xF0
                  LP    0x2A
                  ANIM  0x0F
                  ORMA
                  CAL   MDL0330
                  CAL   MDL0284
                  CAL   MDL0330
                  CAL   MDL02EB
                  LP    0x11
                  TSIM  0x80
                  JRZP  LBL0518
                  ANIM  0x7F
                  CAL   MDL013C
LBL0518:          LP    0x11
                  TSIM  0x40
                  JRZP  LBL0525
                  ANIM  0xBF
                  CAL   MDL0960
                  CAL   MDL0284
                  CAL   MDL03A5
LBL0525:          RTN
MDL0526:          CAL   MDL0960
                  CAL   MDL036B
MDL052A:          LP    0x20
                  TSIM  0xF0
                  JRNZP LBL0555
                  CAL   MDL01DA
                  JRCP  LBL0539
                  CAL   MDL01DA
                  JRNCP LBL0565
                  CAL   MDL0104
LBL0539:          CAL   MDL00C8
                  LP    0x21
                  LDM
                  ANIM  0xF0
                  LP    0x20
                  ANIM  0xF0
                  ANIA  0x0F
                  ORMA
                  LP    0x22
                  LDM
                  ANIM  0x0F
                  LP    0x21
                  ANIM  0x0F
                  ANIA  0xF0
                  ORMA
                  CAL   MDL0104
                  CAL   MDL00CF
                  JRP   LBL055D
LBL0555:          CAL   MDL025D
                  CAL   MDL01F0
                  CAL   MDL01D7
                  CAL   MDL00C8
LBL055D:          CAL   MDL0702
                  CAL   MDL024F
                  CAL   MDL00DD
                  JRP   LBL056D
LBL0565:          CAL   MDL013C
                  LP    0x20
                  LII   0x07
                  LIA   0x00
                  FILM
LBL056D:          LP    0x11
                  TSIM  0x01
                  JRZP  LBL0576
                  ANIM  0xFE
                  CAL   MDL03A3
LBL0576:          RTN
MDL0577:          LP    0x10
                  ORIM  0x01
                  JRP   MDL0581
MDL057C:          LP    0x10
                  ORIM  0x02
                  JRP   MDL0581
MDL0581:          CAL   MDL0330
                  CAL   MDL0298
                  LP    0x11
                  ANIM  0xFE
                  LP    0x10
                  TSIM  0x01
                  JRZP  LBL0591
                  ANIM  0xFE
                  JRP   LBL05AB
LBL0591:          CAL   MDL01F6
                  CAL   MDL0369
                  CAL   MDL012F
                  CAL   MDL02E9
                  CAL   MDL0409
                  CAL   MDL026A
                  LP    0x10
                  TSIM  0x02
                  JRZP  LBL05A4
                  CAL   MDL0284
LBL05A4:          LP    0x22
                  TSIM  0xF0
                  JRZP  LBL05DA
                  CAL   MDL03A5
LBL05AB:          LP    0x22
                  TSIM  0xF0
                  JRZP  LBL05E2
                  LP    0x10
                  ANIM  0xFB
                  LP    0x20
                  TSIM  0xF0
                  JRNZP LBL05BD
                  CAL   MDL03A3
                  LP    0x10
                  ORIM  0x04
LBL05BD:          CAL   MDL025D
                  CAL   MDL01F0
                  CAL   MDL0706
                  CAL   MDL01CD
                  CAL   MDL0330
                  LP    0x10
                  TSIM  0x04
                  JRZP  LBL05E2
                  ANIM  0xFB
                  CAL   MDL00A9
                  LP    0x2A
                  ORIM  0x90
                  DECP
                  ORIM  0x10
                  CAL   MDL02E9
                  JRP   LBL05E2
LBL05DA:          CAL   MDL009F
                  LP    0x22
                  ORIM  0x90
                  DECP
                  ORIM  0x10
LBL05E2:          CAL   MDL0298
                  LP    0x10
                  TSIM  0x02
                  JRZP  LBL05FA
                  ANIM  0xFD
                  LP    0x11
                  TSIM  0x01
                  JRZP  LBL05FA
                  CAL   MDL00A9
                  LP    0x2A
                  ORIM  0x18
                  DECP
                  ORIM  0x20
                  CAL   MDL02EB
LBL05FA:          CAL   MDL0604
                  JRCP  LBL05FF
                  RTN
LBL05FF:          CAL   MDL0284
                  CAL   MDL03A5
                  RTN
MDL0604:          CAL   MDL00A9
                  LIDP  0xF83D
                  TSID  0x04
                  JRNZP LBL060F
                  RC
                  RTN
LBL060F:          LIDL  0x3C
                  TSID  0x04
                  JRNZP LBL0619
                  CAL   MDL0974
                  SC
                  RTN
LBL0619:          LP    0x28
                  ORIM  0x99
                  INCP
                  ORIM  0x90
                  INCP
                  ORIM  0x90
                  SC
                  RTN
MDL0624:          LP    0x10
                  ORIM  0x01
                  JRP   MDL0629
MDL0629:          LP    0x0F
                  ANIM  0x00
                  JRP   LBL0635
MDL062E:          LP    0x11
                  ANIM  0xFE
                  LP    0x0F
                  LIA   0x01
                  EXAM
LBL0635:          CAL   MDL0604
                  JRNCP LBL0646
                  CAL   MDL036B
                  LP    0x27
                  LII   0x06
                  LIA   0x06
                  ADN
                  LP    0x27
                  ANIM  0xF0
                  CAL   MDL0330
LBL0646:          CAL   MDL0214
                  CAL   MDL0298
                  LP    0x11
                  ANIM  0xFE
                  LP    0x20
                  LDM
                  ANIA  0xF0
                  CPIA  0x90
                  JRNZP LBL065A
                  LP    0x0E
                  ANIM  0x00
                  JRP   LBL06AD
LBL065A:          TSIM  0x0F
                  JRZP  LBL0661
                  JP    LBL0B41
LBL0661:          CAL   MDL00A9
                  LP    0x29
                  ORIM  0x36
                  CAL   MDL00C8
LBL0668:          CAL   MDL06F7
                  JRCP  LBL0671
                  LP    0x0E
                  ADIM  0x01
                  JRM   LBL0668
LBL0671:          CAL   MDL0159
                  LP    0x29
                  LDM
                  ANIA  0x0F
                  CPIA  0x09
                  JRZP  LBL068D
                  CAL   MDL01D0
                  JRCP  LBL0683
                  CAL   MDL00F9
                  JRM   LBL0668
LBL0683:          CAL   MDL00A9
                  LP    0x29
                  ORIM  0x09
                  LP    0x0E
                  ANIM  0x00
                  JRM   LBL0668
LBL068D:          LP    0x0F
                  LDM
                  LP    0x0E
                  ADM
                  LDM
                  LP    0x0F
                  EXAM
                  LP    0x2A
                  ORIM  0x50
                  DECP
                  ANIM  0xF0
                  ORIM  0x04
                  CAL   MDL018B
                  JRNCP LBL06A4
                  CAL   MDL0182
                  JRP   LBL06AB
LBL06A4:          CAL   MDL01A4
                  CAL   MDL024F
                  LP    0x0F
                  ADIM  0x01
LBL06AB:          CAL   MDL0330
LBL06AD:          CAL   MDL01DA
                  CAL   MDL025D
                  CAL   MDL01F0
                  CAL   MDL070A
                  CAL   MDL0284
                  CAL   MDL00C8
                  CAL   MDL03A5
                  CAL   MDL0298
                  LP    0x10
                  TSIM  0x01
                  JRZP  LBL06D3
                  ANIM  0xFE
                  LP    0x0F
                  TSIM  0x01
                  JRZP  LBL06CB
                  CAL   MDL03A3
LBL06CB:          LP    0x0E
                  TSIM  0x01
                  JRZP  LBL06D2
                  CAL   MDL013C
LBL06D2:          RTN
LBL06D3:          CAL   MDL01F6
                  CAL   MDL0369
                  CAL   MDL012F
                  CAL   MDL02EB
                  CAL   MDL0409
                  CAL   MDL026A
                  LP    0x0F
                  TSIM  0x01
                  JRZP  LBL06ED
                  LP    0x28
                  LII   0x07
                  LIA   0x00
                  FILM
                  LP    0x2A
                  ORIM  0x10
LBL06ED:          LP    0x0E
                  TSIM  0x02
                  JRZP  LBL06F4
                  CAL   MDL013C
LBL06F4:          CAL   MDL03A5
                  RTN
MDL06F7:          LP    0x27
                  LIQ   0x2F
                  LII   0x07
                  SBW
                  RTN
MDL06FE:          LIA   0x10
                  JRP   LBL070C
MDL0702:          LIA   0xC0
                  JRP   LBL070C
MDL0706:          LIA   0x00
                  JRP   LBL070C
MDL070A:          LIA   0x60
LBL070C:          LP    0x10
                  ANIM  0x0F
                  ORMA
                  CAL   MDL00B5
                  LP    0x0D
                  ANIM  0x00
                  CAL   MDL00C2
                  LP    0x10
                  TSIM  0x40
                  JRNZP LBL0776
                  LP    0x2A
                  ORIM  0x10
LBL071F:          LP    0x10
                  TSIM  0x10
                  JRNZP LBL072E
                  CAL   MDL0816
                  SWP
                  LP    0x30
                  ANIM  0x0F
                  ORMA
                  ADM
                  JRP   LBL0735
LBL072E:          CAL   MDL07F1
                  SWP
                  LP    0x30
                  ANIM  0x0F
                  ORMA
LBL0735:          CAL   MDL02A9
LBL0737:          LP    0x10
                  TSIM  0x10
                  JRNZP LBL073E
                  CAL   MDL04B4
LBL073E:          CAL   MDL02E2
                  JRNCP LBL074D
                  CAL   MDL02CD
                  CAL   MDL02BB
                  LP    0x0D
                  CPIM  0x0C
                  JRNZP LBL0768
                  JRP   LBL082C
LBL074D:          LP    0x3F
                  ADIM  0x01
                  LP    0x10
                  TSIM  0x40
                  JRNZM LBL073E
                  LP    0x10
                  TSIM  0x10
                  JRZP  LBL075C
                  CAL   MDL0789
LBL075C:          LP    0x30
                  LDM
                  ANIA  0xF0
                  CPIA  0xE0
                  JRZM  LBL0737
                  CAL   MDL0797
                  JRM   LBL0737
LBL0768:          LP    0x0D
                  ADIM  0x01
                  CAL   MDL01C5
                  CAL   MDL0118
                  CAL   MDL0104
                  LP    0x10
                  TSIM  0x40
                  JRZM  LBL071F
LBL0776:          LP    0x10
                  TSIM  0x20
                  JRNZP LBL0781
                  CAL   MDL07F1
                  CAL   MDL08B2
                  JRP   LBL0785
LBL0781:          CAL   MDL0816
                  CAL   MDL08DE
LBL0785:          CAL   MDL02A9
                  JRM   LBL073E
MDL0789:          LP    0x31
                  LDM
                  LIQ   0x29
                  LII   0x06
                  MVW
                  LP    0x31
                  ANIM  0x0F
                  ANIA  0xF0
                  ORMA
                  RTN
MDL0797:          LP    0x10
                  ORIM  0x08
                  JRP   LBL079F
MDL079C:          LP    0x10
                  ANIM  0xF7
LBL079F:          LP    0x31
                  LDM
                  ANIM  0x0F
                  ANIA  0xF0
                  PUSH
                  LP    0x30
                  TSIM  0x10
                  JRZP  LBL07AF
                  LP    0x31
                  LII   0x06
                  SRW
LBL07AF:          LII   0x06
                  LP    0x30
                  LDM
                  SWP
                  ANIA  0x0F
                  RC
                  SR
                  LP    0x00
                  SBM
                  LDM
                  ADIA  0x31
                  STQ
                  LP    0x29
                  LDM
                  ANIA  0xF0
                  PUSH
                  LP    0x10
                  TSIM  0x08
                  JRZP  LBL07CC
                  LP    0x2F
                  ADW
                  JRP   LBL07CE
LBL07CC:          LP    0x2F
                  SBW
LBL07CE:          JRNCP LBL07E8
                  LDP
                  SBIA  0x29
                  LP    0x00
                  EXAM
                  LDM
                  ADIA  0x29
                  LP    0x10
                  TSIM  0x08
                  JRZP  LBL07E4
                  STP
                  LIA   0x01
                  ADN
                  JP    LBL07E8
LBL07E4:          STP
                  LIA   0x01
                  SBN
LBL07E8:          POP
                  LP    0x29
                  ANIM  0x0F
                  ORMA
                  POP
                  LP    0x31
                  ORMA
                  RTN
MDL07F1:          LP    0x28
                  TSIM  0xF0
                  JRNZP LBL0813
                  LDM
                  ANIA  0x0F
                  CPIA  0x01
                  JRNZP LBL0809
                  LP    0x29
                  LDM
                  ANIA  0xF0
                  CPIA  0x30
                  JRNCP LBL0813
                  SWP
                  ADIA  0x0A
                  RTN
LBL0809:          CPIA  0x00
                  JRNZP LBL0813
                  LP    0x29
                  LDM
                  SWP
                  ANIA  0x0F
                  RTN
LBL0813:          LIA   0x0E
                  RTN
MDL0816:          LP    0x28
                  TSIM  0xF0
                  JRNZP LBL0829
                  TSIM  0x0F
                  JRNZP LBL0829
                  LP    0x29
                  LDM
                  SWP
                  ANIA  0x0F
                  CPIA  0x08
                  JRNCP LBL0829
                  RTN
LBL0829:          LIA   0x07
                  RTN
LBL082C:          CAL   MDL00B8
                  LP    0x10
                  TSIM  0x40
                  JRZP  LBL0886
                  CAL   MDL00C2
                  LP    0x29
                  ORIM  0x01
LBL0838:          LP    0x10
                  TSIM  0x80
                  JRZP  LBL0846
                  CAL   MDL07F1
                  SWP
                  LP    0x30
                  ANIM  0x0F
                  ORMA
                  JRP   LBL084E
LBL0846:          CAL   MDL0816
                  SWP
                  LP    0x30
                  ANIM  0x0F
                  ORMA
                  ADM
LBL084E:          LP    0x3F
                  LDM
                  ANIA  0xF0
                  ANIM  0x0F
                  SBIM  0x01
                  ANIM  0x0F
                  ORMA
                  JRCP  LBL0897
                  LP    0x10
                  TSIM  0x40
                  JRNZP LBL0864
                  CAL   MDL0182
                  JRM   LBL084E
LBL0864:          LP    0x10
                  TSIM  0x80
                  JRZP  LBL086D
                  CAL   MDL0789
                  JRP   LBL0871
LBL086D:          CAL   MDL04B4
                  CAL   MDL0182
LBL0871:          LP    0x30
                  LDM
                  ANIA  0xF0
                  CPIA  0xE0
                  JRZM  LBL084E
                  LP    0x10
                  TSIM  0x80
                  JRZP  LBL0882
                  CAL   MDL0797
                  JRM   LBL084E
LBL0882:          CAL   MDL079C
                  JRM   LBL084E
LBL0886:          LP    0x10
                  TSIM  0x10
                  JRZP  LBL0891
                  CAL   MDL07F1
                  CAL   MDL08B2
                  JRM   LBL084E
LBL0891:          CAL   MDL0816
                  CAL   MDL08DE
                  JRM   LBL084E
LBL0897:          LP    0x0D
                  SBIM  0x01
                  JRCP  LBL08AE
                  CAL   MDL01D7
                  CAL   MDL00F2
                  LP    0x10
                  TSIM  0x80
                  JRNZP LBL08A7
                  CAL   MDL00DD
LBL08A7:          LP    0x10
                  TSIM  0x40
                  JRZM  LBL0886
                  JRM   LBL0838
LBL08AE:          LP    0x10
                  ANIM  0x0F
                  RTN
MDL08B2:          CPIA  0x0D
                  JRCP  LBL08B8
                  LIA   0x0C
LBL08B8:          EXAB
                  LP    0x05
                  LIA   0x08
                  EXAM
                  LP    0x04
                  LIA   0xE8
                  EXAM
                  EXAB
                  LIB   0x00
                  LP    0x03
                  ADM
                  ADM
                  ADM
                  ADM
                  ADM
LBL08CA:          ADM
                  EXAB
                  LIB   0x00
                  LP    0x04
                  ADB
                  LIQ   0x04
                  LP    0x02
                  LIJ   0x01
                  MVB
                  LP    0x2A
                  LII   0x05
                  RST
                  LP    0x29
                  ANIM  0xF0
                  RTN
MDL08DE:          ADIA  0x0D
                  CPIA  0x14
                  JRCM  LBL08B8
                  LIA   0x13
                  JRM   LBL08B8
                  STP
                  LIDP  0x2999
                  READ
                  ANIA  0x41
                  JRZM  LBL08CA
                  LP    0x05
                  SBB
LBL08F3:          LP    0x02
                  DECA
                  LDQ
                  RTN
                  RTN
                    LP      0x02
LBL08F9:            ANIA    0x43
                    INCI
                    .DB      0x77
                    ORMA
                    LP      0x13
LBL08FF:            EXWD
                    DECA
                    INCA
                    .DB     0x72
                    .DB     0x76
                    LP      0x06
LBL0905:          DYS
                  DECA
                  INCA
                  LP    0x12
                  STQ
                  IX
                  SBM
LBL090C:          DECA
                  INCA
                  LP    0x14
                  IYS
                  ORMA
                  READ
                  DECA
                  INCA
                  LP    0x14
                  ANMA
                  LIJ   0x89
                  DECA
                  INCA
                  LP    0x14
                  ORMA
                  LP    0x17
                  STR
                  DECA
                  INCA
                  LP    0x14
                  INCK
                    .DB      0x16
                  LP    0x06
                  DECA
                  INCA
                  LP    0x14
LBL0927:          INCK
                  MVWD
                  LP    0x02
                  DECA
                  INCA
                  LP    0x14
                  INCK
                  EXWD
                  LIJ   0x43
                  INCA
                  LP    0x14
                  INCK
                  EXWD
                  LIB   0x45
                  LII   0x00
                  LII   0x00
                  LII   0x57
                  LIDP  0x5931
                  RTN
                  INCP
                  LDD
                  JRNZM LBL090C
;                   CASE2
;                   JR 0x7683
                    .DB     0x69
                    .DW     0x7683
                  LDD
                  JRNZM LBL08F3
                  ANIM  0x41
                  SBM
                  LDD
                  JRNZM LBL08F9
                  JP    0x3221
                  LDD
                  JRNZM LBL08FF
                  JP    0x5111
                  LDD
                  JRNZM LBL0905
                  JP    0x5131
; This is the constant of log10(e) (0.434294481903)
MDL0960:            LIB   0x09
                    LIA   0x6C
LBL0964:            LP    0x28
                    LII   0x07
                    RST
                    LP    0x11
                    ANIM  0xFD
                    RTN
096C:               .db     0x99, 0x90, 0x43, 0x42, 0x94, 0x48, 0x19, 0x03

; This is the constant of degrees/radiant (57.2957795131)
MDL0974:            LIB     0x09
                    LIA     0x7A
                    JRM     LBL0964
097A:               .db     0x00, 0x10, 0x57, 0x29, 0x57, 0x79, 0x51, 0x31
MDL0982:            CAL     MDL0284
                    CAL     MDL011B
                    JRNCP   LBL0999
                    LP      0x11
                    TSIM    0x02
                    JRNZP   LBL0996
                    CAL     MDL0284
                    CAL     MDL011B
                    JRCP    LBL0996
                    CAL     MDL0284
                    RTN
LBL0996:            JP      LBL0B41
LBL0999:            LP      0x11
                  TSIM  0x01
                  JRZP  LBL09FA
                  LP    0x28
                  LDM
                  ANIA  0xF0
                  CPIA  0x90
                  JRZM  LBL0996
                  LP    0x08
                  LIA   0x05
                  EXAM
                  LP    0x28
                  LDM
                  ANIA  0x0F
                  JRZP  LBL09C6
                  CPIA  0x01
                  JRZP  LBL09B9
LBL09B4:          LP    0x11
                  ORIM  0x20
                  JRP   LBL09F4
LBL09B9:          LP    0x29
                  LDM
                  ANIA  0xF0
                  CPIA  0x20
                  JRNCM LBL09B4
                  SWP
                  ADIA  0x0A
                  JRP   LBL09CB
LBL09C6:          LP    0x29
                  LDM
                  ANIA  0xF0
                  SWP
LBL09CB:          LP    0x08
                  RC
                  SR
                  JRNCP LBL09D8
                  CAL   MDL0A13
                  TSIM  0x01
                  CAL   MDL09EC
                  JRP   LBL09E2
LBL09D8:          CAL   MDL0A13
                  TSIM  0x10
                  CAL   MDL09EC
                  TSIM  0x0F
                  JRNZM LBL0996
LBL09E2:          DECK
                  JRCP  LBL09F4
                  INCP
                  CPIM  0x00
                  JRNZM LBL0996
                  JRM   LBL09E2
MDL09EC:          JRNZP LBL09F3
                  LP    0x11
                  ORIM  0x20
                  EXAB
                  STP
LBL09F3:          RTN
LBL09F4:          LP    0x11
                  ANIM  0xFE
                  LP    0x10
                  ORIM  0x04
LBL09FA:          CAL   MDL0A19
                  CAL   MDL04C7
                  CAL   MDL0A28
                  CAL   MDL0284
                  CAL   MDL036B
                  CAL   MDL052A
                  LP    0x10
                  TSIM  0x04
                  JRZP  LBL0A12
                  LP    0x11
                  TSIM  0x20
                  JRNZP LBL0A12
                  ORIM  0x01
LBL0A12:          RTN
MDL0A13:          SBM
                  ADIA  0x2A
                  STP
                  EXAB
                  RTN
MDL0A19:          LP    0x11
                  TSIM  0x02
                  JRZP  LBL0A21
                  LP    0x29
                  ORIM  0x08
LBL0A21:          LP    0x28
                  LIDP  0xC6BC
                  LII   0x07
                  EXWD
MDL0A28:          LP    0x28
                  LIDP  0xC6BC
                  LII   0x07
                  MVWD
                  LP    0x29
                  TSIM  0x08
                  JRZP  LBL0A39
                  ANIM  0xF7
                  LP    0x11
                  ORIM  0x02
LBL0A39:          RTN
LBL0A3A:          CAL   MDL0AE1
                  CAL   MDL0A63
                  CAL   MDL0330
                  CAL   MDL0278
                  CAL   MDL0AA0
                  CAL   MDL036B
                  CAL   MDL026A
                  CAL   MDL02EB
                  CAL   MDL0A69
                  CAL   MDL0330
                  CAL   MDL0278
                  CAL   MDL0AA0
                  CAL   MDL036B
                  LIDP  0xC6BB
                  ORID  0x01
                  CAL   MDL026A
                  CAL   MDL02EB
                  CAL   MDL0AF9
                  LIJ   0x01
                  RC
                  RTN
MDL0A63:          CAL   MDL0221
                  CAL   MDL01DA
                  JRP   LBL0A6D
MDL0A69:          CAL   MDL0221
                  CAL   MDL01CD
LBL0A6D:          CAL   MDL00B8
                  LP    0x20
                  LDM
                  ANIA  0xF0
                  CPIA  0x90
                  JRNZP LBL0A89
                  CAL   MDL01CD
                  LP    0x20
                  LDM
                  ANIA  0xF0
                  CPIA  0x90
                  JRNZP LBL0A85
                  LIA   0x0B
                  JRP   LBL0A9B
LBL0A85:          LIA   0x0A
                  JRP   LBL0A9B
LBL0A89:          CPIA  0x10
                  JRZP  LBL0A9D
                  TSIM  0x0F
                  JRNZP LBL0A9D
                  LP    0x21
                  LDM
                  ANIA  0xF0
                  SWP
                  LIB   0x09
                  LP    0x03
                  SBM
                  LDM
LBL0A9B:          CAL   MDL0AAC
LBL0A9D:          CAL   MDL0240
                  RTN
MDL0AA0:          CAL   MDL00A9
                  LP    0x2A
                  ORIM  0x60
                  DECP
                  ORIM  0x90
                  DECP
                  ORIM  0x99
                  RTN
MDL0AAC:          LP    0x10
                  ANIM  0xFE
                  RC
                  SR
                  JRNCP LBL0AB5
                  ORIM  0x01
LBL0AB5:          LP    0x00
                  EXAM
                  LDM
                  LIJ   0x2F
                  LP    0x01
                  SBM
                  LDM
                  STQ
                  SBIA  0x08
                  PUSH
                  LP    0x10
                  TSIM  0x01
                  JRZP  LBL0AD0
                  STP
                  MVW
                  POP
                  ADIA  0x08
                  STP
LBL0ACC:          LIA   0x00
                  FILM
                  RTN
LBL0AD0:          STP
                  MVW
                  POP
                  STP
                  ANIM  0x0F
                  LDP
                  ADIA  0x08
                  STP
                  ANIM  0xF0
                  INCP
                  DECI
                  JRNCM LBL0ACC
                  RTN
MDL0AE1:          LP    0x11
                  ANIM  0x00
LBL0AE4:          LP    0x21
                  TSIM  0x08
                  JRZP  LBL0AEE
                  ANIM  0xF7
                  LP    0x11
                  ORIM  0x01
LBL0AEE:          LDR
                  ADIA  0x02
                  LIDP  0xC6BA
                  STD
                  LP    0x10
                  ANIM  0x00
                  RTN
MDL0AF9:          LIA   0x00
                  LP    0x11
                  TSIM  0x01
                  JRZP  LBL0B02
                  LIA   0x08
LBL0B02:          LP    0x21
                  ANIM  0xF7
                  RC
                  ORMA
                  LIJ   0x01
                  RTN
MDL0B0A:          LP    0x11
                  ANIM  0x00
                  LP    0x29
                  TSIM  0x08
                  JRZP  LBL0B17
                  ANIM  0xF7
                  LP    0x11
                  ORIM  0x02
LBL0B17:          JRM   LBL0AE4
MDL0B19:          LP    0x29
                  ANIM  0xF7
                  LP    0x11
                  TSIM  0x02
                  JRZP  LBL0B24
                  LP    0x29
                  ORIM  0x08
LBL0B24:          JRM   MDL0AF9
LBL0B26:          LP    0x21
                  ANIM  0xF7
                  RC
                  RTN
LBL0B2B:          CAL   MDL0AE1
                  CAL   MDL011B
                  JRCP  LBL0C1C
                  LP    0x11
                  TSIM  0x01
                  JRNZP LBL0B3A
                  CAL   MDL009F
LBL0B38:          JRP   LBL0C12
LBL0B3A:          CAL   MDL009F
                  LP    0x21
                  ORIM  0x08
                  JRM   LBL0B38
LBL0B41:          LIDP  0xC6BA
                  LDD
                  STR
                  LP    0x14
                  LIA   0x02
                  EXAM
                  SC
                  RTN
LBL0B4C:          CAL   MDL0C20
                  JRCP  LBL0B57
                  CAL   MDL0B0A
                  CAL   MDL02EB
                  CAL   MDL0B19
                  RTN
LBL0B57:          LIQ   0x2D
                  LP    0x25
                  LIJ   0x01
                  MVB
                  LP    0x2F
                  LDM
                  LP    0x27
                  ADM
                  RC
                  RTN
LBL0B63:          CAL   MDL0C20
                  JRCP  LBL0B6E
                  CAL   MDL0B0A
                  CAL   MDL02E9
                  CAL   MDL0B19
                  RTN
LBL0B6E:          LP    0x14
                  LIA   0x09
                  EXAM
                  SC
                  RTN
LBL0B74:          CAL   MDL0DB8
                  CAL   MDL0B0A
                  CAL   MDL036B
                  CAL   MDL0B19
                  RTN
LBL0B7D:          CAL   MDL0DB8
                  CAL   MDL0B0A
                  CAL   MDL03A5
                  CAL   MDL0B19
                  RTN
LBL0B86:          CAL   MDL0DB8
                  CAL   MDL0B0A
                  CAL   MDL0982
                  CAL   MDL0B19
                  RTN
LBL0B8F:          CAL   MDL0AE1
                  CAL   MDL0409
LBL0B93:          CAL   MDL0AF9
                  RTN
LBL0B96:          CAL   MDL0AE1
                  CAL   MDL0629
                  JRM   LBL0B93
LBL0B9C:          CAL   MDL0AE1
                  CAL   MDL062E
                  JRM   LBL0B93
LBL0BA2:          CAL   MDL0AE1
                  CAL   MDL0624
                  CAL   MDL011B
                  JRNCP LBL0BAD
                  LP    0x11
                  ANIM  0xFE
LBL0BAD:          JRM   LBL0B93
LBL0BAF:          CAL   MDL0AE1
                  CAL   MDL0581
                  JRM   LBL0B93
LBL0BB5:          CAL   MDL0AE1
                  CAL   MDL057C
                  JRM   LBL0B93
LBL0BBB:          CAL   MDL0AE1
                  CAL   MDL0577
                  JRM   LBL0B93
LBL0BC1:          CAL   MDL0AE1
                  CAL   MDL0526
                  JRM   LBL0B93
LBL0BC7:          CAL   MDL0AE1
                  CAL   MDL04C2
                  JRM   LBL0B93
LBL0BCD:          CAL   MDL0AE1
                  CAL   MDL04C7
                  JRM   LBL0B93
LBL0BD3:          CAL   MDL0C20
                  JRNCP LBL0CCC
                  LP    0x10
                  ANIM  0xFD
                  JRP   LBL0BE3
LBL0BDC:          CAL   MDL0C20
                  JRNCP LBL0C9F
                  LP    0x10
                  ORIM  0x02
LBL0BE3:          LP    0x27
                  LDM
                  LP    0x2F
                  CPMA
                  JRNZP LBL0C17
                  LP    0x08
                  EXAM
                  DECK
                  JRCP  LBL0C0B
                  LIQ   0x2D
                  LP    0x06
                  MVB
                  DY
                  NOPW
                  NOPW
                  CAL   MDL0D2F
LBL0BF7:          IXL
                  EXAB
                  LP    0x04
                  LIQ   0x06
                  LII   0x01
                  EXW
                  IXL
                  LP    0x04
                  LIQ   0x06
                  EXW
                  LP    0x03
                  CPMA
                  JRNZP LBL0C17
                  DECK
                  JRNCM LBL0BF7
LBL0C0B:          LP    0x10
                  TSIM  0x02
                  JRZP  LBL0C1C
LBL0C10:          CAL   MDL009F
LBL0C12:          LP    0x22
                  ORIM  0x10
                  JRP   LBL0C1E
LBL0C17:          LP    0x10
                  TSIM  0x02
                  JRZM  LBL0C10
LBL0C1C:          CAL   MDL009F
LBL0C1E:          RC
                  RTN
MDL0C20:          CAL   MDL0DB8
                  LP    0x2C
                  CPIM  0xD0
                  JRZP  LBL0C2E
                  LP    0x24
                  CPIM  0xD0
                  JRZP  LBL0C35
                  RC
                  RTN
LBL0C2E:          LP    0x24
                  CPIM  0xD0
                  JRNZP LBL0C35
                  SC
                  RTN
LBL0C35:          POP
                  POP
                  JRM   LBL0B6E
LBL0C39:          CAL   MDL0C20
                  JRNCP LBL0CDA
LBL0C3D:          LP    0x10
                  ORIM  0x02
                  JRP   LBL0C59
LBL0C42:          CAL   MDL0C20
                  JRNCP LBL0CB9
                  CAL   MDL0284
                  JRM   LBL0C3D
LBL0C4A:          CAL   MDL0C20
                  JRCP  LBL0C56
                  JRP   LBL0CA9
LBL0C50:          CAL   MDL0C20
                  JRNCP LBL0CAD
                  CAL   MDL0284
LBL0C56:          LP    0x10
                  ANIM  0xFD
LBL0C59:          LP    0x2F
                  CPIM  0x00
                  JRZP  LBL0C98
                  LDM
                  LP    0x08
                  EXAM
                  LP    0x27
                  CPIM  0x00
                  JRZP  LBL0C8A
                  LDM
                  LP    0x09
                  EXAM
                  DECK
                  DECL
LBL0C6B:          CAL   MDL0D2F
                  LP    0x25
                  ADIM  0x01
                  IXL
                  CAL   MDL0FE2
                  PUSH
                  CAL   MDL0D37
                  LP    0x2D
                  ADIM  0x01
                  IXL
                  CAL   MDL0FE2
                  EXAB
                  POP
                  LP    0x03
                  CPMA
                  JRCP  LBL0C8C
                  JRNZP LBL0C8A
                  DECK
                  JRCP  LBL0C8E
                  DECL
                  JRNCM LBL0C6B
LBL0C8A:          JRM   LBL0C10
LBL0C8C:          JRM   LBL0C1C
LBL0C8E:          DECL
                  JRNCM LBL0C8C
LBL0C91:          LP    0x10
                  TSIM  0x02
                  JRZM  LBL0C8C
                  JRM   LBL0C8A
LBL0C98:          LP    0x27
                  CPIM  0x00
                  JRNZM LBL0C8C
                  JRM   LBL0C91
LBL0C9F:          CAL   MDL0B0A
                  CAL   MDL02E9
                  CAL   MDL011B
                  JRNCP LBL0CD4
                  JRP   LBL0CC4
LBL0CA9:          CAL   MDL0B0A
                  JRP   LBL0CB1
LBL0CAD:          CAL   MDL0B0A
                  CAL   MDL0284
LBL0CB1:          CAL   MDL02E9
                  CAL   MDL011B
                  JRNCP LBL0CBF
                  JRP   LBL0CD4
LBL0CB9:          CAL   MDL0B0A
                  CAL   MDL0284
LBL0CBD:          CAL   MDL02E9
LBL0CBF:          LP    0x11
                  TSIM  0x01
                  JRNZP LBL0CD4
LBL0CC4:          CAL   MDL012F
                  CAL   MDL022F
                  CAL   MDL0B19
                  RC
                  RTN
LBL0CCC:          CAL   MDL0B0A
                  CAL   MDL02E9
                  CAL   MDL011B
                  JRNCM LBL0CC4
LBL0CD4:          CAL   MDL009F
                  CAL   MDL0B19
                  RC
                  RTN
LBL0CDA:          CAL   MDL0B0A
                  JRM   LBL0CBD
LBL0CDE:          CAL   MDL0AE1
                  CAL   MDL0A63
                  LP    0x11
                  TSIM  0x01
                  JRNZP LBL0CED
LBL0CE7:          CAL   MDL022F
                  CAL   MDL0330
                  JRP   LBL0CFD
LBL0CED:          CAL   MDL011B
                  JRNCP LBL0CF3
                  JRM   LBL0CE7
LBL0CF3:          CAL   MDL022F
                  CAL   MDL0330
                  CAL   MDL012F
                  CAL   MDL0284
                  CAL   MDL02E9
LBL0CFD:          CAL   MDL0AF9
                  RC
                  RTN
MDL0D01:          CAL   MDL0AE1
                  LIDP  0xC6BB
                  TSID  0x01
                  JRZP  LBL0D0E
                  ANID  0xFE
                  JRP   LBL0D28
LBL0D0E:          LP    0x27
                  LII   0x06
                  LIA   0x50
                  ADN
                  LP    0x21
                  TSIM  0x0F
                  JRZP  LBL0D28
                  CAL   MDL00DD
                  CAL   MDL01CD
                  LP    0x20
                  LDM
                  ANIA  0xF0
                  CPIA  0x10
                  JRNZP LBL0D28
                  JP    LBL0B41
LBL0D28:          LP    0x27
                  ANIM  0x00
                  CAL   MDL0AF9
                  RC
                  RTN
MDL0D2F:          LIQ   0x25
LBL0D31:          LP    0x04
                  LIJ   0x01
                  MVB
                  DX
                  RTN
MDL0D37:          LIQ   0x2D
                  JRM   LBL0D31
MDL0D3B:          LP    0x10
                  ORIM  0x02
                  CAL   MDL009F             ; Clear BCD reg at $20.
                  JRP   LBL0D5B
MDL0D42:          CAL   MDL009F
                  LP    0x10
                  ANIM  0xFC
                  LIJ   0x01
                  LP    0x29
                  TSIM  0x80
                  JRZP  LBL0D5B
                  LP    0x10
                  ORIM  0x01
                  LIA   0x00
                  LP    0x29
                  EXAM
                  EXAB
                  LIA   0x00
                  LP    0x28
                  EXAM
                  SBB
LBL0D5B:          LP    0x0E            ; [$28, $29] -> [$0E, $0F]
                  LIJ   0x01
                  LIQ   0x28
                  MVB
                  LP    0x08            ; K = 7. Counter?
                  LIA   0x07
                  EXAM
                  CAL   MDL00A9         ; Clear BCD register Yreg.
                  LP    0x2C
                  ORIM  0x10
                  CAL   MDL023D
                  CAL   MDL0D8D
                  LIA   0x07
                  LP    0x08
                  EXAM
                  LP    0x0F
                  LDM
                  LP    0x0E
                  EXAM
                  CAL   MDL0D8D
                  LP    0x21
                  ORIM  0x40
                  CAL   MDL0330
                  LP    0x10
                  TSIM  0x02
                  JRNZP LBL0D8B
                  TSIM  0x01
                  JRZP  LBL0D8B
                  ANIM  0xFE
                  LP    0x21
                  ORIM  0x08
LBL0D8B:          RC
                  RTN
; This seems to be the code that converts a 16 bit number at [$0f, $0e] into
; a BCD number.
MDL0D8D:          LP    0x0E
                  LDM
                  SR
                  EXAM
                  JRNCP LBL0D95
                  CAL   MDL0DB1
LBL0D95:          CAL   MDL0DA3
                  CAL   MDL0DAA
                  CAL   MDL0DB1
                  CAL   MDL0DAA
                  CAL   MDL0DA3
                  DECK
                  JRNCM MDL0D8D
                  RTN
MDL0DA3:          LP    0x22
                  LIQ   0x32
                  LII   0x02
                  EXW
                  RTN
MDL0DAA:          LP    0x2A
                  LIQ   0x22
                  LII   0x02
                  MVW
                  RTN
MDL0DB1:          LP    0x24
                  LIQ   0x2C
                  LII   0x02
                  ADW
                  RTN
MDL0DB8:          LIB   0x28
LBL0DBA:          LIDP  0xC6F5
                  LDD
                  SBIA  0x08
                  STD
                  DECA
                  LP    0x04
                  EXAM
                  LIA   0xF8
                  LP    0x05
                  EXAM
                  IX
                  LII   0x07
                  EXAB
                  STP
                  MVWD
                  RTN
MDL0DCF:          LIB   0x20
                  JRM   LBL0DBA
LBL0DD3:          LIDP  0xC6F2
                  LDD
                  CPIA  0x02
                  JRNZP LBL0E03
                  CAL   MDL0E92
                  CAL   MDL1737
                  JRCP  LBL0E02
                  CAL   MDL0DCF
                  LP    0x24
                  CPIM  0xD0
                  JRNZP LBL0E03
                  LP    0x27
                  LDM
                  LP    0x08
                  EXAM
                  LP    0x28
                  LDM
                  LP    0x08
                  CPMA
                  JRCP  LBL0DF4
                  LP    0x27
                  EXAM
LBL0DF4:          LP    0x25
                  LDM
                  LP    0x08
                  EXAM
                  LP    0x27
                  LDM
                  LP    0x08
                  ADM
                  LDM
                  LIDP  0xC6F7
                  STD
                  RC
LBL0E02:          RTN
LBL0E03:          LIA   0x09
LBL0E05:          LP    0x14
                  EXAM
                  SC
                  RTN
LBL0E09:          LIDP  0xC6F2
                  LDD
                  CPIA  0x03
                  JRNZM LBL0E03
                  CAL   MDL0E92
                  CAL   MDL1737
                  JRCM  LBL0E02
                  LP    0x28
                  LDM
                  LIDP  0xC6B9
                  STD
                  CAL   MDL0DCF
                  CAL   MDL0E9B
                  CAL   MDL1737
                  JRCM  LBL0E02
                  CAL   MDL0DCF
                  LP    0x24
                  CPIM  0xD0
                  JRNZM LBL0E03
                  LP    0x27
                  LDM
                  LP    0x08
                  EXAM
                  LP    0x28
                  LDM
                  LP    0x08
                  CPMA
                  JRNCP LBL0E3B
                  LP    0x27
                  ANIM  0x00
                  JRM   LBL0DF4
LBL0E3B:          DECA
                  PUSH
                  SBM
                  CAL   MDL0D2F
                  LP    0x06
                  LIQ   0x04
                  LIJ   0x01
                  MVB
                  POP
                  LP    0x04
                  ADM
                  LIDP  0xC6B9
                  LDD
                  LP    0x08
                  CPMA
                  JRCP  LBL0E52
                  EXAM
LBL0E52:          LDM
                  LP    0x27
LBL0E54:          EXAM
LBL0E55:          DECK
                  JRCM  LBL0DF4
                  IXL
                  IYS
                  JRM   LBL0E55
                  NOPW
LBL0E5D:          LIDP  0xC6F2
                  LDD
                  CPIA  0x02
                  JRNZM LBL0E03
                  CAL   MDL0E92
                  CAL   MDL1737
                  JRCM  LBL0E02
                  CAL   MDL0DCF
                  LP    0x24
                  CPIM  0xD0
                  JRNZM LBL0E03
                  LP    0x27
                  LDM
                  LP    0x08
                  EXAM
                  LP    0x28
                  LDM
                  LP    0x08
                  CPMA
                  JRZM  LBL0DF4
                  JRCM  LBL0DF4
                  SBM
                  LP    0x27
                  EXAM
                  CAL   MDL0D2F
                  LP    0x06
                  LIQ   0x04
                  LIJ   0x01
                  MVB
                  LP    0x08
                  LDM
                  LP    0x04
                  ADM
                  LP    0x27
                  LDM
                  LP    0x08
                  JRM   LBL0E54
MDL0E92:          LP    0x13
                  ORIM  0x80
LBL0E95:          LP    0x12
                  ANIM  0xF0
                  ORIM  0x06
                  RTN
MDL0E9B:          LP    0x13
                  ANIM  0x7F
                  JRM   LBL0E95
LBL0EA0:          LP    0x27
                  LDM
                  LP    0x28
                  EXAM
                  LP    0x29
                  ANIM  0x00
                  CAL   MDL0D42
                  LIDP  0xC6F7
                  LIA   0x60
                  STD
                  RC
                  RTN
MDL0EB1:          LIDP  0xC6AF
                  LP    0x1C
                  LIJ   0x01
                  EXBD
MDL0EB8:          LIDP  0xC6AF
                  LP    0x1C
                  MVBD
                  RTN
LBL0EBE:          LIDP  0xF820
                  LII   0x17
                  LIA   0xFF
                  FILD
                  CALL  0x44EC
                  LIDP  0xC6E7
                  ANID  0x00
                  LP    0x13
                  LIA   0x82
                  EXAM
                  CAL   MDL0EB1
                  JP    LBL1FE0
LBL0ED7:          CAL   MDL0EB8
                  CALL  0x44F2
                  CAL   MDL009F
                  LIDP  0xC6F7
                  LDD
                  DECA
                  LP    0x06
                  EXAM
                  LIA   0xC7
                  LP    0x07
                  EXAM
                  LP    0x05
                  LIA   0xF8
                  EXAM
                  LP    0x04
                  LIA   0x1F
                  EXAM
LBL0EF1:          IXL
                  CPIA  0xFF
                  JRZP  LBL0F09
                  CPIA  0x4A
                  JRNZP LBL0F02
                  IXL
                  CPIA  0xFF
                  JRZP  LBL0F09
                  DX
                  LIA   0x4A
LBL0F02:          CAL   MDL0FD4
                  LP    0x27
                  ADIM  0x01
                  JRM   LBL0EF1
LBL0F09:          IY
                  LIDP  0xC6F7
                  LDD
                  LP    0x25
                  EXAM
                  LP    0x26
                  LIA   0xC7
                  EXAM
                  LP    0x06
                  LDM
                  STD
                  LP    0x24
                  ORIM  0xD0
                  RC
                  RTN
LBL0F1C:          CAL   MDL0D2F
                  LP    0x25
                  LDM
                  LIDP  0xC6F7
                  STD
                  LP    0x27
                  LDM
                  LIB   0x00
                  LP    0x04
                  ADB
                  LP    0x06
                  LIJ   0x01
                  LIQ   0x04
                  MVB
                  LIA   0x00
                  IYS
                  CAL   MDL0D2F
                  LP    0x11
                  ANIM  0xFD
LBL0F38:          IXL
                  CPIA  0x35
                  JRZM  LBL0F38
                  CPIA  0x36
                  JRNZP LBL0F46
                  LP    0x11
                  ADIM  0x02
                  JRM   LBL0F38
LBL0F46:          CPIA  0x11
                  JRZM  LBL0F38
                  JRP   LBL0F50
LBL0F4C:          CAL   MDL009F
                  JRP   LBL0F68
LBL0F50:          DX
                  LP    0x13
                  ANIM  0xFD
                  CAL   MDL0EB1
                  CAL   MDL15A3
                  CAL   MDL0EB8
                  JRCP  LBL0F69
                  CAL   MDL011B
                  JRCM  LBL0F4C
                  LP    0x11
                  TSIM  0x02
                  JRZP  LBL0F68
                  LP    0x21
                  ORIM  0x08
LBL0F68:          RC
LBL0F69:          RTN
LBL0F6A:          LP    0x27
                  CPIM  0x00
                  JRNZP LBL0F73
                  LIA   0x00
                  JRP   LBL0F7A
LBL0F73:          CAL   MDL0D2F
                  IXL
                  CAL   MDL0FE2
                  JRCP  LBL0F89
LBL0F7A:          LP    0x28
                  EXAM
                  LP    0x29
                  ANIM  0x00
                  LP    0x25
                  LDM
                  LIDP  0xC6F7
                  STD
                  CAL   MDL0D42
                  RC
                  RTN
LBL0F89:          JP    LBL0E03
LBL0F8C:          CAL   MDL10DC
                  CAL   MDL1737
                  JRCM  LBL0F89
                  LP    0x28
                  CPIM  0x00
                  JRNZP LBL0FA5
                  CAL   MDL009F
                  LIDP  0xC6F7
                  LDD
                  LP    0x25
                  EXAM
                  LP    0x26
                  LIA   0xC7
                  EXAM
                  JRP   LBL0FCF
LBL0FA5:          CPIM  0x20
                  JRCM  LBL0F89
                  CPIM  0x61
                  JRNCM LBL0F89
                  LDM
                  CAL   MDL1057
                  JRCM  LBL0F89
                  PUSH
                  LIDP  0xC6F7
                  LDD
                  INCA
                  STD
                  DECA
                  DECA
                  LP    0x06
                  EXAM
                  LP    0x07
                  LIA   0xC7
                  EXAM
                  POP
                  CAL   MDL0FD4
                  CAL   MDL009F
                  LP    0x25
                  LIQ   0x06
                  LIJ   0x01
                  MVB
                  LP    0x27
                  ORIM  0x01
LBL0FCF:          LP    0x24
                  ORIM  0xD0
                  RC
                  RTN
MDL0FD4:          LP    0x06
                  CPIM  0xAF
                  JRZP  LBL0FDB
                  IYS
                  RTN
LBL0FDB:          POP
                  POP
                  LIA   0x06
                  JP    LBL0E05
MDL0FE2:          CPIA  0x51
                  JRCP  LBL0FF0
                  CPIA  0x6B
                  JRNCP LBL0FEE
LBL0FEA:          SBIA  0x10
                  RC
                  RTN
LBL0FEE:          SC
                  RTN
LBL0FF0:          CPIA  0x40
                  JRCP  LBL100E
                  CPIA  0x4A
                  JRCM  LBL0FEA
                  JRNZP LBL0FFE
                  LIA   0x2E
                  RC
                  RTN
LBL0FFE:          CPIA  0x4B
                  JRNZP LBL1006
                  LIA   0x60
                  RC
                  RTN
LBL1006:          CPIA  0x4E
                  JRNZM LBL0FEE
                  LIA   0x5F
                  RC
                  RTN
LBL100E:          CPIA  0x30
                  JRCP  LBL101C
                  SBIA  0x30
                  LP    0x04
                  EXAM
LBL1016:          LIA   0x3D
                  LIB   0x10
                  JRP   LBL102C
LBL101C:          CPIA  0x20
                  JRNCM LBL0FEE
                  CPIA  0x10
                  JRCM  LBL0FEE
                  SBIA  0x10
                  LP    0x04
                  EXAM
                  LIA   0x47
                  LIB   0x10
LBL102C:          LP    0x05
                  ANIM  0x00
LBL102F:          LP    0x04
                  ADB
                  LIQ   0x04
                  LP    0x02
LBL1034:          LIJ   0x01
                  MVB
                  LII   0x00
                  LP    0x02
                  RST
                  RC
                  RTN
                  JRNZP LBL1067
                    .DB      0x3E
                    .DB      0x3C
                    .DB      0x3D
                  JRNCM LBL1016
                  JRNCP LBL1074
                    .DB      0x5E
                  DYS
                  LDP
                  LDR
                    .DB      0x3F
                  LDQ
                  CLRA
                  DXL
                    .DB      0x5C
                  IXL
                  OUTA
                  POP
                  JRP   LBL108E
                  JRCP  LBL1095
                  IYS
MDL1057:          CPIA  0x41
                  JRNCP LBL1061
                  CPIA  0x20
                  JRNCP LBL107A
LBL105F:          SC
                  RTN
LBL1061:          CPIA  0x5B
                  JRNCP LBL1069
                  ADIA  0x10
LBL1067:          RC
                  RTN
LBL1069:          CPIA  0x61
                  JRNCM LBL105F
                  SBIA  0x5B
LBL106F:          LP    0x04
                  EXAM
                  LP    0x05
                  ANIM  0x00
LBL1074:          LIA   0x7E
                  LIB   0x10
                  JRM   LBL102F
LBL107A:          SBIA  0x1A
                  JRM   LBL106F
                  MVBD
                    .DB      0x17
                  EXWD
                  JRZM  LBL1034
                  DECM
                  LIDL  0x14
                  LIP   0x15
                  MVWD
                    .DB      0x16
                  FILD
                  LIDP  0x3031
LBL108E:          RTN
                  RST
                  EXBD
                    .DB      0x36
                  INCM
                  JRZP  LBL10D4
LBL1095:          DECI
                  INCA
                  DECA
                  ADM
                  SBM
                  ANMA
                  ORMA
                  INCK
                  DECK
                  SLW
                  SRW
                    .DB      0x33
                  PUSH
                  STR
                  LIQ   0x1E
LBL10A5:          LP    0x11
                  ORIM  0x40
LBL10A8:          LP    0x24
                  CPIM  0xD0
                  JRNZP LBL10B5
LBL10AD:          JP    LBL0E03
LBL10B0:          LP    0x11
                  ANIM  0xBF
                  JRM   LBL10A8
LBL10B5:          CAL   MDL10E0
                  CAL   MDL1737
                  JRCP  LBL10DB
                  CAL   MDL0278
                  CAL   MDL0DCF
                  CAL   MDL1737
                  JRCP  LBL10DB
                  LP    0x38
                  LDM
                  LP    0x11
                  TSIM  0x40
                  JRZP  LBL10D2
                  LP    0x28
                  ANMA
                  LP    0x39
                  LDM
                  LP    0x29
                  ANMA
                  JRP   LBL10D8
LBL10D2:          LP    0x28
                  ORMA
LBL10D4:          LP    0x39
                  LDM
                  LP    0x29
                  ORMA
LBL10D8:          CAL   MDL0D42
                  RC
LBL10DB:          RTN
MDL10DC:          LIA   0x04
                  JRP   LBL10E2
MDL10E0:          LIA   0x02
LBL10E2:          LP    0x12
                  ANIM  0xF0
                  ORMA
                  LP    0x13
                  ORIM  0x80
                  RTN
LBL10EA:          LP    0x24
                  CPIM  0xD0
                  JRZM  LBL10AD
                  CAL   MDL10E0
                  CAL   MDL1737
                  JRCP  LBL1102
                  LIA   0xFF
                  LP    0x29
                  EXAM
                  EXAB
                  LIA   0xFF
                  LP    0x28
                  EXAM
                  SBB
                  CAL   MDL0D42
                  RC
LBL1102:          RTN
                  LP    0x04
                  LIDP  0xC6C4
                  LIJ   0x01
                  MVBD
                  RTN
LBL110B:          TEST  0x02
                  JRZM  LBL110B
LBL110F:          TEST  0x02
                  JRZM  LBL110F
LBL1113:          TEST  0x02
                  JRZM  LBL1113
                  RTN
save_X:           LP    0x04
                  LDM
                  LIDP  0xC6B5
                  STD
                  LP    0x05
                  LDM
                  LIDP  0xC6B6
                  STD
                  RTN
recover_X:        LIDP  0xC6B5
                  LDD
                  LP    0x04
                  EXAM
                  LIDP  0xC6B6
                  LDD
                  LP    0x05
                  EXAM
                  LIJ   0x01
                  RTN
                  LIA   0x1B
                  IYS
                  DECK
                  JRNCP xchg_x
                  POP
                  POP
                  CAL   MDL1144
xchg_y:           LP    0x14
                  LIA   0x05
                  EXAM
                  SC
                  RTN
MDL1144:          JP    0x4000
                  LP    0x30
                  LII   0x07
                  LIA   0x00
                  FILM
                  LP    0x30
                  ORIM  0xF5
                  RTN
MDL1151:          CAL   save_X
                  LDR
                  ADIA  0x02
                  LIDP  0xC6B3
                  STD
                  RTN
MDL115B:          JP    0x4006
MDL115E:          LIDP  0xF83E
                  RTN
MDL1162:          LIDP  0xF8BE
                  RTN
                  LIDP  0xC6B7
                  RTN
MDL116A:          LIDP  0xC6DA
                  RTN
MDL116E:          LP    0x24
                  CPIM  0xD0
                  RTN
copy_y2x:         LP    0x04
                  LIQ   0x06
                  MVB
                  RTN
copy_x2y:         LP    0x06
                  LIQ   0x04
                  MVB
                  RTN
                  LIA   0x0D
                  EXAB
                  LP    0x0D
                  LDM
                  LP    0x03
                  SBM
                  EXAB
                  LIB   0xF8
                  CAL   load_x
                  RTN
                  CALL  0x44F5
                  JRCP  basic_2x
                  RTN
basic_2x:         LIDP    0xC6E1
                  LP      0x04
                  MVBD
                  RTN
                  LP      0x04
                  LIQ     0x0C
                  EXB
                  RTN
kbd_bufx:         LIA     0xB0
                  LIB     0xC7
                  CAL     load_x
                  RTN
                  LIA     0x18
                  LP      0x09
                  EXAM
show_screen:      LIA     0x20

                  LP      0x08
                  EXAM
                  CAL     kbd_bufx
                  CALL    0x44F8
                  RTN
                  LIA     0x20          ; Data will be stored starting at
                  LP      0x08          ;  scratchpad address $20.
                  EXAM                  ; This value is stored in K.
                  CAL     MDL1162       ; Loads $F8BE in DP. What address is this?
                  ANID    0xFB
                  CAL     kbd_bufx      ; Loads the address of the keyboard
                                        ;  buffer in X.
                  CALL    0x44FB
                  RTN
                  LIDP    0xC702
                  LP      0x1C
                  LII     0x03
                  MVWD
                  CAL     MDL1899
                  RTN
;
; Tucks the X register in the stack, just after (i.e. above) the return value.
MDL11C7:          LDR                   ; Make room on the stack for 2 bytes.
                  DECA
                  DECA
                  STP
                  LIQ     0x04          ; Point to register X
                  MVB                   ; Store it in the stack.
                  STQ
                  EXB                   ; Exchange P and Q.
                  STR                   ; Store the new stack pointer.
                  RTN
MDL11D2:          LDR
                  INCA
                  INCA
                  LP      0x04
                  STQ
                  MVB
                  STP
                  EXAB
                  LDR
                  STQ
                  MVB
                  EXAB
                  STR
                  RTN
lcd_on:           LIA     0x01
LBL11E2:          CAL     wr_portc
                  RTN
lcd_off:          LIA     0x00
                  JRM     LBL11E2
copy_x:           LP      0x04
LBL11EA:          LIQ     0x02
                  MVB
                  RTN
copy_y:           LP      0x06
                  JRM     LBL11EA
load_x:           CAL     copy_x        ; 0x11F1
                  DX
                  RTN
load_y:           CAL     copy_y
                  DY
                  RTN
kbd_bufy:         LIA     0xB0
                  LIB     0xC7
                  CAL     load_y
                  RTN
                  LP      0x1C
                  LIQ     0x04
                  MVB
                  RTN
MDL1205:          LP      0x17
                  ANIM    0xC0
                  TSIM    0x40
                  JRNZP   LBL1212
                  LIDP    0xC6F7
                  LIA     0x60
                  STD
LBL1212:          LIDP    0xC6F5
                  LIA     0x40
                  STD
                  LIDL    0xF6
                  LIA     0x00
                  STD
                  LP      0x13
                  ANIM    0xFE
                  LP      0x17
                  ANIM    0xC0
                  ORIM    0x01
                  LIDP    0xC6F2
                  LIA     0x01
                  STD
LBL122B:          IXL                    ; Get character.
                  CPIA    0x6B           ; Beyond printable?
                  JRNCP   LBL128A
                  CPIA    0x51           ; Compare with 'A'.
                  JRNCP   LBL1286        ; Jump if between 'A' and 'Z'.
                  CPIA    0x40           ; Compare with '0'.
                  JRNCP   LBL1282        ; Jump if numeric.
                  PTC     0x10, LBL126F
                  DTC
                  .CASE   0x35, LBL12F0   ; '+'
                  .CASE   0x36, LBL12F0   ; '-'
                  .CASE   0x37, LBL130D   ; '*'
                  .CASE   0x38, LBL130D   ; '/'
                  .CASE   0x39, LBL130D   ; '^'
                  .CASE   0x32, LBL130D   ; '>'
                  .CASE   0x33, LBL130D   ; '<'
                  .CASE   0x34, LBL130D   ; '='
                  .CASE   0x00, MDL13D5   ; End of line.
                  .CASE   0x1B, LBL13F5   ; ','
                  .CASE   0x30, LBL1417   ; '('
                  .CASE   0x31, LBL1420   ; ')'
                  .CASE   0x12, LBL151D   ; '"'
                  .CASE   0x1A, LBL1561   ; Square root.
                  .CASE   0x19, LBL1546   ; PI (3.14)
                  .CASE   0x1F, LBL1566   ; '&'. Convert Hex character.
                  .DEFAULT MDL13D5
LBL126F:          JRCP  LBL1281
                  LP    0x13
                  TSIM  0x01
                  JRZM  LBL122B
                  CAL   MDL116E
                  JRNCP LBL127C
                  CAL   MDL0D01
LBL127C:          DX
                  RC
                  LP    0x17
                  ANIM  0x3F
LBL1281:          RTN
LBL1282:          CAL   MDL12AE
                  JRM   LBL126F
LBL1286:          CAL   MDL12D1
                  JRM   LBL126F
LBL128A:          CPIA  0xA0
                  JRCP  LBL12A2
                  CPIA  0xB0
                  JRCP  LBL12AA
                  CPIA  0xB2
                  JRZP  LBL12AA
                  CPIA  0xBD
                  JRZP  LBL12AA
                  CPIA  0xBF
                  JRZP  LBL12AA
LBL129E:          CAL   MDL13D5
                  JRM   LBL126F
LBL12A2:          CPIA  0x90
                  JRNCM LBL129E
                  CPIA  0x76
                  JRCM  LBL129E
LBL12AA:          CAL   MDL1312
                  JRM   LBL126F
MDL12AE:          CAL   MDL16A5
                  JRCP  LBL12BC
                  DX
                  LP    0x13
                  ANIM  0xFD
                  CAL   MDL15A3
                  JRCP  LBL12BC
                  CAL   MDL1CCD
LBL12BC:          RTN
MDL12BD:          LP    0x20
                  LIA   0x00
                  LII   0x07
                  FILM
                  RTN
MDL12C4:          LII   0x04
LBL12C6:          INCB
                  LP    0x03
                  CPIM  0x0B
                  JRNCP LBL12D0
                  LP    0x26
                  SLW
                  JRCM  LBL12C6
LBL12D0:          RTN
MDL12D1:          LP    0x17
                  CAL   MDL1C9A
                  JRCP  LBL12EA
                  DX
                  CAL   MDL16C0
                  JRCP  LBL12EA
                  LP    0x13
                  TSIM  0x08
                  JRNZP LBL12EB
                  ANIM  0x9F
                  ORIM  0x20
                  CAL   MDL1A0E
                  JRCP  LBL12EA
                  CAL   MDL1CCD
LBL12EA:          RTN
LBL12EB:          CAL   MDL1AE2
                  CAL   MDL1CC8
                  RTN
LBL12F0:          CAL   MDL16BA
                  DX
                  JRCP  LBL12FD
                  IX
LBL12F6:          DX
                  CAL   MDL1CD2
                  IXL
                  CAL   MDL1AFC
                  RTN
LBL12FD:          CAL   MDL1CD7
                  ORIM  0x04
                  IXL
                  CPIA  0x36
                  JRNZP LBL130B
                  LIA   0x3A
                  CAL   MDL1AE0
                  RTN
LBL130B:          RC
                  RTN
LBL130D:          CAL   MDL16BA
                  JRNCM LBL12F6
                  RTN
MDL1312:            EXAB
                    CAL     MDL16A5
                    EXAB
                    JRCP    LBL13C1
                    CPIA    0x90        ; Compare with BASIC token "TO".
                    JRCP    LBL132E
                    CPIA    0xA0        ; Compare with BASIC token "SIN".
                    JRCP    LBL132B
                    CPIA    0xB0        ; Compare with BASIC token "RUN".
                    JRNCP   LBL138E
LBL1324:            CAL     MDL1CD7
                    ORIM    0x10
                    CAL     MDL1AE0
                    RTN
LBL132B:            CAL     exchg_j
                    RTN
LBL132E:            CPIA    0x80
                    JRCM    LBL1324
                    CPIA    0x86
                    JRCP    LBL13C1
                    CPIA    0x89
                    JRZP  LBL1381
                  CPIA  0x8A
                  JRNZM LBL1324
                  CAL   MDL16B4
                  JRCP  LBL1375
                  CAL   MDL1CDB
                  CALL  0x44FE
                  JRCP  LBL1375
                  LP    0x27
                  CPIM  0x00
                  JRNZP LBL135E
                  CAL   MDL1ACF
                  CAL   scan_keybd
                  CAL   MDL1ACF
                  JRCP  LBL1361
LBL1356:          LIA   0x00
                  LP    0x27
                  EXAM
                  CAL   MDL1CCD
                  RC
                  RTN
LBL135E:          CAL   MDL153D
                  RTN
LBL1361:          CPIA  0x10
                  JRCM  LBL1356
                  LP    0x06
                  CPIM  0xAF
                  JRNCP LBL1373
                  IYS
                  LIA   0x01
                  LP    0x08
                  EXAM
                  CAL   MDL1539
                  RC
                  RTN
LBL1373:          CAL   exchg_Xh
LBL1375:          RTN
LBL1376:          CAL   MDL1CF2
                  JRCP  LBL1380
                  CAL   MDL115B
                  JRCP  LBL1380
                  CAL   MDL1CCD
LBL1380:          RTN
LBL1381:          CAL   MDL16B4
                  JRCM  LBL1375
                  CAL   MDL1CDB
                  CALL  0x4501
                  JRCM  LBL1375
                  JRM   LBL135E
LBL138E:            CPIA    0xB2        ; Compare with BASIC token "MEM".
                    JRZP    LBL13A0
                  CPIA  0xBF
                  JRZM  LBL1376
                  CPIA  0xBD
                  JRNZM LBL132B
                  CAL   MDL1CF2
                  JPNC  LBL154E
                  RTN

; Implement the BASIC 'MEM' command.
LBL13A0:          CAL   MDL1CF2
                  JRCP  LBL13C0
                  LIDP  0xC6FC
                  LP    0x0A
                  MVBD
                  LIDP  0xC6E3
                  LP    0x02
                  MVBD
                  LP    0x0A
                  SBB
                  LP    0x02
                  LIQ   0x0A
                  MVB
                  DECA
                  JRNCP LBL13B8
                  DECB
LBL13B8:          LP    0x28
                  LIQ   0x02
                  MVB
                  CAL   MDL0D3B
                  CAL   MDL1CCD
LBL13C0:          RTN
LBL13C1:          CAL   MDL16BA
                  JRCM  LBL13C0
                  CPIA  0x81
                  JRZM  LBL12F6
                  CPIA  0x85
                  JRZM  LBL12F6
                  JRNCM LBL132B
                  CPIA  0x82
                  JRCM  LBL132B
                  JRM   LBL12F6

; Handle end of input line.
MDL13D5:          CAL   MDL16BA
                  JRCP  LBL13E4
LBL13D9:          CAL   MDL1CB0
                  JRNZP LBL13E8
LBL13DD:          CAL   MDL1CA7
                  JRNZP LBL13E5
                  LP    0x13
                  ORIM  0x01
LBL13E4:          RTN
LBL13E5:          CAL   exchg_j
                  RTN
LBL13E8:          CAL   MDL1CB7
                  JRNCM LBL13E5
                  CAL   MDL1ACF
                  CAL   MDL1B9E
                  CAL   MDL1ACF
                  JRNCM LBL13D9
                  RTN
LBL13F5:          CAL   MDL16BA
                  JRCP  LBL140D
LBL13F9:          CAL   MDL1CB0
                  JRZM  LBL13DD
                  CAL   MDL1CB7
                  JRCP  LBL140E
                  DX
                  IXL
                  CAL   MDL1AE0
                  JRCP  LBL140D
                  CAL   MDL1B13
                  JRCP  LBL140D
LBL140B:          CAL   MDL1CC8
LBL140D:          RTN
LBL140E:          CAL   MDL1ACF
                  CAL   MDL1B9E
                  CAL   MDL1ACF
                  JRNCM LBL13F9
                  RTN
LBL1417:          CAL   MDL16A5
                  JRCP  LBL141F
                  CAL   MDL1AE0
                  JRNCM LBL140B
LBL141F:          RTN
LBL1420:          CAL   MDL16BA
                  JRCP  LBL1502
                  CAL   MDL1CD7
                  ORIM  0x20
LBL1428:          CAL   MDL1CB0
                  JRZP  LBL150D
                  CAL   MDL1CB7
                  JRNCP LBL1439
                  CAL   MDL1ACF
                  CAL   MDL1B9E
                  CAL   MDL1ACF
                  JRNCM LBL1428
                  RTN
LBL1439:          LDD
                  CPIA  0x1B
                  JRZP  LBL1474
                  CPIA  0x30
                  JRNZP LBL1446
                  CAL   MDL1CC2
                  JRP   LBL1502
LBL1446:          LP    0x13
                  ANIM  0xA9
                  ORIM  0x28
                  CAL   MDL1CC2
                  TSIA  0x80
                  JRZP  LBL1454
                  LP    0x13
                  ORIM  0x04
LBL1454:          PUSH
                  ANIA  0x7F
                  CPIA  0x51
                  POP
                  CAL   MDL1ACF
                  JRNZP LBL1466
                  LP    0x13
                  ORIM  0x02
                  CAL   MDL18EE
LBL1463:          CAL   MDL1ACF
                  RTN
LBL1466:          LP    0x0A
                  EXAM
                  CAL   MDL1AD4
                  JRCM  LBL1463
                  LIDP  0xC6D0
                  EXBD
LBL1470:          CAL   MDL19C1
                  JRM   LBL1463
LBL1474:          LIA   0x01
                  LP    0x08
                  EXAM
LBL1478:          LP    0x06
                  CPIM  0x00
                  JRZP  LBL1507
                  INCK
                  DY
                  LDD
                  CPIA  0x1B
                  JRZM  LBL1478
                  LP    0x08
                  LIDP  0xC6F2
                  MVDM
                  CPIA  0x30
                  JRNZP LBL14B6
                  LP    0x06
                  CPIM  0x00
                  JRZP  LBL1507
                  DY
                  LDD
                  CAL   MDL1CC2
                  CPIA  0x8C
                  CAL   MDL1ACF
                  JRCP  LBL1503
                  CPIA  0x8F
                  JRNCP LBL151A
                    PTC     0x02, LBL14AD
                    DTC
                    .CASE   0x8C, LBL0DD3
                    .CASE   0x8D, LBL0E5D
                    .DEFAULT LBL0E09
LBL14AD:            LIA     0x01
                    LIDP    0xC6F2
                    STD
                    CAL     MDL1ACF
                    RTN
LBL14B6:          LP    0x0A
                  EXAM
                  LDM
                  ANIA  0x7F
                  CPIA  0x51
                  JRCP  LBL1507
                  CPIA  0x6B
                  JRNCP LBL1507
                  CAL   MDL1CC2
                  LP    0x08
                  CPIM  0x03
                  JRNCP LBL150A
                  CAL   MDL1AD4
                  JRCP  LBL1502
                  LIDP  0xC6D0
                  MVDM
                  LIDP  0xC6F5
                  LDD
                  CPIA  0x40
                  JRZP  LBL1507
                  SBIA  0x08
                  LIDP  0xC6F5
                  STD
                  LIB   0xF8
                  CAL   load_y
                  IY
                  LP    0x20
                  LII   0x07
                  MVWD
                  CAL   MDL1AD4
                  JRCP  LBL1502
                  LIDP  0xC6D1
                  MVDM
                  LP    0x13
                  ANIM  0xAB
                  ORIM  0x20
                  LP    0x0A
                  TSIM  0x80
                  JRZP  LBL14FE
                  LP    0x13
                  ORIM  0x04
LBL14FE:          CAL   MDL1ACF
                  JRM   LBL1470
LBL1502:          RTN
LBL1503:          CAL   MDL1BC4
                  JRM   LBL14AD
LBL1507:          CAL   exchg_j
                  RTN
LBL150A:          CAL   exchg_b
                  RTN
LBL150D:          CAL   MDL1CA7
                  JRNZM LBL1507
                  LP    0x17
                  TSIM  0x80
                  JRZM  LBL1507
                  LP    0x13
                  ORIM  0x01
                  RTN
LBL151A:          CAL   exchg_l
                  RTN
LBL151D:          CAL   MDL16B4
                  JRCP  LBL1545
                  CAL   MDL1CDB
                  LP    0x06
LBL1524:          IXL
                  CPIA  0x12
                  JRZP  MDL1539
                  CPIA  0x00
                  JRZP  LBL1538
                  CPIM  0xAF
                  JRNCP LBL1535
                  IYS
                  INCK
                  JRNCM LBL1524
LBL1535:          CAL   exchg_Xh
                  RTN
LBL1538:            DX
MDL1539:            LP      0x08
                    LDM
                    LP      0x27
                    EXAM
MDL153D:            IY
                    LP      0x06
                    LIDP    0xC6F7
                    MVDM
                    CAL     MDL1CCD
LBL1545:            RTN
LBL1546:            CAL     MDL16AE
                    JRCP    LBL1558
                    CAL     MDL1C9A
                    JRCP    LBL1558

; ------------------------------------------------------------------------------
; This code interprets the word PI (3.14) in BASIC.
; ------------------------------------------------------------------------------
LBL154E:            LIA     0x59        ; The constant is located at address
                    LIB     0x15        ;  0x1559 in inner ROM code.
                    LP      0x20        ; Xreg is the destination
                    LII     0x07        ; 8 bytes to transfer.
                    RST                 ; Perform the transfer.
                    CAL     MDL1CCD
LBL1558:            RTN

; This is the constant PI (3.14159265359) encoded in the internal BCD
; representation that is used by the code that interprets expressions.
CONST_PI:           .db     0x00, 0x00, 0x31, 0x41, 0x59, 0x26, 0x53, 0x59

LBL1561:            LIA     0x87
                    JP      MDL1312

; ------------------------------------------------------------------------------
; This is the code that performs a conversion between HEX and decimal
; ------------------------------------------------------------------------------
LBL1566:            CAL     MDL16A5
                    JRCP    LBL1596
                    LP      0x08        ; Load 4 in K.
                    LIA     0x04        ; K is used as counters for the
                    EXAM                ; number of characters to convert. In case of
                                        ; a HEX number we convert up to 4 characters
                                        ; or a 16 bit number.
                    LP      0x28        ; Clear up 2 bytes (4 nibbles or 4 characters)
                    LIA     0x00        ;  starting at 28.
                    LII     0x01
                    FILM
LBL1574:            IXL                 ; Get character.
                    CPIA    0x40        ; Compare with '0'.
                    JRZM    LBL1574     ; Jump taken if character is symbol.
LBL1579:            CPIA    0x4A        ; Compare if numeric.
                    JRNCP   LBL1597
                    CPIA    0x40
                    JRCP    LBL158B     ; Taken at end of conversion.
                    ANIA    0x0F        ; Mask off numeric part.
LBL1583:            LP      0x29
                    SLW                 ; Shift [28, 29] 4 bits left
                    LP      0x29          ; OR the digit into the low
                    ORMA                ; order nibble of [29].
                    IXL                 ; Get next char.
                    DECK
                    JRNZM   LBL1579
LBL158B:            LP      0x28        ; We come here at the end of the
                    LII     0x00        ;  conversion, when we find the termination
                    LIQ     0x29        ;  value.
                    EXW                 ; Swap high and low byte. LSB is now first.
                    CAL     MDL0D3B
                    CAL     MDL1CCD
                    DX
LBL1596:            RTN
LBL1597:            CPIA    0x51        ; Compare with 'A'
                    JRCM    LBL158B
                    CPIA    0x57        ; Compare with 'G' (compare for hex digit).
                    JRNCM   LBL158B
                    SBIA    0x47        ; Subtract HEX numeric offset 'A' - 10
                    JRM     LBL1583

MDL15A3:          LP    0x13
                  ORIM  0x10
                  ANIM  0xF3
                  CAL   MDL12BD
                  LIA   0x00
                  EXAB
                  LP    0x08
                  LIA   0x99
                  LII   0x01
                  FILM
                  IXL
                  LP    0x13
LBL15B5:          CPIA  0x40            ; Compare with '0'.
                  JRNZP LBL15BE
                  ANIM  0xEF
                  IXL
                  JRM   LBL15B5
LBL15BE:          CPIA  0x11            ; Compare with ' '.
                  JRZP  LBL15EB
                  CPIA  0x40
                  JRCP  LBL169C
                  CPIA  0x4C
                  JRNCP LBL169C
                  CPIA  0x4A
                  JRNCP LBL15EE
                  LP    0x13
                  ANIM  0xEF
                  TSIM  0x04
                  JRNZP LBL15DD
                  PUSH
                  LP    0x09
                  LIA   0x01
                  LII   0x01
                  ADN
                  POP
LBL15DD:          INCB
                  LP    0x03
                  CPIM  0x0B
                  JRNCP LBL15EB
                  LP    0x26
                  LII   0x04
                  SLW
                  LP    0x26
                  ANIA  0x0F
                  ORMA
LBL15EB:          IXL
                  JRM   LBL15BE
LBL15EE:          JRNZP LBL160F
                  LP    0x13
                  TSIM  0x02
                  JRNZP LBL169C
                  ANIM  0xEF
                  TSIM  0x04
                  JRNZM LBL15EB
                  ORIM  0x04
                  LP    0x03
                  CPIM  0x00
                  JRNZM LBL15EB
                  LII   0x01
LBL1604:          IXL
                  CPIA  0x40
                  JRNZM LBL15BE
                  LP    0x09
                  LIA   0x01
                  SBN
                  JRM   LBL1604
LBL160F:          LP    0x13
                  TSIM  0x02
                  JRNZP LBL169C
                  LP    0x03
                  CPIM  0x00
                  JRZP  LBL168B
                  CAL   MDL12C4
LBL161B:          IXL
                  CPIA  0x40
                  JRCP  LBL1678
                  CPIA  0x4B
                  JRNCP LBL1670
LBL1624:          CPIA  0x4A
                  JRZP  LBL1630
                  ANIA  0x0F
                  LP    0x21
                  EXAM
                  SWP
                  ANIA  0xF0
                  ORMA
LBL1630:          IXL
                  CPIA  0x40
                  JRCP  LBL1639
                  CPIA  0x4B
                  JRCM  LBL1624
LBL1639:          CPIA  0x4B
                  JRZM  LBL1630
                  LP    0x20
                  LIA   0x00
                  EXAM
                  LDM
                  LP    0x13
                  TSIM  0x08
                  LII   0x01
                  JRZP  LBL164C
                  LP    0x21
                  EXAM
                  SBN
LBL164C:          LP    0x21
                  LIQ   0x09
                  ADW
                  LP    0x20
                  CPIM  0x90
                  JRCP  LBL1669
                  CPIM  0x99
                  JRZP  LBL165E
LBL1659:          CAL   MDL12BD
LBL165B:          RC
                  DX
                  RTN
LBL165E:          INCP
                  CPIM  0x00
                  JRZM  LBL1659
LBL1663:          LP    0x21
                  LII   0x01
                  SLW
                  JRM   LBL165B
LBL1669:          CPIM  0x00
                  JRZM  LBL1663
                  CAL   exchg_l
                  RTN
LBL1670:          JRZM  LBL161B
LBL1672:          LP    0x20
                  LIQ   0x08
                  MVB
                  JRM   LBL1663
LBL1678:          CPIA  0x35
                  JRZM  LBL161B
                  CPIA  0x36
                  JRNZM LBL1672
                  LP    0x13
                  LDM
                  ANIA  0x08
                  ADIA  0x08
                  ANIM  0xF7
                  ORMA
                  JRM   LBL161B
LBL168B:          LP    0x13
                  TSIM  0x10
                  JRZM  LBL161B
                  LP    0x22
                  LIA   0x10
                  EXAM
                  LP    0x09
                  LIA   0x01
                  LII   0x01
                  ADN
                  JRM   LBL161B
LBL169C:          LP    0x03
                  CPIM  0x00
                  JRZM  LBL165B
                  CAL   MDL12C4
                  JRM   LBL1672
MDL16A5:          LP    0x17
                  RC
                  TSIM  0x22
LBL16A9:          JRZP  LBL16AD
                  CAL   exchg_j
LBL16AD:          RTN
MDL16AE:          LP    0x17
                  RC
                  TSIM  0x20
                  JRM   LBL16A9
MDL16B4:          LP    0x17
                  RC
                  TSIM  0x26
                  JRM   LBL16A9
MDL16BA:          LP    0x17
                  RC
                  TSIM  0x1D
                  JRM   LBL16A9
MDL16C0:          LP    0x13
                  ANIM  0xE1
                  IXL
                  LP    0x0A
                  EXAM
                  LDM
                  CPIA  0x6B
                  JRNCP LBL1702
                  CPIA  0x51
                  JRCP  LBL1702
                  IXL
                  CPIA  0x30
                  JRNZP LBL16E1
                  LP    0x13
                  ORIM  0x08
                  LP    0x0A
                  CPIM  0x51
                  JRNZP LBL16DF
                  LP    0x13
                  ORIM  0x02
LBL16DF:          RC
                  RTN
LBL16E1:          CPIA  0x18
                  JRNZP LBL16FC
                  LP    0x13
                  ORIM  0x04
                  IXL
                  CPIA  0x30
                  JRNZP LBL16FC
                  LP    0x0A
                  CPIM  0x51
                  LP    0x13
                  JRNZP LBL16F5
                  ORIM  0x02
LBL16F5:          ORIM  0x08
                  LP    0x0A
                  ORIM  0x80
                  JRM   LBL16DF
LBL16FC:          LP    0x13
                  ORIM  0x10
                  DX
                  JRM   LBL16DF
LBL1702:          CAL   exchg_j
                  RTN
exchg_j:          LIA   0x01
LBL1707:          LP    0x14
                  EXAM
                  SC
                  RTN
exchg_a:          LIA   0x02      ; Exchange A and 0x14.
                  JRM   LBL1707
exchg_b:          LIA   0x03      ; Exchange B and 0x14.
                  JRM   LBL1707
exchg_Xl:         LIA   0x04      ; Exchange Xl and 0x14.
                  JRM   LBL1707
exchg_Xh:         LIA   0x05      ; Exchange Xh and 0x14.
                  JRM   LBL1707
exchg_Yl:         LIA   0x06      ; Exchange Yl and 0x14.
                  JRM   LBL1707
exchg_Yh:         LIA   0x07      ; Exchange Yh and 0x14.
                  JRM   LBL1707
exchg_k:          LIA   0x08      ; Exchange K and 0x14.
                  JRM   LBL1707
exchg_l:          LIA   0x09      ; Exchange L and 0x14.
                  JRM   LBL1707
ab_mul2:          RC
                  SL
                  EXAB
                  SL
                  EXAB
                  RTN
ab_div2:          RC
                  EXAB
                  SR
                  EXAB
                  SR
                  RTN
MDL1737:          CAL   MDL116E
                  JRNCP LBL1786
                  LP    0x12
                  ANIM  0x7F
                  LP    0x21
                  TSIM  0x08
                  JRNZP LBL17EF
LBL1743:          LP    0x20
                  CPIM  0x90
                  JRNCP LBL17E7
                  CPIM  0x00
                  JRNZP LBL1783
                  INCP
                  LIA   0x00
                  EXAM
                  SWP
                  ANIA  0x0F
                  CPIA  0x05
                  JRNCP LBL1783
                  LP    0x08
                  EXAM
                  INCK
                  LIA   0x00
                  LIB   0x00
                  LII   0x03
LBL1760:          LP    0x24
                  SLW
                  LP    0x21
                  ANIM  0x0F
                  ADM
                  LDM
                  JRNCP LBL176C
                  INCB
                  JRCP  LBL1783
LBL176C:          DECK
                  JRZP  LBL1789
                  CAL   ab_mul2
                  LP    0x28
                  LIQ   0x02
                  MVB
                  CAL   ab_mul2
                  CAL   ab_mul2
                  JRCP  LBL1783
                  LP    0x28
                  ADB
                  LP    0x02
                  LIQ   0x28
                  MVB
                  JRNCM LBL1760
LBL1783:          CAL   exchg_b
LBL1785:          RTN
LBL1786:          CAL   exchg_l:
                  RTN
LBL1789:          LP    0x28
                  LIQ   0x02
                  MVB
LBL178D:          LP    0x12
                  LDM
                  ANIA  0x0F
                  JRZP  LBL17A8
                  LP    0x28
                  CPIA  0x04
                  JRCP  LBL17C0
                  LP    0x29
                  CPIM  0x00
                  JRNZM LBL1783
                  LP    0x28
                  CPIA  0x06
                  JRCP  LBL17A8
                  JRZP  LBL17BC
                  JRP   LBL17B8
LBL17A6:          JRNCM LBL1783
LBL17A8:          LP    0x29
                  CPIM  0x00
                  JRNZM LBL1785
                  DECP
                  CPIM  0x00
                  JRNZM LBL1785
                  LP    0x13
                  TSIM  0x80
                  JRZM  LBL1783
                  RTN
LBL17B8:          CPIM  0x17
                  JRM   LBL17A6
LBL17BC:          CPIM  0x51
                  JRM   LBL17A6
LBL17C0:          LP    0x29
                  TSIM  0x80
                  JRNZP LBL17D6
                  LP    0x12
                  TSIM  0x80
                  JRZM  LBL17A8
                  LP    0x28
                  LIA   0x00
                  LIB   0x00
                  LIQ   0x02
                  EXB
                  LP    0x28
                  SBB
                  JRM   LBL17A8
LBL17D6:          LP    0x12
                  TSIM  0x80
                  JRZM  LBL1783
                  LP    0x29
                  CPIM  0x80
                  JRNZM LBL1783
                  DECP
                  CPIM  0x00
                  JRNZM LBL1783
                  JRM   LBL17A8
LBL17E7:          LP    0x28
                  LIA   0x00
                  LII   0x01
                  FILM
                  JRM   LBL178D
LBL17EF:          LP    0x12
                  CPIM  0x02
                  JRNZM LBL1783
                  ORIM  0x80
                  JRM   LBL1743
MDL17F8:          CAL   MDL11C7
                  LP    0x13
                  TSIM  0x20
                  JRZP  LBL1852
                  TSIM  0x04
                  JRZP  LBL1863
                  LIA   0xD0
                  LP    0x24
                  EXAM
                  LIDP  0xC6F7
                  LDD
                  LIB   0xC7
                  LP    0x25
                  LIQ   0x02
                  MVB
                  CAL   MDL18DB
                  DY
                  LP    0x09
                  LIA   0x00
                  EXAM
                  LIA   0x07
                  LP    0x13
                  TSIM  0x12
                  JRNZP LBL1828
                  LDR
                  ADIA  0x04
                  STP
                  LDM
                  LP    0x08
                  EXAM
                  JRP   LBL1839
LBL1828:          LP    0x08
                  EXAM
                  JRZP  LBL1839
                  IXL
                  CPIA  0xF5
                  JRZP  LBL1839
                  IX
                  IXL
                  CPIA  0x00
                  JRZP  LBL1848
                  JRP   LBL186D
LBL1839:          LP    0x06
                  CPIM  0xAF
                  JRNCP LBL1858
                  IXL
                  CPIA  0x00
                  JRZP  LBL1848
                  IYS
                  INCL
                  DECK
                  JRNZM LBL1839
LBL1848:          LP    0x09
                  LDM
                  LP    0x27
                  EXAM
                  IY
                  LP    0x06
                  LIDP  0xC6F7
                  MVDM
LBL1852:          CAL   MDL11D2
                  RC
LBL1855:          CAL   copy_x2y
                  RTN
LBL1858:          IXL
                  CPIA  0x00
                  JRZM  LBL1848
                  CAL   MDL11D2
                  CAL   exchg_Xh
                  JRM   LBL1855
LBL1863:          IX
                  LP    0x20
                  LII   0x07
                  MVWD
                  LP    0x20
                  CPIM  0xF5
                  JRNZM LBL1852
LBL186D:          CAL   MDL11D2
                  CAL   exchg_l
                  RTN
MDL1872:          LIDP  0xC6FC
                  LP    0x04
                  MVBD
                  DX
LBL1878:          LIA   0xCF
                  LIB   0xC5
                  CAL   MDL188E
                  JRZP  LBL188C
                  IXL
                  LP    0x0A
                  CPMA
                  JRZP  LBL188D
                  IXL
                  EXAB
                  IXL
                  LP    0x04
                  ADB
                  JRNCM LBL1878
LBL188C:          SC
LBL188D:          RTN
MDL188E:          LP    0x02
                  LIQ   0x04
                  EXB
                  LP    0x04
                  SBB
                  LP    0x02
                  LIQ   0x04
                  EXB
                  RTN
MDL1899:          LP    0x04
                  LIQ   0x1C
                  MVB
                  RTN
MDL189E:          LP    0x28
                  LDM
                  SBIA  0x1A
MDL18A2:          LIB   0x00
                  RC
                  CAL   ab_mul2
                  CAL   ab_mul2
                  CAL   ab_mul2
                  RTN
MDL18AC:          LP    0x08
                  LIQ   0x02
                  MVB
                  LIDP  0xC6E3
                  LP    0x02
                  MVBD
                  LP    0x02
                  LIQ   0x06
                  EXB
                  LP    0x06
                  SBB
                  LP    0x02
                  LIQ   0x06
                  EXB
                  RTN
MDL18C0:          DY
                  LIA   0x51
                  IYS
                  RTN

; Print the '>' cursor on the LCD.
                  CAL   MDL116A             ; DP <- $C6DA
                  ANID  0xC0
                  CAL   MDL1162             ; DP <- $F8BE
                  ANID  0xE1
                  LP    0x20                ; Load cursor sign '>'
                  LIA   0x32                ; Store in LCD buffer.
                  EXAM
                  LP    0x21                ; Fill rest of buffer with
                  LIA   0x11                ; blanks.
                  LII   0x16                ; 23 of them.
                  FILM
                  CALL  0x400C              ; Print the line with the characters
                                            ;  starting at address 0x20.
                  RTN
MDL18DB:          LP    0x06
                  LIQ   0x02
                  MVB
                  RTN
MDL18E0:          LIDP  0xC6FC
                  CAL   MDL18E7
                  LIDL  0xCE
MDL18E7:          LP    0x0C
                  LIQ   0x06
                  MVB
                  LP    0x0C
                  EXBD
                  RTN
MDL18EE:          LP    0x12
                  ANIM  0xF0
                  ORIM  0x04
                  LP    0x13
                  ANIM  0x7F
                  CAL   MDL1737
                  JRCP  LBL1964
                  LP    0x28
                  CPIM  0x1B
                  JRCP  LBL19A8
                  LIDP  0xC6D8
                  LP    0x13
                  TSIM  0x40
                  JRNZP LBL19A2
                  TSID  0x08
                  JRZP  LBL197E
                  LIDL  0xDE
                  LDD
                  LP    0x28
                  CPMA
                  JRCP  LBL196B
                  JRZP  LBL196B
                  EXAB
                  LIDP  0xC6FC
                  LP    0x04
                  MVBD
                  DX
                  IXL
                  CPIA  0x51
                  JRNZP LBL1968
                  CAL   copy_x2y
                  LP    0x28
                  LDM
                  EXAB
                  LP    0x03
                  SBM
                  LIA   0x00
                  EXAB
                  CAL   ab_mul2
                  CAL   ab_mul2
                  CAL   ab_mul2
                  LP    0x06
                  SBB
                  CAL   MDL18AC
                  JRNCP LBL1965
                  CAL   MDL18E0
                  CAL   MDL18C0
                  IXL
                  EXAB
                  IXL
LBL193D:          LP    0x08
                  LIQ   0x02
                  EXB
                  LP    0x08
                  ADB
                  LP    0x08
                  LIQ   0x02
                  EXB
                  EXAB
                  IYS
                  EXAB
                  IYS
                  IY
                  IY
                  LIA   0x08
                  IYS
                  CAL   copy_y2x
                  LIA   0x00
                  LIB   0x00
                  LP    0x02
                  LIQ   0x08
                  EXB
                  CALL  0x4009
                  LP    0x28
                  LIDP  0xC6DE
                  MVDM
LBL1962:          CAL   MDL17F8
LBL1964:          RTN
LBL1965:          CAL   MDL171B
                  RTN
LBL1968:          CAL   exchg_b
                  RTN
LBL196B:          LIA   0x51
                  LP    0x0A
                  EXAM
                  CAL   MDL1872
                  JRCM  LBL1968
                  IXL
                  EXAB
                  IXL
                  LP    0x04
                  ADB
                  CAL   MDL189E
                  LP    0x04
                  SBB
                  JRM   LBL1962
LBL197E:          LIDP  0xC6FC
                  LP    0x04
                  MVBD
                  LIA   0x06
                  LIB   0x00
                  LP    0x04
                  SBB
                  CAL   MDL189E
                  LP    0x04
                  SBB
                  CAL   copy_x2y
                  CAL   MDL18AC
                  JRNCM LBL1965
                  LIDP  0xC6D8
                  ORID  0x08
                  CAL   MDL18E0
                  CAL   MDL18C0
                  LIA   0x03
                  LIB   0x00
                  JRM   LBL193D
LBL19A2:          TSID  0x08
                  JRNZM LBL1968
                  JRM   LBL197E
LBL19A8:          LP    0x13
                  TSIM  0x40
                  JRZP  LBL19AF
                  RC
                  RTN
LBL19AF:          LIA   0x01
                  LP    0x28
                  SBM
MDL19B3:          LIA   0x97
                  LIB   0xC6
                  CAL   copy_x
                  LP    0x28
                  LDM
                  CAL   MDL18A2
                  LP    0x04
                  SBB
                  JRM   LBL1962
MDL19C1:          LIDP  0xC6D0
                  LP    0x0C
                  MVBD
                  CAL   MDL1872
                  JRCP  LBL1A07
                  LP    0x13
                  TSIM  0x40
                  JRNZP LBL1A04
                  IX
                  IX
                  IXL
                  LP    0x0C
                  EXAM
                  CPMA
                  EXAM
                  EXAB
                  JRCP  LBL1A04
                  IXL
                  LP    0x0D
                  EXAM
                  CPMA
                  EXAM
                  JRCP  LBL1A04
                  LP    0x0D
                  LDM
                  LP    0x0A
                  EXAM
                  LIA   0x00
                  LP    0x0B
                  EXAM
                  LDM
                  INCB
                  SL
                  EXAB
                  CAL   MDL1A9E
                  LP    0x0C
                  LDM
                  LIB   0x00
                  LP    0x0A
                  ADB
                  IXL
                  PUSH
                  LIB   0x00
                  CAL   MDL1A9E
                  LP    0x02
                  LIQ   0x0A
                  MVB
                  LP    0x04
                  ADB
                  CAL   MDL17F8
                  POP
                  RTN
LBL1A04:          CAL   exchg_b
                  RTN
LBL1A07:          LP    0x13
                  TSIM  0x40
                  JRZM  LBL1A04
                  RC
                  RTN
MDL1A0E:          LP    0x13
                  TSIM  0x10
                  JRZP  LBL1A27
                  TSIM  0x40
                  JRNZP LBL1A24
                  LP    0x0A
                  LDM
                  SBIA  0x51
                  LP    0x28
                  EXAM
                  CAL   MDL1ACF
                  CAL   MDL19B3
                  CAL   MDL1ACF
                  RTN
LBL1A24:          CAL   exchg_l
LBL1A26:          RTN
LBL1A27:          TSIM  0x02
                  JRZP  LBL1A49
                  LP    0x13
                  LDM
                  PUSH
                  LP    0x17
                  ORIM  0x80
                  CAL   MDL1205
                  POP
                  LP    0x13
                  EXAM
                  JRCM  LBL1A26
                  IXL
                  CPIA  0x31
                  JRNZP LBL1A46
                  CAL   MDL1ACF
                  CAL   MDL18EE
                  CAL   MDL1ACF
                  JRCM  LBL1A26
                  RTN
LBL1A46:          CAL   exchg_j
                  RTN
LBL1A49:          LP    0x0A
                  LDM
                  PUSH
                  LP    0x13
                  LDM
                  PUSH
                  LP    0x17
                  ORIM  0x80
                  CAL   MDL1205
                  JRCP  LBL1A89
                  CAL   MDL1AD4
                  JRCP  LBL1A89
                  LIDP  0xC6D1
                  MVDM
                  IXL
                  CPIA  0x1B
                  JRNZP LBL1A8C
                  LP    0x17
                  ORIM  0x80
                  CAL   MDL1205
                  JRCP  LBL1A89
                  CAL   MDL1AD4
                  JRCP  LBL1A89
                  LIDP  0xC6D0
                  MVDM
                  IXL
                  CPIA  0x31
                  JRNZP LBL1A84
LBL1A77:          CAL   MDL1ACF
                  POP
                  LP    0x13
                  EXAM
                  POP
                  LP    0x0A
                  EXAM
                  CAL   MDL19C1
                  CAL   MDL1ACF
                  RTN
LBL1A84:          POP
                  POP
                  CAL   exchg_j
                  RTN
LBL1A89:          POP
                  POP
                  RTN
LBL1A8C:          CPIA  0x31
                  JRNZM LBL1A84
                  LIDP  0xC6D1
                  LDD
                  EXAB
                  LIA   0x00
                  STD
                  EXAB
                  LIDL  0xD0
                  STD
                  JRM   LBL1A77
MDL1A9E:          LP    0x10
                  LIQ   0x02
                  MVB
                  LIA   0x00
                  LIB   0x00
                  LP    0x10
                  LIQ   0x02
                  EXB
LBL1AAA:          CPIA  0x00
                  JRNZP LBL1AB4
                  EXAB
                  CPIA  0x00
                  JRZP  LBL1ACA
                  EXAB
LBL1AB4:          CAL   ab_div2
                  LP    0x02
                  LIQ   0x0A
                  EXB
                  JRNCP LBL1AC0
                  LP    0x10
                  ADB
                  JRCP  LBL1ACE
LBL1AC0:          CAL   ab_mul2
                  JRCP  LBL1ACE
                  LP    0x02
                  LIQ   0x0A
                  EXB
                  JRNCM LBL1AAA
LBL1ACA:          LP    0x0A
                  LIQ   0x10
                  EXB
LBL1ACE:          RTN
MDL1ACF:          LP    0x04
                  LIQ   0x1C
                  EXB
                  RTN
MDL1AD4:          LP    0x12
                  ANIM  0xF0
                  ORIM  0x04
                  LP    0x13
                  ORIM  0x80
                  CAL   MDL1737
                  LP    0x28
                  RTN
MDL1AE0:          LP    0x0A        ; Save accumulator value in working area.
                  EXAM
MDL1AE2:          LIDP  0xC6F6
                  LDD
                  CPIA  0x10
                  JRZP  LBL1AF9
                  LIB   0xF8
                  CAL   load_y      ; Load the Y register.
                  LP    0x0A        ; Restore accumulator value.
                  LDM
                  IYS
                  IY
                  LP    0x06
                  LIDP  0xC6F6
                  MVDM
                  RC
                  RTN
LBL1AF9:          CAL   exchg_Xh
                  RTN
MDL1AFC:          LP    0x0A        ; Save accumulator value in working area.
                  EXAM
LBL1AFE:          CAL   MDL1CB0
                  LIB   0xF8
                  CAL   load_y
                  JRNZP LBL1B30
                  CPIA  0x10
                  JRZP  LBL1B2D
                  LP    0x0A        ; Restore accumulator value.
                  LDM
                  IYS
                  IY
                  LP    0x06
                  LIDP  0xC6F6
                  MVDM
MDL1B13:          LIDP  0xC6F5
                  LDD
                  CPIA  0x80
                  JRZP  LBL1B2D
                  LIB   0xF8
                  CAL   load_y
                  IY
                  LII   0x07
                  LP    0x20
                  EXWD
                  LP    0x06
                  LDM
                  ADIA  0x08
                  LIDP  0xC6F5
                  STD
                  RTN
LBL1B2D:          CAL   exchg_Xh
                  RTN
LBL1B30:          LP    0x0A
                  LDM
                  CAL   MDL1B57
                  LP    0x0B
                  EXAM
                  LDD
                  CAL   MDL1B57
                  LP    0x0B
                  CPMA
                  JRCP  LBL1B53
                  JRNZP LBL1B44
                  LP    0x0A
                  CPIM  0x39
                  JRZP  LBL1B53
LBL1B44:          LP    0x0A
                  LDM
                  PUSH
                  CAL   MDL1ACF         ; [$1C, $1D] <-> X
                  CAL   MDL1B9E
                  CAL   MDL1ACF         ; [$1C, $1D] <-> X
                  POP
                  LP    0x0A
                  EXAM
                  JRNCM LBL1AFE
                  RTN
LBL1B53:          CAL   MDL1AE2
                  JRM   MDL1B13
MDL1B57:          CPIA  0x51
                  JRNCP LBL1B6D
                  CPIA  0x1B
                  JRZP  LBL1B87
                  SBIA  0x30
                  ADIA  0x93
                  LIB   0x1B
                  JRNCP rd_irom
                  INCB
rd_irom:          LII   0x00
                  LP    0x02
                  RST
                  RTN
LBL1B6D:          CPIA  0xD1
                  JRNCP LBL1B87
                  CPIA  0x76
                  JRCP  LBL1B87
                  CPIA  0x86
                  JRNCP LBL1B8A
                  CPIA  0x85
                  JRZP  LBL1B90
                  CPIA  0x81
                  JRZP  LBL1B90
                  CPIA  0x82
                  JRNCP LBL1B8D
                  JRP   LBL1B8A
LBL1B87:          LIA   0x08
                  RTN
LBL1B8A:          LIA   0x01
                  RTN
LBL1B8D:          LIA   0x06
                  RTN
LBL1B90:          LIA   0x07
                  RTN
                  EXW
                  MVW
                  IY
                  IY
                  IY
                  DX
                  DX
                  IX
                  IX
                  LIA   0x03
MDL1B9E:          LDD
                  LP    0x06
                  LIDP  0xC6F6
                  MVDM
                  CPIA  0x76
                  JRCP  LBL1C2F
                  CPIA  0xA0
                  JRNCP LBL1BEA
                  CPIA  0x8C
                  JRNCP LBL1BD2
                  CPIA  0x86
                  JRNCP LBL1BEA
                  CPIA  0x85
                  JRZP  LBL1C37
                  CPIA  0x81
                  JRZP  LBL1C37
                  CPIA  0x82
                  JRNCP LBL1C63
                  CPIA  0x7D
                  JRNCP LBL1BD5
MDL1BC4:          LP    0x0B
                  EXAM
                  CALL  0x400F
                  CALL  0x4012
                  JRCP  LBL1BD2
                  CALL  0x4015
                  RTN
LBL1BD2:          CAL   exchg_j
                  RTN
LBL1BD5:          CAL   MDL116E
                  JRCP  LBL1BE7
                  PTC     0x02, LBL1BE6
                  DTC
                  .CASE   0x7D, LBL0F6A
                  .CASE   0x7E, LBL0F1C
                  .DEFAULT LBL0EA0
LBL1BE6:          RTN
LBL1BE7:          CAL   exchg_l
                  RTN
LBL1BEA:          CAL   MDL116E
                  JRNCM LBL1BE7
                  PTC     0x13, LBL1C2E
                  DTC
                  .CASE   0x86, LBL10EA
                  .CASE   0x87, LBL0B8F
                  .CASE   0x88, LBL0F8C
                  .CASE   0x8B, LBL0EBE
                  .CASE   0xA0, LBL0B96
                  .CASE   0xA1, LBL0B9C
                  .CASE   0xA2, LBL0BA2
                  .CASE   0xA3, LBL0BAF
                  .CASE   0xA4, LBL0BB5
                  .CASE   0xA5, LBL0BBB
                  .CASE   0xA6, LBL0BC1
                  .CASE   0xA7, LBL0BC7
                  .CASE   0xA8, LBL0BCD
                  .CASE   0xA9, LBL0CDE
                  .CASE   0xAA, LBL0B26
                  .CASE   0xAB, LBL0B2B
                  .CASE   0xAC, 0x44E6
                  .CASE   0xAD, LBL0A3A
                  .CASE   0xAE, 0x4018
                  .DEFAULT 0x401B
LBL1C2E:          RTN
LBL1C2F:          CPIA    0x37
                  JRCP    LBL1C63
                  CPIA    0x3A
                  JRZP    LBL1C84
LBL1C37:          CAL     MDL116E
                  JRNCM   LBL1BE7
                  CAL     MDL1CA7
                  JRZM    LBL1BD2
                  LP      0x0A
                  EXAM
                  EXAB
                  SBIA    0x04
                  LIB     0xF8
                  CAL     load_x
                  IXL
                  CPIA    0xD0
                  JRZM    LBL1BE7
                  LP      0x0A
                  LDM
                  PTC     0x04, LBL1C62
                  DTC
                  .CASE   0x37, LBL0B74
                  .CASE   0x38, LBL0B7D
                  .CASE   0x39, LBL0B86
                  .CASE   0x85, LBL10B0
                  .DEFAULT LBL10A5
LBL1C62:          RTN
LBL1C63:          CAL   MDL1CA7
                  JRZM  LBL1BD2
                  PTC     0x07, LBL1C83
                  DTC
                  .CASE   0x32, LBL0C4A
                  .CASE   0x33, LBL0C50
                  .CASE   0x34, LBL0BDC
                  .CASE   0x35, LBL0B4C
                  .CASE   0x36, LBL0B63
                  .CASE   0x82, LBL0C39
                  .CASE   0x83, LBL0C42
                  .DEFAULT LBL0BD3
LBL1C83:          RTN
LBL1C84:          CAL   MDL116E
                  JRNCM LBL1BE7
                  LP    0x22
                  TSIM  0xFF
                  JRZP  LBL1C96
                  LP    0x21
                  LDM
                  SWP
                  ADIA  0x80
                  SWP
                  EXAM
                  RC
                  RTN
LBL1C96:          CAL   MDL009F
                  RC
                  RTN
MDL1C9A:          TSIM  0x22
                  JRZP  LBL1CA6
                  CAL   MDL1B13
                  JRCP  LBL1CA6
                  LIA   0x37
                  CAL   MDL1AE0
LBL1CA6:          RTN
MDL1CA7:          LIDP  0xC6F5
                  EXAB
                  LDD
                  CPIA  0x40
                  EXAB
                  RTN
MDL1CB0:          LIDP  0xC6F6
                  LDD
                  CPIA  0x00
                  RTN
MDL1CB7:          LIB   0xF8
                  CAL   copy_y
                  DY
                  LDD
                  CAL   MDL1B57
                  CPIA  0x08
                  RTN
MDL1CC2:          LP    0x06
                  LIDP  0xC6F6
                  MVDM
                  RTN
MDL1CC8:          CAL   MDL1CD7
                  ORIM  0x01
                  RTN
MDL1CCD:          CAL   MDL1CD7
                  ORIM  0x02
                  RTN
MDL1CD2:          CAL   MDL1CD7
                  ORIM  0x08
                  RTN
MDL1CD7:          LP    0x17
                  ANIM  0xC0
                  RTN
MDL1CDB:          LIA   0x00
                  LP    0x08
                  EXAM
                  LIA   0xD0
                  LP    0x24
                  EXAM
                  LIDP  0xC6F7
                  LDD
                  LIB   0xC7
                  CAL   load_y
                  IY
                  LP    0x25
                  LIQ   0x06
                  MVB
                  DY
                  RTN
MDL1CF2:          IXL
                  CPIA  0x51
                  JRCP  LBL1CFB
                  CPIA  0x6B
                  JRCP  LBL1CFD
LBL1CFB:          CAL   exchg_j
LBL1CFD:          DX
                  RC
                  RTN
LBL1D00:          LIA   0x47            ; Push the $472A return address into
                  PUSH                  ;  the stack.
                  LIA   0x2A
                  PUSH
                  LIDP  0xF8BE
                  TSID  0x02
                  JRNZP LBL1D11
                  LIA   0x03            ; Display on, counter clear.
                  CAL   wr_portc
LBL1D11:          TSID  0x08
                  JRNZP LBL1D17
                  TEST  0x01            ; Test for 0.5s timeout.
LBL1D17:          LIA   0xBA
                  LIB   0xF8
                  CAL   load_y
                  LIA   0x00
                  IYS
                  LIA   0xFB
                  IYS
;
; Synchronous scan of the keyboard. Returns when a key has been pressed.
; Uses the asynchronous scan at 0x1F44.
LBL1D23:          LIA   0xFB
                  LP    0x00
                  EXAM
LBL1D27:          LIP   0x5C            ; Set Port A to 0xFF.
                  ORIM  0xFF            ; Why?
                  OUTA
                  CAL   MDL115E         ; DP <- 0xF83E
                  INCP                  ; Port B
                  ANIM  0xF0            ; Clear Keyboard lines.
                  ORIM  0x08            ; Assert power switch keys line.
                  OUTB                  ;
                  WAIT  0x0F
                  INB                   ; Read status of on/off slider.
                                        ; IB1 - RSV
                                        ; IB2 - PRO
                                        ; IB3 - OFF
                  ANIA  0x07            ; Maks off IB1, IB2 and IB3.
                  JRZP  LBL1D59         ; Taken if RUN pressed
                  SR                    ;
                  JRCP  LBL1D4F         ; Taken is RSV pressed.
                  SR                    ;
                  JRCP  LBL1D44         ; Taken if PRO pressed.
                  LIA   0x01            ; Calculator is OFF.
                  RTN                   ;
LBL1D44:          TSID  0x01
                  JRNZP LBL1D63
                  ANID  0xF8
                  ORID  0x01
LBL1D4C:          LIA   0x08
                  RTN
LBL1D4F:          TSID  0x04
                  JRNZP LBL1D63
                  ANID  0xF8
                  ORID  0x04
                  JRM   LBL1D4C
LBL1D59:          TSID  0x02            ; Is the RUN symbol already showing
                                        ;  on the LCD?
                  JRNZP LBL1D63         ; If so, scan keyboard.
                  ANID  0xF8            ; Clear all the LCD symbols.
                  ORID  0x02            ; Turn on the RUN symbol.
                  JRM   LBL1D4C         ; Return with A = 0x08
LBL1D63:          CAL   scan_keybd
                  JPNC  0x4003
                  PUSH
                  CAL   scan_keybd
                  EXAB
                  POP
                  JPNC  0x4003
                  LP    0x03
                  CPMA
                  JRNZP LBL1E66
                  CAL   MDL1162
                  TSID  0x01
                  JRNZP LBL1E3B
                  ORID  0x01
                  LIDL  0xBF
                  STD
                  LIDL  0x3D
                  CPIA  0x20
                  JRNCP LBL1DF1
                  CPIA  0x04
                  JRZP  LBL1DA1
                  CPIA  0x11
                  JRZP  LBL1DDB
                  CPIA  0x0C
                  JRCP  LBL1DA2
                  TSID  0x02
                  JRZP  LBL1DA1
                  SBIA  0x0C
                  ADIA  0xE1
                  LIB   0x43
LBL1D9B:          JRNCP LBL1D9E
                  INCB
LBL1D9E:          CAL   load_x
                  IXL
LBL1DA1:          RTN
LBL1DA2:          CPIA  0x07
                  JRCP  LBL1DCE
                  JRZM  LBL1DA1
                  CPIA  0x09
                  JRNZP LBL1DBC
                  TSID  0x02
                  JRZP  LBL1DB4
                  ANID  0xFD
                  JRM   LBL1D23
LBL1DB4:          ORID  0x02
                  LIDL  0x3C
                  ANID  0xFE
                  JRM   LBL1D23
LBL1DBC:          LIDL  0x3C
                  TSID  0x01
                  JRZP  LBL1DC6
                  ANID  0xFE
                  JRM   LBL1D23
LBL1DC6:          ORID  0x01
                  LIDL  0x3D
                  ANID  0xFD
                  JRM   LBL1D23
LBL1DCE:          TSID  0x02
                  JRZM  LBL1DA1
                  CPIA  0x00
                  JRNZP LBL1DD9
                  LIA   0x0B
                  RTN
LBL1DD9:          INCA
                  RTN
LBL1DDB:          TSID  0x02
                  JRZP  LBL1DE2
                  LIA   0xF1
                  RTN
LBL1DE2:          LIDL  0x3C
                  TSID  0x01
                  JRZM  LBL1DA1
                  LIDL  0x3E
                  TSID  0x02
                  JRZM  LBL1DA1
                  LIA   0xD1
                  RTN
LBL1DF1:          CPIA  0x51
                  JRNCP LBL1E1B
                  CPIA  0x34
                  JRZP  LBL1E05
                  TSID  0x02
                  JRZM  LBL1DA1
                  SBIA  0x35
                  ADIA  0xE5
                  LIB   0x43
                  JRM   LBL1D9B
LBL1E05:          TSID  0x02
                  JRZP  LBL1E0C
                  LIA   0xF4
                  RTN
LBL1E0C:          LIDL  0x3C
                  TSID  0x01
                  JRZM  LBL1DA1
                  LIDL  0x3E
                  TSID  0x02
                  JRZM  LBL1DA1
                  LIA   0xD4
                  RTN
LBL1E1B:          TSID  0x02
                  JRNZP LBL1E33
                  LIDL  0x3C
                  TSID  0x01
                  JRZM  LBL1DA1
                  LIDL  0x3E
                  TSID  0x02
                  JRZM  LBL1DA1
                  SBIA  0x51
                  ADIA  0x15
                  LIB   0x44
                  JRM   LBL1D9B
LBL1E33:          SBIA  0x51
                  ADIA  0xFB
                  LIB   0x43
                  JRM   LBL1D9B
LBL1E3B:          TSID  0x02
                  JRZP  LBL1E74
                  LIDL  0xBF
                  MVMD
                  CPMA
                  JRNZP LBL1E70
                  LIDL  0xB8
                  LP    0x08
                  MVBD
                  INCK
                  JRNCP LBL1E4D
                  INCL
LBL1E4D:          LP    0x08
                  LIDL  0xB8
                  EXBD
                  LIDL  0xBE
                  TSID  0x08
                  JRZP  LBL1E65
                  TEST  0x01
                  JRZP  LBL1E65
                  TSID  0x04
                  JRZP  LBL1E65
                  CAL   MDL1ED4
                  LIDP  0xF8BF
                  LDD
LBL1E65:          RTN
LBL1E66:          CAL   MDL1162
                  TSID  0x01
                  JRZP  LBL1F05
                  TSID  0x02
                  JRZP  LBL1F00
LBL1E70:          LIDL  0xBE
                  ANID  0xFD
LBL1E74:          LII   0xFB
LBL1E76:          TEST  0x01
                  JRZP  LBL1EBC
                  LIA   0xBA
                  LIB   0xF8
                  CAL   load_x
                  LIB   0x02
LBL1E82:          IXL
                  TSIA  0x0F
                  JRNZP LBL1E93
                  PUSH
                  LIA   0x00
                  CAL   wr_portc
                  WAIT  0xA0
                  LIA   0x01
                  CAL   wr_portc
                  POP
LBL1E93:          INCA
                  STD
                  JRNCP LBL1EB6
                  DECB
                  JRNZM LBL1E82
                  LIA   0xFF
                  LIB   0x02
LBL1E9E:          STD
                  DX
                  DECB
                  JRNZM LBL1E9E
                  LP    0x30
                  LIA   0xA0
                  LIB   0x08
LBL1EA8:          EXAM
                  LDM
                  INCA
                  INCP
                  DECB
                  JRNZM LBL1EA8
                  LIA   0x08
                  CAL   wr_portc
                  JP    LBL1D23
LBL1EB6:          LIDL  0xBE
                  TSID  0x04
                  JRNZP LBL1ECF
LBL1EBC:          CAL   MDL1162
                  TSID  0x01
                  JPNZ  LBL1D27
                  LIP   0x5D
                  ORIM  0x0F
                  OUTB
                  LIA   0x05
                  CAL   wr_portc
                  JP    LBL1D27
LBL1ECF:          CAL   MDL1ED4
LBL1ED1:          JP    LBL1D27
MDL1ED4:          LIDL  0xBE
                  TSID  0x10
                  JRZP  LBL1EFA
                  ANID  0xEF
                  LIDP  0xC6E8
                  LDD
LBL1EE0:          CAL   MDL1FBC         ; Given a character in A return the
                                        ;  start of the character table for that
                                        ;  caracter.
                  LIDP  0xC6E9
                  LDD
                  INCA
                  LIB   0xF8
                  CAL   load_y
                  CPIA  0x40            ; See if we are trying to print past the
                                        ;  12th LCD character. At 5 bytes/char
                                        ;  the first 12 go to 60.
                  LIB   0x05
                  JRNCP LBL1EF4
                  CAL   memcpy
                  RTN
LBL1EF4:          IXL
                  DYS
                  DECB
                  JRNZM LBL1EF4
                  RTN
LBL1EFA:          ORID  0x10
                  LIA   0x4C
                  JRM   LBL1EE0
LBL1F00:          INCI
                  JRNCM LBL1ED1
                  ANID  0xFE
LBL1F05:          TSID  0x08
                  JRZM  LBL1E76
                  LIDP  0xC6F1
                  LIA   0xB0
                  STD
                  CALL  0x45DB
                  CAL   MDL1162
                  ANID  0xE1
                  JP    LBL1D23
                  LIDL  0x69
                  CPIM  0x11
                  FILD
                  LIDL  0x64
                  OUTF
                  LIDL  0x00
                  LII   0x00
                  LII   0x00
                  LII   0x00
                  LII   0x00
                  LII   0x00
                  LII   0x00
                  LII   0x00
;                  LII   0xC2
                    .db     0x00
MDL1F32:          INCB
                  JRNCP LBL1F3C
LBL1F35:          RC                    ; Rotate left to search the first bit
                  SL                    ;  set.
                  JRCP  LBL1F3C
                  INCK                  ; K holds the count of the number of 0s
                                        ;  before the first 1.
                  JRM   LBL1F35
LBL1F3C:          LIA   0x34            ; Offset to unrecognized character.
                  JRNZP LBL1F42
                  LP    0x08            ; Load offset within table.
                  LDM                   ;
LBL1F42:          EXAB                  ; Return offset in B. A holds the leftover
                                        ;  bits, if more than one key was pressed
                                        ;  simultaneously, otherwise 0.
                  RTN
; ------------------------------------------------------------------------------
; 0x1F44
; Keyboard scan routine.
; The keyboard is driven by 3 bits in the B port (driven by the L register)
;  and 8 bits in the A port (K register).
; The scan happens in 2 phases.
; In the first phase the A port is the only one active.
; First the A0 is driven HIGH and A[7:1] are read. Then A1 is driven and A[7:2]
;  are read, etc. This loops for 7 times.
; The second phase drives the B[2:0] one bit at a time and reads the entire
;  A[7:0] port.
;
; Returns: A = 0xFF and C = 0 if no key is pressed.
; ------------------------------------------------------------------------------
scan_keybd:       TEST  0x08            ; Check if BRK key is pressed.
                  JRZP  LBL1F4C         ; If not, scan keyboard.
                  LIA   0x07
                  JRP   LBL1FAF

LBL1F4C:          LP    0x08            ; Clear K. K is used as the running
                  ANIM  0x00            ; offset within the character table.
                  LP    0x09            ; L is 7 and has dual use: is used to
                                        ;  count the number of keys that have
                                        ;  already been scanned and it is used
                                        ;  as loop counter
                  LIA   0x07            ;
                  EXAM                  ;
                  LP    0x0A            ; M = 0xFF.
                  ORIM  0xFF            ; This is the mask used to AND against
                                        ;  the data read from PortA.
                  LIB   0xFF            ;
                  LIP   0x5C            ; Drive A0 HIGH.
                  LIA   0x01            ;
                  EXAM                  ;
                  OUTA
                  INCP                  ; Point to 0x5D, PortB.
                  ANIM  0xF0            ; Clear the first 4 bits of PortB.
                                        ; These are used by the keyboard.
                                        ; During the first part of the keyboard
                                        ; scan we want Port B inactive and thus
                                        ; we drive it LOW.
                  OUTB
                  DECP                  ; Point back to PortA.
LBL1F63:          LDM                   ; Shift left the A Port to select the
                  RC                    ; next row to scan.
                  SL                    ;
                  EXAM                  ;
                  LP    0x0A
                  INA                   ; Read the status of the A Port
                  OUTA                  ; Drive the new value of PORTA.
                  EXAM                  ; Store value read from Port A in M.
                  RC                    ; Clear the carry for the shift.
                  SL                    ; Shift the mask left by 1.
                  ANMA                  ; Mask out the kline that are currently
                                        ; being driven HIGH to avoid confusing
                                        ; them with key presses.
                  EXAM
                  JRZP  LBL1F73         ; Branch if no key pressed.
                  CAL   MDL1F32
LBL1F73:          LP    0x09            ; Increment the number of keys that we
                  LDM                   ;  have gone through.
                  LP    0x08
                  ADM

                  DECL                  ; During the first part of the scan
                                        ;  the number of keys scanned
                                        ;  decreases by 1 each loop because of the
                                        ;  peculiar wiring of the keyboard.
                  LIP   0x5C
                  JRNZM LBL1F63
                  ANIM  0x00            ; Drive high on all Porta A pins.
                  OUTA
                  INCP
                  ORIM  0x01            ; Drive HIGH on PortB:0
                  LP    0x09            ; L used as counter to count the
                  LIA   0x03            ; 3 lines of Port B used for the
                  EXAM                  ; keyboard.
LBL1F86:          LIP   0x5D
                  OUTB                  ; Drive out PORTB with the new mask.
                  LDM
                  ANIA  0x03
                  ADM                   ; Add the contents of PORTB (ldm) with
                                        ;  themselves, thus multiplying by 2
                                        ;  (equivalent to a shift LEFT by 1)
                  WAIT  0x17
                  INA                   ; Read PortA.
                  JRZP  LBL1F94         ; If no key pressed skip decode.
                  CAL   MDL1F32
LBL1F94:          LP    0x08            ; Add 8 characters to the counter in K
                  ADIM  0x08            ;  since this scan of the B did not
                                        ;  find any button pressed.
                  DECL                  ; Decrement counter and loop if not
                  JRNZM LBL1F86         ; done.
                  LIP   0x5D            ; Done scanning. Release all the Port B
                  ANIM  0xF0            ; lines.
                  OUTB
                  EXAB                  ; Fetch character.
                  CPIA  0x35            ; Check if the offset is past the ROM
                                        ;  table.
                  JRCP  LBL1FA5
                  RTN
LBL1FA5:          ADIA  0x2F            ; Add the offset within the table to the
                                        ;  address of the beginning of said
                                        ;  table.
                  LIB   0x44
                  JRNCP LBL1FAC
                  INCB
LBL1FAC:          CAL   load_x
                  IXL
LBL1FAF:          SC
                  RTN
wr_portc:         LIP   0x5F
                  EXAM
                  OUTC
                  RTN
memcpy:           IXL
                  IYS
                  DECB
                  JRNZM memcpy
                  RTN
; Loads X with the address of character ROM corresponding to the character in A.
; Since there are no printable characters before 0x20 the value in the accumulator
MDL1FBC:          PUSH
                  LIA   0x64            ; $4464 start of Character ROM.
                  LIB   0x44
                  CAL   load_x
                  POP
                  LIB   0x00
                  CPIA  0x20            ; Make sure the character code is above
                                        ;  0x20, which is the first printable code
                                        ;  in the Sharp character map.
                  JRNCP LBL1FDC         ; Jump taken for valid characters.
                  SBIA  0x10            ; The char is between 0x00 and 0x20. There
                                        ;  are no printable characters at 0x10 but
                                        ;  there are Japanese characters at 0x10,
                                        ;  so subtract the missing characters.
LBL1FCC:          LP    0x0B            ; Save a copy of the character code in N
                  EXAM                  ;  to make the multplication by 5 easier.
                  LDM
                  SL                    ; Multiply by 2
                  SL                    ; Again, which multiplies by 4.
                  EXAB                  ; Switch with B.
                  SL                    ; Shift A, shifting in the carry, if any.
                  EXAB
                  ADM                   ; Add the value of A to the original
                                        ;  value in N, thus multiplying
                                        ;  by 5 (5 bytes per LCD character.)
                  LDM
                  JRNCP LBL1FD9         ; If carry is 1 increment B
                  INCB
LBL1FD9:          LP    0x04            ; Load Xl Pointer.
                  ADB                   ; X += (B, A)
                  RTN
LBL1FDC:          SBIA  0x20            ; Subtract the $20 offset.
                  JRM   LBL1FCC
LBL1FE0:          CAL   MDL1FEE
                  CAL   MDL1FF6
                  CALL  0x44EF
                  CAL   MDL1FF6
                  CAL   MDL1FEE
                  JP    LBL0ED7
MDL1FEE:          LIDP  0xF800
                  LII   0x0F
                  LP    0x30
                  EXWD
                  RTN
MDL1FF6:          LIDP  0xC6A7
                  LII   0x07
                  LP    0x30
                  EXWD
                  RTN
                  INCL
                  LII   0xFF
