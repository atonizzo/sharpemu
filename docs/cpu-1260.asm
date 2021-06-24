0000: 4E E0        wait     $E0
0002: 02 01        lia      $01
0004: 12 5F        lip      $5F
0006: DB           exam
0007: DF           outc
0008: 4E E0        wait     $E0
000A: 60 00        anim     $00
000C: DF           outc
000D: 6B 40        test     $40
000F: 7E 80 03     jpz      $8003
0012: 4E E0        wait     $E0
0014: 6B 40        test     $40
0016: 39 0F        jrzm     $0008
0018: 02 5C        lia      $5C
001A: 32           str
001B: 4C           ina
001C: 67 01        cpia     $01
001E: 38 2C        jrzp     $004B
0020: 12 5F        lip      $5F
0022: 10 00 00     lidp     $0000
0025: 57           ldd
0026: 67 02        cpia     $02
0028: 3A 15        jrcp     $003E
002A: 38 1A        jrzp     $0045
002C: 66 F3        tsia     $F3
002E: 38 18        jrzp     $0047
0030: 02 11        lia      $11
0032: DB           exam
0033: 00 02        lii      $02
0035: 02 FF        lia      $FF
0037: 12 5C        lip      $5C
0039: 1E           film
003A: 5D           outa
003B: DD           outb
003C: 5F           outf
003D: DF           outc
003E: 42           inca
003F: 6B 40        test     $40
0041: 29 04        jrnzm    $003E
0043: 2D 44        jrm      $0000
0045: 02 60        lia      $60
0047: DB           exam
0048: DF           outc
0049: 2D 0C        jrm      $003E
004B: 10 60 00     lidp     $6000
004E: 00 BF        lii      $BF
0050: 02 00        lia      $00
0052: 1F           fild
0053: 02 01        lia      $01
0055: E4 3D        cal      $043D
0057: 88           lp       $08
0058: 00 4F        lii      $4F
005A: 02 96        lia      $96
005C: 1E           film
005D: 88           lp       $08
005E: 00 4F        lii      $4F
0060: 1C           srw
0061: 00 23        lii      $23
0063: 02 03        lia      $03
0065: 34           push
0066: AF           lp       $2F
0067: 13 53        liq      $53
0069: 0E           adw
006A: 2F 05        loop     $0066
006C: 34           push
006D: AF           lp       $2F
006E: 13 53        liq      $53
0070: 0F           sbw
0071: 2F 05        loop     $006D
0073: 00 3F        lii      $3F
0075: 10 60 00     lidp     $6000
0078: 90           lp       $10
0079: 19           exwd
007A: 11 00        lidl     $00
007C: 90           lp       $10
007D: 18           mvwd
007E: 6B 40        test     $40
0080: 39 81        jrzm     $0000
0082: 6B 01        test     $01
0084: 39 07        jrzm     $007E
0086: 01 01        lij      $01
0088: E3 C1        cal      $03C1
008A: 2B 0D        jrncm    $007E
008C: 82           lp       $02
008D: 63 2F        cpim     $2F
008F: 29 12        jrnzm    $007E
0091: 12 5F        lip      $5F
0093: 59           ldm
0094: 61 31        orim     $31
0096: 66 10        tsia     $10
0098: 38 03        jrzp     $009C
009A: 60 21        anim     $21
009C: DF           outc
009D: 2D 41        jrm      $005D
009F: A9           lp       $29
00A0: 2C 02        jrp      $00A3
00A2: 91           lp       $11
00A3: 00 06        lii      $06
00A5: 1C           srw
00A6: 20           ldp
00A7: 75 07        sbia     $07
00A9: 30           stp
00AA: 59           ldm
00AB: 58           swp
00AC: DB           exam
00AD: 37           rtn
00AE: AA           lp       $2A
00AF: 2C 02        jrp      $00B2
00B1: 92           lp       $12
00B2: 59           ldm
00B3: 58           swp
00B4: 64 0F        ania     $0F
00B6: 51           decp
00B7: 60 F0        anim     $F0
00B9: 47           orma
00BA: 20           ldp
00BB: 74 06        adia     $06
00BD: 30           stp
00BE: 00 05        lii      $05
00C0: 1D           slw
00C1: 37           rtn
00C2: 90           lp       $10
00C3: 00 07        lii      $07
00C5: 1C           srw
00C6: 37           rtn
00C7: 91           lp       $11
00C8: 62 0F        tsim     $0F
00CA: 28 0E        jrnzp    $00D9
00CC: 92           lp       $12
00CD: 02 05        lia      $05
00CF: 63 00        cpim     $00
00D1: 28 07        jrnzp    $00D9
00D3: 50           incp
00D4: 43           deca
00D5: 2B 07        jrncm    $00CF
00D7: D0           sc
00D8: 37           rtn
00D9: D1           rc
00DA: 37           rtn
00DB: B1           lp       $31
00DC: 60 FD        anim     $FD
00DE: 98           lp       $18
00DF: 2C 08        jrp      $00E8
00E1: B1           lp       $31
00E2: 60 FB        anim     $FB
00E4: B1           lp       $31
00E5: 60 FE        anim     $FE
00E7: 90           lp       $10
00E8: 00 07        lii      $07
00EA: 02 00        lia      $00
00EC: 1E           film
00ED: 37           rtn
00EE: 91           lp       $11
00EF: 2C 01        jrp      $00F1
00F1: 00 01        lii      $01
00F3: 02 10        lia      $10
00F5: 0C           adn
00F6: D1           rc
00F7: 37           rtn
00F8: B1           lp       $31
00F9: 60 FD        anim     $FD
00FB: 98           lp       $18
00FC: 00 07        lii      $07
00FE: 02 00        lia      $00
0100: 1E           film
0101: 9A           lp       $1A
0102: 61 10        orim     $10
0104: 37           rtn
0105: 99           lp       $19
0106: 2C 05        jrp      $010C
0108: A9           lp       $29
0109: 2C 02        jrp      $010C
010B: 91           lp       $11
010C: 60 F0        anim     $F0
010E: 50           incp
010F: 02 00        lia      $00
0111: 00 05        lii      $05
0113: 1E           film
0114: 37           rtn
0115: 99           lp       $19
0116: 2C 02        jrp      $0119
0118: 91           lp       $11
0119: 00 01        lii      $01
011B: 02 10        lia      $10
011D: 0D           sbn
011E: 37           rtn
011F: 98           lp       $18
0120: 2C 02        jrp      $0123
0122: 90           lp       $10
0123: 60 00        anim     $00
0125: 50           incp
0126: 60 0F        anim     $0F
0128: 37           rtn
0129: 91           lp       $11
012A: 59           ldm
012B: 64 0F        ania     $0F
012D: 60 F0        anim     $F0
012F: 99           lp       $19
0130: 13 11        liq      $11
0132: 00 01        lii      $01
0134: 0F           sbw
0135: 91           lp       $11
0136: 47           orma
0137: 37           rtn
0138: B1           lp       $31
0139: 60 F7        anim     $F7
013B: 62 02        tsim     $02
013D: 38 03        jrzp     $0141
013F: 61 08        orim     $08
0141: A8           lp       $28
0142: 2C 19        jrp      $015C
0144: B1           lp       $31
0145: 60 FD        anim     $FD
0147: 62 08        tsim     $08
0149: 38 03        jrzp     $014D
014B: 61 02        orim     $02
014D: 98           lp       $18
014E: 13 28        liq      $28
0150: 2C 52        jrp      $01A3
0152: B1           lp       $31
0153: 60 FE        anim     $FE
0155: 62 02        tsim     $02
0157: 38 03        jrzp     $015B
0159: 61 01        orim     $01
015B: 90           lp       $10
015C: 13 18        liq      $18
015E: 2C 44        jrp      $01A3
0160: B1           lp       $31
0161: 60 FE        anim     $FE
0163: 62 08        tsim     $08
0165: 38 03        jrzp     $0169
0167: 61 01        orim     $01
0169: 90           lp       $10
016A: 13 28        liq      $28
016C: 2C 36        jrp      $01A3
016E: B1           lp       $31
016F: 60 FD        anim     $FD
0171: 62 01        tsim     $01
0173: 38 03        jrzp     $0177
0175: 61 02        orim     $02
0177: 98           lp       $18
0178: 2C 28        jrp      $01A1
017A: B1           lp       $31
017B: 60 FE        anim     $FE
017D: 62 04        tsim     $04
017F: 38 03        jrzp     $0183
0181: 61 01        orim     $01
0183: 90           lp       $10
0184: 13 20        liq      $20
0186: 2C 1C        jrp      $01A3
0188: A0           lp       $20
0189: 2D 2E        jrm      $015C
018B: B1           lp       $31
018C: 60 FB        anim     $FB
018E: 62 01        tsim     $01
0190: 38 03        jrzp     $0194
0192: 61 04        orim     $04
0194: A0           lp       $20
0195: 2C 0B        jrp      $01A1
0197: B1           lp       $31
0198: 60 F7        anim     $F7
019A: 62 01        tsim     $01
019C: 38 03        jrzp     $01A0
019E: 61 08        orim     $08
01A0: A8           lp       $28
01A1: 13 10        liq      $10
01A3: 00 07        lii      $07
01A5: 08           mvw
01A6: 37           rtn
01A7: B1           lp       $31
01A8: 59           ldm
01A9: D2           sr
01AA: 60 FC        anim     $FC
01AC: 64 01        ania     $01
01AE: 47           orma
01AF: 5A           sl
01B0: 5A           sl
01B1: 64 02        ania     $02
01B3: 47           orma
01B4: 90           lp       $10
01B5: 13 18        liq      $18
01B7: 00 07        lii      $07
01B9: 09           exw
01BA: 37           rtn
01BB: B1           lp       $31
01BC: 59           ldm
01BD: 60 FA        anim     $FA
01BF: 34           push
01C0: D2           sr
01C1: D2           sr
01C2: 64 01        ania     $01
01C4: 47           orma
01C5: 5B           pop
01C6: 5A           sl
01C7: 5A           sl
01C8: 64 04        ania     $04
01CA: 47           orma
01CB: 37           rtn
01CC: 91           lp       $11
01CD: 59           ldm
01CE: 64 F0        ania     $F0
01D0: A9           lp       $29
01D1: 60 0F        anim     $0F
01D3: 47           orma
01D4: 90           lp       $10
01D5: 59           ldm
01D6: A8           lp       $28
01D7: DB           exam
01D8: 37           rtn
01D9: 99           lp       $19
01DA: 59           ldm
01DB: 64 F0        ania     $F0
01DD: 91           lp       $11
01DE: 60 0F        anim     $0F
01E0: 47           orma
01E1: 98           lp       $18
01E2: 59           ldm
01E3: 90           lp       $10
01E4: DB           exam
01E5: 37           rtn
01E6: 91           lp       $11
01E7: 59           ldm
01E8: 64 F0        ania     $F0
01EA: 99           lp       $19
01EB: 60 0F        anim     $0F
01ED: 47           orma
01EE: 90           lp       $10
01EF: 59           ldm
01F0: 98           lp       $18
01F1: DB           exam
01F2: 37           rtn
01F3: 99           lp       $19
01F4: 59           ldm
01F5: 13 11        liq      $11
01F7: 00 06        lii      $06
01F9: 08           mvw
01FA: 99           lp       $19
01FB: 60 0F        anim     $0F
01FD: 64 F0        ania     $F0
01FF: 47           orma
0200: 37           rtn
0201: 91           lp       $11
0202: 59           ldm
0203: 13 19        liq      $19
0205: 00 06        lii      $06
0207: 08           mvw
0208: 91           lp       $11
0209: 60 0F        anim     $0F
020B: 64 F0        ania     $F0
020D: 47           orma
020E: 37           rtn
020F: 99           lp       $19
0210: 59           ldm
0211: 60 0F        anim     $0F
0213: 64 F0        ania     $F0
0215: DA           exab
0216: 51           decp
0217: 02 00        lia      $00
0219: DB           exam
021A: 50           incp
021B: 00 01        lii      $01
021D: 13 03        liq      $03
021F: 0F           sbw
0220: D1           rc
0221: 37           rtn
0222: 86           lp       $06
0223: 2C 02        jrp      $0226
0225: 84           lp       $04
0226: 13 02        liq      $02
0228: 0A           mvb
0229: 37           rtn
022A: 02 B0        lia      $B0
022C: 03 67        lib      $67
022E: E2 25        cal      $0225
0230: 05           dx
0231: 37           rtn
0232: 02 50        lia      $50
0234: 03 66        lib      $66
0236: 2D 09        jrm      $022E
0238: 02 80        lia      $80
023A: 03 20        lib      $20
023C: 2D 0F        jrm      $022E
023E: 02 B0        lia      $B0
0240: 03 67        lib      $67
0242: E2 22        cal      $0222
0244: 07           dy
0245: 37           rtn
0246: 02 80        lia      $80
0248: 03 20        lib      $20
024A: 2D 09        jrm      $0242
024C: A1           lp       $21
024D: 59           ldm
024E: 13 19        liq      $19
0250: 00 06        lii      $06
0252: 08           mvw
0253: A1           lp       $21
0254: 60 0F        anim     $0F
0256: 64 F0        ania     $F0
0258: 47           orma
0259: 37           rtn
025A: A1           lp       $21
025B: 59           ldm
025C: 13 11        liq      $11
025E: 00 06        lii      $06
0260: 08           mvw
0261: A1           lp       $21
0262: 60 0F        anim     $0F
0264: 64 F0        ania     $F0
0266: 47           orma
0267: 37           rtn
0268: 91           lp       $11
0269: 59           ldm
026A: 60 0F        anim     $0F
026C: 64 F0        ania     $F0
026E: 8A           lp       $0A
026F: DB           exam
0270: 99           lp       $19
0271: 59           ldm
0272: 60 0F        anim     $0F
0274: 64 F0        ania     $F0
0276: 58           swp
0277: 8A           lp       $0A
0278: 47           orma
0279: 37           rtn
027A: 8A           lp       $0A
027B: 59           ldm
027C: 64 F0        ania     $F0
027E: 91           lp       $11
027F: 60 0F        anim     $0F
0281: 47           orma
0282: 8A           lp       $0A
0283: 59           ldm
0284: 58           swp
0285: 64 F0        ania     $F0
0287: 99           lp       $19
0288: 60 0F        anim     $0F
028A: 47           orma
028B: 37           rtn
028C: B1           lp       $31
028D: 60 00        anim     $00
028F: 99           lp       $19
0290: 62 08        tsim     $08
0292: 38 06        jrzp     $0299
0294: 60 F7        anim     $F7
0296: B1           lp       $31
0297: 61 02        orim     $02
0299: 2C 04        jrp      $029E
029B: B1           lp       $31
029C: 60 00        anim     $00
029E: 91           lp       $11
029F: 62 08        tsim     $08
02A1: 38 06        jrzp     $02A8
02A3: 60 F7        anim     $F7
02A5: B1           lp       $31
02A6: 61 01        orim     $01
02A8: 22           ldr
02A9: 74 02        adia     $02
02AB: 10 66 3C     lidp     $663C
02AE: 52           std
02AF: B0           lp       $30
02B0: 60 00        anim     $00
02B2: 37           rtn
02B3: 99           lp       $19
02B4: 60 F7        anim     $F7
02B6: B1           lp       $31
02B7: 62 02        tsim     $02
02B9: 38 04        jrzp     $02BE
02BB: 99           lp       $19
02BC: 61 08        orim     $08
02BE: 02 00        lia      $00
02C0: B1           lp       $31
02C1: 62 01        tsim     $01
02C3: 38 03        jrzp     $02C7
02C5: 02 08        lia      $08
02C7: 91           lp       $11
02C8: 60 F7        anim     $F7
02CA: D1           rc
02CB: 47           orma
02CC: 01 01        lij      $01
02CE: 37           rtn
02CF: D1           rc
02D0: B1           lp       $31
02D1: 59           ldm
02D2: D2           sr
02D3: 64 01        ania     $01
02D5: 03 00        lib      $00
02D7: 83           lp       $03
02D8: C4           adcm
02D9: 59           ldm
02DA: 64 01        ania     $01
02DC: B1           lp       $31
02DD: 60 FE        anim     $FE
02DF: 47           orma
02E0: 37           rtn
02E1: 91           lp       $11
02E2: 59           ldm
02E3: 64 F0        ania     $F0
02E5: 97           lp       $17
02E6: 13 1F        liq      $1F
02E8: 2C 08        jrp      $02F1
02EA: 99           lp       $19
02EB: 59           ldm
02EC: 64 F0        ania     $F0
02EE: 9F           lp       $1F
02EF: 13 17        liq      $17
02F1: 00 06        lii      $06
02F3: 0E           adw
02F4: 50           incp
02F5: 60 0F        anim     $0F
02F7: 47           orma
02F8: D1           rc
02F9: 37           rtn
02FA: 10 66 3D     lidp     $663D
02FD: D6 01        tsid     $01
02FF: 38 05        jrzp     $0305
0301: D4 FE        anid     $FE
0303: 2C 0C        jrp      $0310
0305: 97           lp       $17
0306: 00 06        lii      $06
0308: 02 50        lia      $50
030A: 0C           adn
030B: 97           lp       $17
030C: 60 00        anim     $00
030E: E4 70        cal      $0470
0310: 97           lp       $17
0311: 60 00        anim     $00
0313: 37           rtn
0314: B1           lp       $31
0315: 62 01        tsim     $01
0317: 28 04        jrnzp    $031C
0319: 61 01        orim     $01
031B: 37           rtn
031C: 60 FE        anim     $FE
031E: 37           rtn
031F: 99           lp       $19
0320: 59           ldm
0321: 60 0F        anim     $0F
0323: 64 F0        ania     $F0
0325: 34           push
0326: 91           lp       $11
0327: 59           ldm
0328: 64 F0        ania     $F0
032A: 99           lp       $19
032B: 47           orma
032C: 9F           lp       $1F
032D: 13 17        liq      $17
032F: 2C 01        jrp      $0331
0331: 00 06        lii      $06
0333: 0F           sbw
0334: 5B           pop
0335: 50           incp
0336: 60 0F        anim     $0F
0338: 47           orma
0339: 37           rtn
033A: 95           lp       $15
033B: 63 99        cpim     $99
033D: 28 11        jrnzp    $034F
033F: 96           lp       $16
0340: 63 99        cpim     $99
0342: 28 0B        jrnzp    $034E
0344: 02 01        lia      $01
0346: 00 05        lii      $05
0348: 0C           adn
0349: 97           lp       $17
034A: 60 00        anim     $00
034C: E4 70        cal      $0470
034E: 37           rtn
034F: 63 00        cpim     $00
0351: 29 04        jrnzm    $034E
0353: 96           lp       $16
0354: 63 00        cpim     $00
0356: 39 0E        jrzm     $0349
0358: 37           rtn
0359: 99           lp       $19
035A: 60 F7        anim     $F7
035C: B1           lp       $31
035D: 62 02        tsim     $02
035F: 38 06        jrzp     $0366
0361: 60 FD        anim     $FD
0363: 99           lp       $19
0364: 61 08        orim     $08
0366: 98           lp       $18
0367: 00 07        lii      $07
0369: 19           exwd
036A: 37           rtn
036B: 91           lp       $11
036C: 60 F7        anim     $F7
036E: B1           lp       $31
036F: 62 01        tsim     $01
0371: 38 06        jrzp     $0378
0373: 60 FE        anim     $FE
0375: 91           lp       $11
0376: 61 08        orim     $08
0378: 90           lp       $10
0379: 2D 13        jrm      $0367
037B: 10 28 A0     lidp     $28A0
037E: E3 6B        cal      $036B
0380: 10 28 A0     lidp     $28A0
0383: 90           lp       $10
0384: 00 07        lii      $07
0386: 18           mvwd
0387: B1           lp       $31
0388: 60 FE        anim     $FE
038A: 91           lp       $11
038B: 62 08        tsim     $08
038D: 38 06        jrzp     $0394
038F: 60 F7        anim     $F7
0391: B1           lp       $31
0392: 61 01        orim     $01
0394: 37           rtn
0395: 10 28 A8     lidp     $28A8
0398: E3 59        cal      $0359
039A: 10 28 A8     lidp     $28A8
039D: 2C 01        jrp      $039F
039F: 98           lp       $18
03A0: 00 07        lii      $07
03A2: 18           mvwd
03A3: B1           lp       $31
03A4: 60 FD        anim     $FD
03A6: 99           lp       $19
03A7: 62 08        tsim     $08
03A9: 38 06        jrzp     $03B0
03AB: 60 F7        anim     $F7
03AD: B1           lp       $31
03AE: 61 02        orim     $02
03B0: 37           rtn
03B1: 84           lp       $04
03B2: 10 66 27     lidp     $6627
03B5: 1A           mvbd
03B6: 00 01        lii      $01
03B8: 85           lp       $05
03B9: 02 01        lia      $01
03BB: 0C           adn
03BC: 11 27        lidl     $27
03BE: 84           lp       $04
03BF: 1B           exbd
03C0: 37           rtn
03C1: 02 34        lia      $34
03C3: 6B 08        test     $08
03C5: 28 5D        jrnzp    $0423
03C7: 88           lp       $08
03C8: 60 00        anim     $00
03CA: 89           lp       $09
03CB: 02 07        lia      $07
03CD: DB           exam
03CE: 8A           lp       $0A
03CF: 61 FF        orim     $FF
03D1: 03 FF        lib      $FF
03D3: 12 5C        lip      $5C
03D5: 02 01        lia      $01
03D7: DB           exam
03D8: 5D           outa
03D9: 50           incp
03DA: 60 F0        anim     $F0
03DC: DD           outb
03DD: 51           decp
03DE: 4E 25        wait     $25
03E0: 59           ldm
03E1: D1           rc
03E2: 5A           sl
03E3: DB           exam
03E4: 8A           lp       $0A
03E5: 4C           ina
03E6: 5D           outa
03E7: 4E 0D        wait     $0D
03E9: DB           exam
03EA: D1           rc
03EB: 5A           sl
03EC: 46           anma
03ED: DB           exam
03EE: 38 03        jrzp     $03F2
03F0: E4 25        cal      $0425
03F2: 89           lp       $09
03F3: 59           ldm
03F4: 88           lp       $08
03F5: 44           adm
03F6: C9           decl
03F7: 12 5C        lip      $5C
03F9: 29 1A        jrnzm    $03E0
03FB: 60 00        anim     $00
03FD: 5D           outa
03FE: 50           incp
03FF: 61 01        orim     $01
0401: 89           lp       $09
0402: 02 03        lia      $03
0404: DB           exam
0405: 12 5D        lip      $5D
0407: DD           outb
0408: 59           ldm
0409: 64 03        ania     $03
040B: 44           adm
040C: 4E 25        wait     $25
040E: 4C           ina
040F: 38 03        jrzp     $0413
0411: E4 25        cal      $0425
0413: 88           lp       $08
0414: 70 08        adim     $08
0416: C9           decl
0417: 29 13        jrnzm    $0405
0419: 12 5D        lip      $5D
041B: 60 F0        anim     $F0
041D: DD           outb
041E: DA           exab
041F: 67 36        cpia     $36
0421: 2A 02        jrncp    $0424
0423: D0           sc
0424: 37           rtn
0425: C2           incb
0426: 2A 08        jrncp    $042F
0428: D1           rc
0429: 5A           sl
042A: 3A 04        jrcp     $042F
042C: 48           inck
042D: 2D 06        jrm      $0428
042F: 02 35        lia      $35
0431: 28 03        jrnzp    $0435
0433: 88           lp       $08
0434: 59           ldm
0435: DA           exab
0436: 37           rtn
0437: 02 00        lia      $00     ; Turn ON display.
0439: 2C 03        jrp      $043D   ;
043B: 02 01        lia      $01     ; Turn OFF display.
043D: 12 5F        lip      $5F     ; Write PORTC.
043F: DB           exam             ;
0440: DF           outc             ;
0441: 37           rtn              ;
0442: 02 A5        lia      $A5
0444: A0           lp       $20
0445: 00 07        lii      $07
0447: 1E           film
0448: 37           rtn
0449: E4 42        cal      $0442
044B: A0           lp       $20
044C: 02 5A        lia      $5A
044E: DB           exam
044F: 02 08        lia      $08
0451: E4 3D        cal      $043D
0453: 02 08        lia      $08
0455: E4 3D        cal      $043D
0457: 37           rtn
0458: E4 42        cal      $0442
045A: 6B 08        test     $08
045C: 28 03        jrnzp    $0460
045E: E4 4F        cal      $044F
0460: 37           rtn
0461: 12 5C        lip      $5C
0463: 60 00        anim     $00
0465: 5D           outa
0466: 50           incp
0467: 60 C0        anim     $C0
0469: DD           outb
046A: 4E 30        wait     $30
046C: CC           inb
046D: 66 01        tsia     $01
046F: 37           rtn
0470: E0 C7        cal      $00C7
0472: 3A 2D        jrcp     $04A0
0474: 91           lp       $11
0475: 62 0F        tsim     $0F
0477: 38 2C        jrzp     $04A4
0479: 02 10        lia      $10
047B: 00 01        lii      $01
047D: 0C           adn
047E: 91           lp       $11
047F: 00 06        lii      $06
0481: 1C           srw
0482: 91           lp       $11
0483: 59           ldm
0484: 58           swp
0485: DB           exam
0486: 90           lp       $10
0487: 62 F0        tsim     $F0
0489: 38 18        jrzp     $04A2
048B: 59           ldm
048C: 64 F0        ania     $F0
048E: 67 10        cpia     $10
0490: 7E 0F B6     jpz      $0FB6
0493: 67 80        cpia     $80
0495: 38 0A        jrzp     $04A0
0497: 62 0F        tsim     $0F
0499: 28 08        jrnzp    $04A2
049B: 50           incp
049C: 62 F0        tsim     $F0
049E: 28 03        jrnzp    $04A2
04A0: E0 E4        cal      $00E4
04A2: D1           rc
04A3: 37           rtn
04A4: 92           lp       $12
04A5: 62 F0        tsim     $F0
04A7: 29 22        jrnzm    $0486
04A9: 97           lp       $17
04AA: 00 05        lii      $05
04AC: 1D           slw
04AD: 00 01        lii      $01
04AF: 02 10        lia      $10
04B1: 0D           sbn
04B2: 2D 0F        jrm      $04A4
04B4: E3 14        cal      $0314
04B6: 92           lp       $12
04B7: 62 F0        tsim     $F0
04B9: 38 19        jrzp     $04D3
04BB: 9A           lp       $1A
04BC: 62 F0        tsim     $F0
04BE: 38 16        jrzp     $04D5
04C0: E1 29        cal      $0129
04C2: 02 10        lia      $10
04C4: 98           lp       $18
04C5: 62 80        tsim     $80
04C7: 38 22        jrzp     $04EA
04C9: 9A           lp       $1A
04CA: 00 05        lii      $05
04CC: 1C           srw
04CD: 99           lp       $19
04CE: 00 01        lii      $01
04D0: 0C           adn
04D1: 2D 0E        jrm      $04C4
04D3: E1 52        cal      $0152
04D5: 91           lp       $11
04D6: 62 0F        tsim     $0F
04D8: 28 0E        jrnzp    $04E7
04DA: 00 04        lii      $04
04DC: 50           incp
04DD: 63 00        cpim     $00
04DF: 28 07        jrnzp    $04E7
04E1: 41           deci
04E2: 2B 07        jrncm    $04DC
04E4: 50           incp
04E5: 60 00        anim     $00
04E7: E4 70        cal      $0470
04E9: 37           rtn
04EA: 99           lp       $19
04EB: 00 01        lii      $01
04ED: 0D           sbn
04EE: 3A 08        jrcp     $04F7
04F0: 92           lp       $12
04F1: 00 05        lii      $05
04F3: 1C           srw
04F4: 91           lp       $11
04F5: 2D 28        jrm      $04CE
04F7: E2 CF        cal      $02CF
04F9: B1           lp       $31
04FA: 62 01        tsim     $01
04FC: 28 09        jrnzp    $0506
04FE: E2 EA        cal      $02EA
0500: E2 01        cal      $0201
0502: E2 CF        cal      $02CF
0504: 2D 30        jrm      $04D5
0506: E3 1F        cal      $031F
0508: 3A 05        jrcp     $050E
050A: E3 14        cal      $0314
050C: 2D 0D        jrm      $0500
050E: E2 01        cal      $0201
0510: E1 05        cal      $0105
0512: E3 1F        cal      $031F
0514: 2D 15        jrm      $0500
0516: E1 6E        cal      $016E
0518: E2 CF        cal      $02CF
051A: 91           lp       $11
051B: 13 19        liq      $19
051D: 00 01        lii      $01
051F: 0E           adw
0520: A1           lp       $21
0521: 13 11        liq      $11
0523: 00 06        lii      $06
0525: 08           mvw
0526: E2 68        cal      $0268
0528: 91           lp       $11
0529: 02 00        lia      $00
052B: 1E           film
052C: 89           lp       $09
052D: 02 0B        lia      $0B
052F: DB           exam
0530: A7           lp       $27
0531: 59           ldm
0532: 64 0F        ania     $0F
0534: A2           lp       $22
0535: 00 05        lii      $05
0537: 1C           srw
0538: 40           inci
0539: 43           deca
053A: 3A 07        jrcp     $0542
053C: 97           lp       $17
053D: 13 1F        liq      $1F
053F: 0E           adw
0540: 2D 08        jrm      $0539
0542: C9           decl
0543: 3A 05        jrcp     $0549
0545: 91           lp       $11
0546: 1C           srw
0547: 2D 18        jrm      $0530
0549: E2 7A        cal      $027A
054B: E4 70        cal      $0470
054D: 37           rtn
054E: E0 F8        cal      $00F8
0550: E2 CF        cal      $02CF
0552: E0 EE        cal      $00EE
0554: 99           lp       $19
0555: 13 11        liq      $11
0557: 00 01        lii      $01
0559: 0F           sbw
055A: 90           lp       $10
055B: 13 18        liq      $18
055D: 08           mvw
055E: E2 68        cal      $0268
0560: A1           lp       $21
0561: 00 06        lii      $06
0563: 02 00        lia      $00
0565: 1E           film
0566: 89           lp       $09
0567: 02 0C        lia      $0C
0569: DB           exam
056A: A7           lp       $27
056B: 1D           slw
056C: 9F           lp       $1F
056D: 13 17        liq      $17
056F: 0F           sbw
0570: 3A 0E        jrcp     $057F
0572: A7           lp       $27
0573: 70 01        adim     $01
0575: 59           ldm
0576: 64 0F        ania     $0F
0578: 67 0A        cpia     $0A
057A: 29 0F        jrnzm    $056C
057C: 79 0F B1     jp       $0FB1
057F: 9F           lp       $1F
0580: 13 17        liq      $17
0582: 0E           adw
0583: 9F           lp       $1F
0584: 1D           slw
0585: C9           decl
0586: 2B 1D        jrncm    $056A
0588: 91           lp       $11
0589: 13 21        liq      $21
058B: 08           mvw
058C: 2D 44        jrm      $0549
058E: 10 28 B8     lidp     $28B8
0591: 90           lp       $10
0592: 00 07        lii      $07
0594: 19           exwd
0595: 10 28 B8     lidp     $28B8
0598: 90           lp       $10
0599: 18           mvwd
059A: 90           lp       $10
059B: 02 99        lia      $99
059D: DB           exam
059E: 91           lp       $11
059F: 02 90        lia      $90
05A1: DB           exam
05A2: 37           rtn
05A3: E0 E4        cal      $00E4
05A5: 10 66 27     lidp     $6627
05A8: 92           lp       $12
05A9: 00 01        lii      $01
05AB: 2D 13        jrm      $0599
05AD: E0 DB        cal      $00DB
05AF: 9A           lp       $1A
05B0: 61 60        orim     $60
05B2: 51           decp
05B3: 61 90        orim     $90
05B5: 51           decp
05B6: 61 99        orim     $99
05B8: 37           rtn
05B9: B0           lp       $30
05BA: 60 FE        anim     $FE
05BC: D1           rc
05BD: D2           sr
05BE: 2A 03        jrncp    $05C2
05C0: 61 01        orim     $01
05C2: 80           lp       $00
05C3: DB           exam
05C4: 59           ldm
05C5: 01 17        lij      $17
05C7: 81           lp       $01
05C8: 45           sbm
05C9: 59           ldm
05CA: 31           stq
05CB: 74 08        adia     $08
05CD: 34           push
05CE: B0           lp       $30
05CF: 01 01        lij      $01
05D1: 62 01        tsim     $01
05D3: 30           stp
05D4: 38 04        jrzp     $05D9
05D6: 09           exw
05D7: 5B           pop
05D8: 37           rtn
05D9: 59           ldm
05DA: DA           exab
05DB: 60 0F        anim     $0F
05DD: 09           exw
05DE: 5B           pop
05DF: 30           stp
05E0: DA           exab
05E1: 64 F0        ania     $F0
05E3: DB           exam
05E4: 37           rtn
05E5: E1 6E        cal      $016E
05E7: E1 18        cal      $0118
05E9: 2C 05        jrp      $05EF
05EB: E1 6E        cal      $016E
05ED: E0 EE        cal      $00EE
05EF: E1 0B        cal      $010B
05F1: 90           lp       $10
05F2: 59           ldm
05F3: 64 F0        ania     $F0
05F5: 67 90        cpia     $90
05F7: 28 15        jrnzp    $060D
05F9: E0 EE        cal      $00EE
05FB: 90           lp       $10
05FC: 59           ldm
05FD: 64 F0        ania     $F0
05FF: 67 90        cpia     $90
0601: 02 0A        lia      $0A
0603: 28 1B        jrnzp    $061F
0605: 92           lp       $12
0606: 13 1A        liq      $1A
0608: 00 05        lii      $05
060A: 09           exw
060B: 2C 15        jrp      $0621
060D: 67 10        cpia     $10
060F: 38 11        jrzp     $0621
0611: 62 0F        tsim     $0F
0613: 28 0D        jrnzp    $0621
0615: 91           lp       $11
0616: 59           ldm
0617: 64 F0        ania     $F0
0619: 58           swp
061A: 03 09        lib      $09
061C: 83           lp       $03
061D: 45           sbm
061E: 59           ldm
061F: E5 B9        cal      $05B9
0621: E1 D9        cal      $01D9
0623: E4 70        cal      $0470
0625: 37           rtn
0626: E0 DB        cal      $00DB
0628: 10 20 7C     lidp     $207C
062B: D6 02        tsid     $02
062D: 7E 00 F6     jpz      $00F6
0630: D6 10        tsid     $10
0632: 28 05        jrnzp    $0638
0634: E7 12        cal      $0712
0636: D0           sc
0637: 37           rtn
0638: 98           lp       $18
0639: 61 99        orim     $99
063B: 50           incp
063C: 61 90        orim     $90
063E: 50           incp
063F: 61 90        orim     $90
0641: D0           sc
0642: 37           rtn
0643: 98           lp       $18
0644: 62 F0        tsim     $F0
0646: 28 1B        jrnzp    $0662
0648: 59           ldm
0649: 99           lp       $19
064A: 67 01        cpia     $01
064C: 28 0C        jrnzp    $0659
064E: 59           ldm
064F: 64 F0        ania     $F0
0651: 67 30        cpia     $30
0653: 2A 0E        jrncp    $0662
0655: 58           swp
0656: 74 0A        adia     $0A
0658: 37           rtn
0659: 67 00        cpia     $00
065B: 28 06        jrnzp    $0662
065D: 59           ldm
065E: 58           swp
065F: 64 0F        ania     $0F
0661: 37           rtn
0662: 02 0E        lia      $0E
0664: 37           rtn
0665: 98           lp       $18
0666: 62 FF        tsim     $FF
0668: 28 0B        jrnzp    $0674
066A: 99           lp       $19
066B: 59           ldm
066C: 64 F0        ania     $F0
066E: 67 80        cpia     $80
0670: 2A 03        jrncp    $0674
0672: 58           swp
0673: 37           rtn
0674: 02 07        lia      $07
0676: 37           rtn
0677: 8D           lp       $0D
0678: 60 00        anim     $00
067A: E1 08        cal      $0108
067C: E1 05        cal      $0105
067E: 37           rtn
067F: B0           lp       $30
0680: 61 08        orim     $08
0682: 2C 04        jrp      $0687
0684: B0           lp       $30
0685: 60 F7        anim     $F7
0687: A1           lp       $21
0688: 59           ldm
0689: 60 0F        anim     $0F
068B: 64 F0        ania     $F0
068D: 34           push
068E: A0           lp       $20
068F: 00 06        lii      $06
0691: 62 10        tsim     $10
0693: 38 03        jrzp     $0697
0695: A1           lp       $21
0696: 1C           srw
0697: A0           lp       $20
0698: 59           ldm
0699: 58           swp
069A: 64 0F        ania     $0F
069C: D1           rc
069D: D2           sr
069E: 80           lp       $00
069F: 45           sbm
06A0: 59           ldm
06A1: 74 21        adia     $21
06A3: 31           stq
06A4: 99           lp       $19
06A5: 59           ldm
06A6: 64 F0        ania     $F0
06A8: 34           push
06A9: B0           lp       $30
06AA: 62 08        tsim     $08
06AC: 9F           lp       $1F
06AD: 38 21        jrzp     $06CF
06AF: 0E           adw
06B0: 2A 15        jrncp    $06C6
06B2: 20           ldp
06B3: 75 19        sbia     $19
06B5: 80           lp       $00
06B6: DB           exam
06B7: 59           ldm
06B8: 74 19        adia     $19
06BA: B0           lp       $30
06BB: 62 08        tsim     $08
06BD: 30           stp
06BE: 02 01        lia      $01
06C0: 38 04        jrzp     $06C5
06C2: 0C           adn
06C3: 2C 02        jrp      $06C6
06C5: 0D           sbn
06C6: 5B           pop
06C7: 99           lp       $19
06C8: 60 0F        anim     $0F
06CA: 47           orma
06CB: 5B           pop
06CC: A1           lp       $21
06CD: 47           orma
06CE: 37           rtn
06CF: 0F           sbw
06D0: 2D 21        jrm      $06B0
06D2: 74 0D        adia     $0D
06D4: 67 14        cpia     $14
06D6: 3A 0B        jrcp     $06E2
06D8: 02 13        lia      $13
06DA: 2C 07        jrp      $06E2
06DC: 67 0D        cpia     $0D
06DE: 3A 03        jrcp     $06E2
06E0: 02 0C        lia      $0C
06E2: 34           push
06E3: 85           lp       $05
06E4: 02 07        lia      $07
06E6: DB           exam
06E7: 84           lp       $04
06E8: 02 18        lia      $18
06EA: DB           exam
06EB: 5B           pop
06EC: D1           rc
06ED: 5A           sl
06EE: DA           exab
06EF: 83           lp       $03
06F0: 59           ldm
06F1: 5A           sl
06F2: 44           adm
06F3: 59           ldm
06F4: 03 00        lib      $00
06F6: 84           lp       $04
06F7: 14           adb
06F8: 13 04        liq      $04
06FA: 82           lp       $02
06FB: 01 01        lij      $01
06FD: 0A           mvb
06FE: 9A           lp       $1A
06FF: 00 05        lii      $05
0701: 35           data
0702: 99           lp       $19
0703: 60 F0        anim     $F0
0705: 37           rtn
0706: 03 07        lib      $07
0708: 02 90        lia      $90
070A: 98           lp       $18
070B: 00 07        lii      $07
070D: 35           data
070E: B1           lp       $31
070F: 60 FD        anim     $FD
0711: 37           rtn
0712: 03 07        lib      $07
0714: 02 98        lia      $98
0716: 2D 0D        jrm      $070A
0718: 30           stp
0719: 10 29 99     lidp     $2999
071C: 56           read
071D: 64 41        ania     $41
071F: 39 26        jrzm     $06FA
0721: 85           lp       $05
0722: 15           sbb
0723: 82           lp       $02
0724: 43           deca
0725: 21           ldq
0726: 37           rtn
0727: 37           rtn
0728: 82           lp       $02
0729: 64 43        ania     $43
072B: 40           inci
072C: 77           ???
072D: 47           orma
072E: 93           lp       $13
072F: 19           exwd
0730: 43           deca
0731: 42           inca
0732: 72           ???
0733: 76           ???
0734: 86           lp       $06
0735: 27           dys
0736: 43           deca
0737: 42           inca
0738: 92           lp       $12
0739: 31           stq
073A: 04           ix
073B: 45           sbm
073C: 43           deca
073D: 42           inca
073E: 94           lp       $14
073F: 26           iys
0740: 47           orma
0741: 56           read
0742: 43           deca
0743: 42           inca
0744: 94           lp       $14
0745: 46           anma
0746: 01 89        lij      $89
0748: 43           deca
0749: 42           inca
074A: 94           lp       $14
074B: 47           orma
074C: 97           lp       $17
074D: 32           str
074E: 43           deca
074F: 42           inca
0750: 94           lp       $14
0751: 48           inck
0752: 16 86 43     .case    $16, $8643
0755: 42           inca
0756: 94           lp       $14
0757: 48           inck
0758: 18           mvwd
0759: 82           lp       $02
075A: 43           deca
075B: 42           inca
075C: 94           lp       $14
075D: 48           inck
075E: 19           exwd
075F: 01 43        lij      $43
0761: 42           inca
0762: 94           lp       $14
0763: 48           inck
0764: 19           exwd
0765: 03 45        lib      $45
0767: 00 00        lii      $00
0769: 00 00        lii      $00
076B: 00 57        lii      $57
076D: 10 59 31     lidp     $5931
0770: 37           rtn
0771: 50           incp
0772: 57           ldd
0773: 29 38        jrnzm    $073C
0775: 69           ptj
0776: 76           ???
0777: 83           lp       $03
0778: 57           ldd
0779: 29 57        jrnzm    $0723
077B: 60 41        anim     $41
077D: 45           sbm
077E: 57           ldd
077F: 29 57        jrnzm    $0729
0781: 79 32 21     jp       $3221
0784: 57           ldd
0785: 29 57        jrnzm    $072F
0787: 79 51 11     jp       $5111
078A: 57           ldd
078B: 29 57        jrnzm    $0735
078D: 79 51 31     jp       $5131
0790: 99           lp       $19
0791: 90           lp       $10
0792: 43           deca
0793: 42           inca
0794: 94           lp       $14
0795: 48           inck
0796: 19           exwd
0797: 03 00        lib      $00
0799: 10 57 29     lidp     $5729
079C: 57           ldd
079D: 79 51 31     jp       $5131
07A0: 00 00        lii      $00
07A2: 31           stq
07A3: 41           deci
07A4: 59           ldm
07A5: 26           iys
07A6: 53           mvdm
07A7: 59           ldm
07A8: F3 DD        cal      $13DD
07AA: 3A 08        jrcp     $07B3
07AC: 8E           lp       $0E
07AD: 01 01        lij      $01
07AF: 13 18        liq      $18
07B1: 0A           mvb
07B2: D1           rc
07B3: 37           rtn
07B4: 10 66 30     lidp     $6630
07B7: B0           lp       $30
07B8: 1B           exbd
07B9: 37           rtn
07BA: 10 66 30     lidp     $6630
07BD: B0           lp       $30
07BE: 1A           mvbd
07BF: 37           rtn
07C0: 10 66 E1     lidp     $66E1
07C3: 86           lp       $06
07C4: 1A           mvbd
07C5: 06           iy
07C6: 10 66 E3     lidp     $66E3
07C9: 86           lp       $06
07CA: 1B           exbd
07CB: 11 E3        lidl     $E3
07CD: 86           lp       $06
07CE: 1A           mvbd
07CF: 10 66 D9     lidp     $66D9
07D2: D4 DF        anid     $DF
07D4: 37           rtn
07D5: 24           ixl
07D6: 67 0D        cpia     $0D
07D8: 38 0C        jrzp     $07E5
07DA: B6           lp       $36
07DB: 62 02        tsim     $02
07DD: 28 05        jrnzp    $07E3
07DF: 67 3A        cpia     $3A
07E1: 38 03        jrzp     $07E5
07E3: D0           sc
07E4: 37           rtn
07E5: 05           dx
07E6: E8 ED        cal      $08ED
07E8: D1           rc
07E9: 37           rtn
07EA: FC 2B        cal      $1C2B
07EC: B6           lp       $36
07ED: 60 FB        anim     $FB
07EF: F0 4D        cal      $104D
07F1: FB A7        cal      $1BA7
07F3: B5           lp       $35
07F4: 60 00        anim     $00
07F6: B7           lp       $37
07F7: 60 3F        anim     $3F
07F9: F3 57        cal      $1357
07FB: D4 E1        anid     $E1
07FD: FB B7        cal      $1BB7
07FF: D4 00        anid     $00
0801: 11 2C        lidl     $2C
0803: D4 00        anid     $00
0805: F3 53        cal      $1353
0807: D4 9A        anid     $9A
0809: 11 7C        lidl     $7C
080B: D4 07        anid     $07
080D: 10 66 D7     lidp     $66D7
0810: D4 F3        anid     $F3
0812: 11 D8        lidl     $D8
0814: D4 CE        anid     $CE
0816: D5 06        orid     $06
0818: 11 D9        lidl     $D9
081A: D4 F9        anid     $F9
081C: 11 DA        lidl     $DA
081E: D4 BF        anid     $BF
0820: 78 80 18     call     $8018
0823: F3 B7        cal      $13B7
0825: 04           ix
0826: 04           ix
0827: 04           ix
0828: 10 66 FE     lidp     $66FE
082B: 84           lp       $04
082C: 1B           exbd
082D: 37           rtn
082E: D2           sr
082F: 12 5F        lip      $5F
0831: 60 01        anim     $01
0833: 2A 05        jrncp    $0839
0835: 61 30        orim     $30
0837: 2C 03        jrp      $083B
0839: 61 20        orim     $20
083B: 6B 02        test     $02
083D: 39 03        jrzm     $083B
083F: DF           outc
0840: 37           rtn
0841: 8B           lp       $0B
0842: 59           ldm
0843: 58           swp
0844: 03 01        lib      $01
0846: D1           rc
0847: E8 2F        cal      $082F
0849: E8 2E        cal      $082E
084B: E8 2E        cal      $082E
084D: E8 2E        cal      $082E
084F: E8 2E        cal      $082E
0851: D0           sc
0852: E8 2F        cal      $082F
0854: C3           decb
0855: 2B 10        jrncm    $0846
0857: 37           rtn
0858: 34           push
0859: 8B           lp       $0B
085A: 64 0F        ania     $0F
085C: 44           adm
085D: 5B           pop
085E: 34           push
085F: 58           swp
0860: 64 0F        ania     $0F
0862: C4           adcm
0863: 5B           pop
0864: 37           rtn
0865: 03 03        lib      $03
0867: 2C 03        jrp      $086B
0869: 03 0F        lib      $0F
086B: 12 5F        lip      $5F
086D: 60 01        anim     $01
086F: 61 30        orim     $30
0871: DF           outc
0872: 02 F9        lia      $F9
0874: 6B 02        test     $02
0876: 39 03        jrzm     $0874
0878: 43           deca
0879: 2B 06        jrncm    $0874
087B: C3           decb
087C: 3A 07        jrcp     $0884
087E: 6B 08        test     $08
0880: 39 0F        jrzm     $0872
0882: 2C 33        jrp      $08B6
0884: 37           rtn
0885: 22           ldr
0886: DA           exab
0887: 02 20        lia      $20
0889: 32           str
088A: 98           lp       $18
088B: 5B           pop
088C: C7           cpma
088D: 28 0B        jrnzp    $0899
088F: 50           incp
0890: 20           ldp
0891: 67 20        cpia     $20
0893: 29 09        jrnzm    $088B
0895: D0           sc
0896: DA           exab
0897: 32           str
0898: 37           rtn
0899: D1           rc
089A: 2D 05        jrm      $0896
089C: 84           lp       $04
089D: 59           ldm
089E: 8E           lp       $0E
089F: C7           cpma
08A0: 28 09        jrnzp    $08AA
08A2: 85           lp       $05
08A3: 59           ldm
08A4: 8F           lp       $0F
08A5: C7           cpma
08A6: 28 03        jrnzp    $08AA
08A8: D0           sc
08A9: 37           rtn
08AA: D1           rc
08AB: 37           rtn
08AC: A0           lp       $20
08AD: 00 07        lii      $07
08AF: 02 00        lia      $00
08B1: 1E           film
08B2: A0           lp       $20
08B3: 61 F5        orim     $F5
08B5: 37           rtn
08B6: 78 80 36     call     $8036
08B9: 10 66 37     lidp     $6637
08BC: 57           ldd
08BD: 32           str
08BE: E8 D8        cal      $08D8
08C0: B5           lp       $35
08C1: 61 20        orim     $20
08C3: D1           rc
08C4: E8 FA        cal      $08FA
08C6: 11 D7        lidl     $D7
08C8: D4 DB        anid     $DB
08CA: 37           rtn
08CB: 6B 02        test     $02
08CD: 39 03        jrzm     $08CB
08CF: 6B 02        test     $02
08D1: 39 03        jrzm     $08CF
08D3: 6B 02        test     $02
08D5: 39 03        jrzm     $08D3
08D7: 37           rtn
08D8: 10 66 E3     lidp     $66E3
08DB: 86           lp       $06
08DC: 1A           mvbd
08DD: 07           dy
08DE: 02 FF        lia      $FF
08E0: 26           iys
08E1: DA           exab
08E2: 37           rtn
08E3: E8 ED        cal      $08ED
08E5: 22           ldr
08E6: 74 02        adia     $02
08E8: 10 66 37     lidp     $6637
08EB: 52           std
08EC: 37           rtn
08ED: 84           lp       $04
08EE: 59           ldm
08EF: 10 66 39     lidp     $6639
08F2: 52           std
08F3: 85           lp       $05
08F4: 59           ldm
08F5: 10 66 3A     lidp     $663A
08F8: 52           std
08F9: 37           rtn
08FA: 10 66 39     lidp     $6639
08FD: 57           ldd
08FE: 84           lp       $04
08FF: DB           exam
0900: 10 66 3A     lidp     $663A
0903: 57           ldd
0904: 85           lp       $05
0905: DB           exam
0906: 01 01        lij      $01
0908: 37           rtn
0909: 10 66 D7     lidp     $66D7
090C: D4 FB        anid     $FB
090E: 37           rtn
090F: 02 07        lia      $07
0911: 88           lp       $08
0912: DB           exam
0913: 8B           lp       $0B
0914: 60 00        anim     $00
0916: 37           rtn
0917: 84           lp       $04
0918: 10 66 FC     lidp     $66FC
091B: 1B           exbd
091C: 84           lp       $04
091D: 10 66 FC     lidp     $66FC
0920: 1A           mvbd
0921: 37           rtn
0922: 02 19        lia      $19
0924: 89           lp       $09
0925: DB           exam
0926: 98           lp       $18
0927: 59           ldm
0928: 89           lp       $09
0929: 45           sbm
092A: 37           rtn
092B: E9 0F        cal      $090F
092D: 25           dxl
092E: E8 58        cal      $0858
0930: E8 44        cal      $0844
0932: E8 CB        cal      $08CB
0934: 49           deck
0935: 2B 09        jrncm    $092D
0937: E8 41        cal      $0841
0939: 37           rtn
093A: E9 41        cal      $0941
093C: E9 57        cal      $0957
093E: 3B 05        jrcm     $093A
0940: 37           rtn
0941: 6B 08        test     $08
0943: 38 1F        jrzp     $0963
0945: 4E 05        wait     $05
0947: 6B 08        test     $08
0949: 38 19        jrzp     $0963
094B: E9 A3        cal      $09A3
094D: 79 08 B9     jp       $08B9
0950: E9 41        cal      $0941
0952: E9 67        cal      $0967
0954: 3B 05        jrcm     $0950
0956: 37           rtn
0957: CC           inb
0958: 66 40        tsia     $40
095A: 28 0A        jrnzp    $0965
095C: 4E 00        wait     $00
095E: CC           inb
095F: 66 40        tsia     $40
0961: 28 03        jrnzp    $0965
0963: D1           rc
0964: 37           rtn
0965: D0           sc
0966: 37           rtn
0967: CC           inb
0968: 66 40        tsia     $40
096A: 39 06        jrzm     $0965
096C: 4E 00        wait     $00
096E: CC           inb
096F: 66 40        tsia     $40
0971: 39 0D        jrzm     $0965
0973: D1           rc
0974: 37           rtn
0975: 12 5D        lip      $5D
0977: 60 0F        anim     $0F
0979: 61 20        orim     $20
097B: DD           outb
097C: 4E DC        wait     $DC
097E: 37           rtn
097F: 12 5D        lip      $5D
0981: 60 0F        anim     $0F
0983: 2D 09        jrm      $097B
0985: 4E C8        wait     $C8
0987: 12 5E        lip      $5E
0989: 60 FC        anim     $FC
098B: 5F           outf
098C: 4E FF        wait     $FF
098E: 4E FF        wait     $FF
0990: 4E FF        wait     $FF
0992: 4E FF        wait     $FF
0994: 51           decp
0995: 60 0F        anim     $0F
0997: 61 20        orim     $20
0999: DD           outb
099A: 61 30        orim     $30
099C: DD           outb
099D: 4E FF        wait     $FF
099F: 37           rtn
09A0: 78 80 36     call     $8036
09A3: 12 5E        lip      $5E
09A5: 60 FC        anim     $FC
09A7: 5F           outf
09A8: 50           incp
09A9: 60 01        anim     $01
09AB: DF           outc
09AC: E9 75        cal      $0975
09AE: 2D 30        jrm      $097F
09B0: 02 31        lia      $31
09B2: E8 CF        cal      $08CF
09B4: 43           deca
09B5: 2B 04        jrncm    $09B2
09B7: 37           rtn
09B8: B7           lp       $37
09B9: 60 C0        anim     $C0
09BB: 61 01        orim     $01
09BD: 62 40        tsim     $40
09BF: 28 07        jrnzp    $09C7
09C1: 10 66 F7     lidp     $66F7
09C4: 02 60        lia      $60
09C6: 52           std
09C7: 10 66 F5     lidp     $66F5
09CA: 02 80        lia      $80
09CC: 52           std
09CD: 11 F6        lidl     $F6
09CF: 02 80        lia      $80
09D1: 52           std
09D2: 11 D6        lidl     $D6
09D4: 02 90        lia      $90
09D6: 52           std
09D7: B3           lp       $33
09D8: 60 FE        anim     $FE
09DA: 10 66 F2     lidp     $66F2
09DD: 02 01        lia      $01
09DF: 52           std
09E0: 24           ixl
09E1: 67 AE        cpia     $AE
09E3: 38 78        jrzp     $0A5C
09E5: 67 FE        cpia     $FE
09E7: 38 56        jrzp     $0A3E
09E9: 67 FB        cpia     $FB
09EB: 2A 19        jrncp    $0A05
09ED: 67 91        cpia     $91
09EF: 2A 52        jrncp    $0A42
09F1: 67 60        cpia     $60
09F3: 2A 4A        jrncp    $0A3E
09F5: 67 5B        cpia     $5B
09F7: 2A 0D        jrncp    $0A05
09F9: 67 41        cpia     $41
09FB: 2A 64        jrncp    $0A60
09FD: 67 3A        cpia     $3A
09FF: 2A 05        jrncp    $0A05
0A01: 67 30        cpia     $30
0A03: 2A 60        jrncp    $0A64
0A05: 7A 10 0A 3C  dtj      $10, $0A3C
0A09: 69           ptj
0A0A: 2E 0B B3     .case    $2E, $0BB3
0A0D: 2B 0B 1E     .case    $2B, $0B1E
0A10: 2D 0B 1E     .case    $2D, $0B1E
0A13: 2A 0A 96     .case    $2A, $0A96
0A16: 2F 0A 96     .case    $2F, $0A96
0A19: 5E 0A 96     .case    $5E, $0A96
0A1C: 3C 0B 81     .case    $3C, $0B81
0A1F: 3D 0B 81     .case    $3D, $0B81
0A22: 3E 0B 81     .case    $3E, $0B81
0A25: 2C 0B E7     .case    $2C, $0BE7
0A28: 28 0C 11     .case    $28, $0C11
0A2B: 29 0C 1C     .case    $29, $0C1C
0A2E: 22 0D 33     .case    $22, $0D33
0A31: FC 0B C2     .case    $FC, $0BC2
0A34: FB 0B 0F     .case    $FB, $0B0F
0A37: 26 0D 5C     .case    $26, $0D5C
0A3A: 0B C7        .default $0BC7
0A3C: 2C 29        jrp      $0A66
0A3E: EF C1        cal      $0FC1
0A40: 2C 3D        jrp      $0A7E
0A42: 67 BA        cpia     $BA
0A44: 38 0B        jrzp     $0A50
0A46: 67 AF        cpia     $AF
0A48: 38 0B        jrzp     $0A54
0A4A: 2A 0D        jrncp    $0A58
0A4C: EA 7F        cal      $0A7F
0A4E: 2C 17        jrp      $0A66
0A50: EA DA        cal      $0ADA
0A52: 2C 13        jrp      $0A66
0A54: EA EE        cal      $0AEE
0A56: 2C 0F        jrp      $0A66
0A58: EB C7        cal      $0BC7
0A5A: 2C 0B        jrp      $0A66
0A5C: EB 0F        cal      $0B0F
0A5E: 2C 07        jrp      $0A66
0A60: EB 50        cal      $0B50
0A62: 2C 03        jrp      $0A66
0A64: EB B3        cal      $0BB3
0A66: 3A 17        jrcp     $0A7E
0A68: B3           lp       $33
0A69: 62 01        tsim     $01
0A6B: 39 8C        jrzm     $09E0
0A6D: F3 40        cal      $1340
0A6F: 2A 09        jrncp    $0A79
0A71: E2 9B        cal      $029B
0A73: E2 FA        cal      $02FA
0A75: E2 BE        cal      $02BE
0A77: 3A 06        jrcp     $0A7E
0A79: 05           dx
0A7A: D1           rc
0A7B: B7           lp       $37
0A7C: 60 3F        anim     $3F
0A7E: 37           rtn
0A7F: 67 A1        cpia     $A1
0A81: 38 14        jrzp     $0A96
0A83: 67 A2        cpia     $A2
0A85: 38 10        jrzp     $0A96
0A87: 67 AD        cpia     $AD
0A89: 38 17        jrzp     $0AA1
0A8B: EF 9C        cal      $0F9C
0A8D: 3A 07        jrcp     $0A95
0A8F: EF F0        cal      $0FF0
0A91: 61 10        orim     $10
0A93: EF 06        cal      $0F06
0A95: 37           rtn
0A96: EF AB        cal      $0FAB
0A98: 3A 1D        jrcp     $0AB6
0A9A: 05           dx
0A9B: EF EB        cal      $0FEB
0A9D: 24           ixl
0A9E: 79 0E A9     jp       $0EA9
0AA1: EF A5        cal      $0FA5
0AA3: 3A 12        jrcp     $0AB6
0AA5: EF 6A        cal      $0F6A
0AA7: EF 65        cal      $0F65
0AA9: E3 C1        cal      $03C1
0AAB: 3A 0B        jrcp     $0AB7
0AAD: EF 65        cal      $0F65
0AAF: 02 00        lia      $00
0AB1: 97           lp       $17
0AB2: DB           exam
0AB3: EF E6        cal      $0FE6
0AB5: D1           rc
0AB6: 37           rtn
0AB7: 74 A0        adia     $A0
0AB9: 03 83        lib      $83
0ABB: 2A 02        jrncp    $0ABE
0ABD: C2           incb
0ABE: E2 2E        cal      $022E
0AC0: 24           ixl
0AC1: EF 65        cal      $0F65
0AC3: 67 60        cpia     $60
0AC5: 2B 17        jrncm    $0AAF
0AC7: 67 20        cpia     $20
0AC9: 3B 1B        jrcm     $0AAF
0ACB: 86           lp       $06
0ACC: 63 AF        cpim     $AF
0ACE: 7D 0F CD     jpnc     $0FCD
0AD1: 26           iys
0AD2: 02 01        lia      $01
0AD4: 88           lp       $08
0AD5: DB           exam
0AD6: ED 4F        cal      $0D4F
0AD8: D1           rc
0AD9: 37           rtn
0ADA: EF 9C        cal      $0F9C
0ADC: 3A 31        jrcp     $0B0E
0ADE: 10 66 E1     lidp     $66E1
0AE1: 8A           lp       $0A
0AE2: 1A           mvbd
0AE3: 02 02        lia      $02
0AE5: 03 00        lib      $00
0AE7: 8A           lp       $0A
0AE8: 14           adb
0AE9: 10 66 23     lidp     $6623
0AEC: 2C 0D        jrp      $0AFA
0AEE: EF 9C        cal      $0F9C
0AF0: 3A 1D        jrcp     $0B0E
0AF2: 10 66 FC     lidp     $66FC
0AF5: 8A           lp       $0A
0AF6: 1A           mvbd
0AF7: 10 66 E3     lidp     $66E3
0AFA: 82           lp       $02
0AFB: 1A           mvbd
0AFC: 8A           lp       $0A
0AFD: 15           sbb
0AFE: 82           lp       $02
0AFF: 13 0A        liq      $0A
0B01: 0A           mvb
0B02: 43           deca
0B03: 2A 02        jrncp    $0B06
0B05: C3           decb
0B06: 98           lp       $18
0B07: 13 02        liq      $02
0B09: 0A           mvb
0B0A: F0 E0        cal      $10E0
0B0C: EF E6        cal      $0FE6
0B0E: 37           rtn
0B0F: EF 9C        cal      $0F9C
0B11: 3A 0B        jrcp     $0B1D
0B13: 02 A0        lia      $A0
0B15: 03 07        lib      $07
0B17: 90           lp       $10
0B18: 00 07        lii      $07
0B1A: 35           data
0B1B: EF E6        cal      $0FE6
0B1D: 37           rtn
0B1E: EF AB        cal      $0FAB
0B20: 05           dx
0B21: 2B 87        jrncm    $0A9B
0B23: B7           lp       $37
0B24: 62 04        tsim     $04
0B26: 38 20        jrzp     $0B47
0B28: 10 66 F6     lidp     $66F6
0B2B: 57           ldd
0B2C: 43           deca
0B2D: 52           std
0B2E: 03 28        lib      $28
0B30: E2 42        cal      $0242
0B32: 06           iy
0B33: 57           ldd
0B34: 67 65        cpia     $65
0B36: 28 10        jrnzp    $0B47
0B38: 24           ixl
0B39: 67 2D        cpia     $2D
0B3B: 28 10        jrnzp    $0B4C
0B3D: 02 64        lia      $64
0B3F: EF 06        cal      $0F06
0B41: EF F0        cal      $0FF0
0B43: 61 04        orim     $04
0B45: D1           rc
0B46: 37           rtn
0B47: 24           ixl
0B48: 67 2B        cpia     $2B
0B4A: 39 0E        jrzm     $0B3D
0B4C: 02 65        lia      $65
0B4E: 2D 10        jrm      $0B3F
0B50: EF 9C        cal      $0F9C
0B52: 3A 15        jrcp     $0B68
0B54: 05           dx
0B55: F7 32        cal      $1732
0B57: 3A 10        jrcp     $0B68
0B59: B3           lp       $33
0B5A: 62 08        tsim     $08
0B5C: 28 0C        jrnzp    $0B69
0B5E: 60 9D        anim     $9D
0B60: 61 20        orim     $20
0B62: F7 D5        cal      $17D5
0B64: 3A 03        jrcp     $0B68
0B66: EF E6        cal      $0FE6
0B68: 37           rtn
0B69: EF 08        cal      $0F08
0B6B: 3A 12        jrcp     $0B7E
0B6D: 10 66 D6     lidp     $66D6
0B70: 57           ldd
0B71: 03 28        lib      $28
0B73: E2 42        cal      $0242
0B75: 8B           lp       $0B
0B76: 59           ldm
0B77: 26           iys
0B78: 06           iy
0B79: 86           lp       $06
0B7A: 10 66 D6     lidp     $66D6
0B7D: 53           mvdm
0B7E: EF E1        cal      $0FE1
0B80: 37           rtn
0B81: EF AB        cal      $0FAB
0B83: 3A 10        jrcp     $0B94
0B85: 67 3C        cpia     $3C
0B87: 28 0D        jrnzp    $0B95
0B89: 24           ixl
0B8A: 67 3D        cpia     $3D
0B8C: 28 19        jrnzp    $0BA6
0B8E: 02 62        lia      $62
0B90: EF EB        cal      $0FEB
0B92: EE A9        cal      $0EA9
0B94: 37           rtn
0B95: 67 3E        cpia     $3E
0B97: 29 08        jrnzm    $0B90
0B99: 24           ixl
0B9A: 67 3D        cpia     $3D
0B9C: 38 05        jrzp     $0BA2
0B9E: 02 3E        lia      $3E
0BA0: 2C 0F        jrp      $0BB0
0BA2: 02 61        lia      $61
0BA4: 2D 15        jrm      $0B90
0BA6: 67 3E        cpia     $3E
0BA8: 28 05        jrnzp    $0BAE
0BAA: 02 63        lia      $63
0BAC: 2D 1D        jrm      $0B90
0BAE: 02 3C        lia      $3C
0BB0: 05           dx
0BB1: 2D 22        jrm      $0B90
0BB3: EF 9C        cal      $0F9C
0BB5: 3A 0B        jrcp     $0BC1
0BB7: 05           dx
0BB8: B3           lp       $33
0BB9: 60 FD        anim     $FD
0BBB: ED A7        cal      $0DA7
0BBD: 3A 03        jrcp     $0BC1
0BBF: EF E6        cal      $0FE6
0BC1: 37           rtn
0BC2: 02 94        lia      $94
0BC4: 79 0A 7F     jp       $0A7F
0BC7: EF AB        cal      $0FAB
0BC9: 3A 0D        jrcp     $0BD7
0BCB: EF FD        cal      $0FFD
0BCD: 28 0A        jrnzp    $0BD8
0BCF: EF F4        cal      $0FF4
0BD1: 7C 0F C1     jpnz     $0FC1
0BD4: B3           lp       $33
0BD5: 61 01        orim     $01
0BD7: 37           rtn
0BD8: F0 04        cal      $1004
0BDA: 7D 0F C1     jpnc     $0FC1
0BDD: EF 65        cal      $0F65
0BDF: 78 80 09     call     $8009
0BE2: EF 65        cal      $0F65
0BE4: 2B 1A        jrncm    $0BCB
0BE6: 37           rtn
0BE7: EF AB        cal      $0FAB
0BE9: 3A 15        jrcp     $0BFF
0BEB: EF FD        cal      $0FFD
0BED: 38 12        jrzp     $0C00
0BEF: F0 04        cal      $1004
0BF1: 3A 15        jrcp     $0C07
0BF3: 05           dx
0BF4: 24           ixl
0BF5: EF 06        cal      $0F06
0BF7: 3A 07        jrcp     $0BFF
0BF9: EE BA        cal      $0EBA
0BFB: 3A 03        jrcp     $0BFF
0BFD: EF E1        cal      $0FE1
0BFF: 37           rtn
0C00: B7           lp       $37
0C01: 62 80        tsim     $80
0C03: 29 11        jrnzm    $0BF3
0C05: 2D 37        jrm      $0BCF
0C07: EF 65        cal      $0F65
0C09: 78 80 09     call     $8009
0C0C: EF 65        cal      $0F65
0C0E: 2B 24        jrncm    $0BEB
0C10: 37           rtn
0C11: EF 9C        cal      $0F9C
0C13: 3A 07        jrcp     $0C1B
0C15: EF 06        cal      $0F06
0C17: 3A 03        jrcp     $0C1B
0C19: EF E1        cal      $0FE1
0C1B: 37           rtn
0C1C: EF AB        cal      $0FAB
0C1E: 3A 16        jrcp     $0C35
0C20: EF F0        cal      $0FF0
0C22: 61 20        orim     $20
0C24: EF FD        cal      $0FFD
0C26: 38 0F        jrzp     $0C36
0C28: F0 04        cal      $1004
0C2A: 2A 13        jrncp    $0C3E
0C2C: EF 65        cal      $0F65
0C2E: 78 80 09     call     $8009
0C31: EF 65        cal      $0F65
0C33: 2B 10        jrncm    $0C24
0C35: 37           rtn
0C36: B7           lp       $37
0C37: 62 80        tsim     $80
0C39: 29 6B        jrnzm    $0BCF
0C3B: EF C1        cal      $0FC1
0C3D: 37           rtn
0C3E: 57           ldd
0C3F: 67 2C        cpia     $2C
0C41: 38 08        jrzp     $0C4A
0C43: 67 28        cpia     $28
0C45: 28 A5        jrnzp    $0CEB
0C47: F0 0E        cal      $100E
0C49: 37           rtn
0C4A: 86           lp       $06
0C4B: 13 3A        liq      $3A
0C4D: 0B           exb
0C4E: 86           lp       $06
0C4F: 13 3A        liq      $3A
0C51: 0B           exb
0C52: 02 01        lia      $01
0C54: 88           lp       $08
0C55: DB           exam
0C56: 86           lp       $06
0C57: 63 80        cpim     $80
0C59: 38 3F        jrzp     $0C99
0C5B: 48           inck
0C5C: 07           dy
0C5D: 57           ldd
0C5E: 67 2C        cpia     $2C
0C60: 39 0B        jrzm     $0C56
0C62: 88           lp       $08
0C63: 10 66 F2     lidp     $66F2
0C66: 53           mvdm
0C67: 67 28        cpia     $28
0C69: 28 40        jrnzp    $0CAA
0C6B: 86           lp       $06
0C6C: 63 80        cpim     $80
0C6E: 39 34        jrzm     $0C3B
0C70: 07           dy
0C71: 57           ldd
0C72: F0 0E        cal      $100E
0C74: EF 65        cal      $0F65
0C76: 67 AD        cpia     $AD
0C78: 2A 05        jrncp    $0C7E
0C7A: 67 AA        cpia     $AA
0C7C: 2A 06        jrncp    $0C83
0C7E: EF DD        cal      $0FDD
0C80: EF 65        cal      $0F65
0C82: 37           rtn
0C83: 7A 02 0C 90  dtj      $02, $0C90
0C87: 69           ptj
0C88: AB 80 39     .case    $AB, $8039
0C8B: AC 80 3C     .case    $AC, $803C
0C8E: 80 3F        .default $803F
0C90: 02 01        lia      $01
0C92: 10 66 F2     lidp     $66F2
0C95: 52           std
0C96: EF 65        cal      $0F65
0C98: 37           rtn
0C99: B7           lp       $37
0C9A: 62 80        tsim     $80
0C9C: 39 CE        jrzm     $0BCF
0C9E: 10 66 F5     lidp     $66F5
0CA1: 57           ldd
0CA2: 67 88        cpia     $88
0CA4: 29 6A        jrnzm    $0C3B
0CA6: B3           lp       $33
0CA7: 61 01        orim     $01
0CA9: 37           rtn
0CAA: 8A           lp       $0A
0CAB: DB           exam
0CAC: 63 41        cpim     $41
0CAE: 3B 74        jrcm     $0C3B
0CB0: 63 5B        cpim     $5B
0CB2: 2B 78        jrncm    $0C3B
0CB4: F0 0E        cal      $100E
0CB6: ED 12        cal      $0D12
0CB8: 88           lp       $08
0CB9: 63 03        cpim     $03
0CBB: 7D 0F C5     jpnc     $0FC5
0CBE: F5 36        cal      $1536
0CC0: 3B 8C        jrcm     $0C35
0CC2: 10 66 D0     lidp     $66D0
0CC5: 53           mvdm
0CC6: 10 66 F5     lidp     $66F5
0CC9: 57           ldd
0CCA: 67 80        cpia     $80
0CCC: 39 92        jrzm     $0C3B
0CCE: 75 08        sbia     $08
0CD0: 52           std
0CD1: 03 20        lib      $20
0CD3: E2 42        cal      $0242
0CD5: 06           iy
0CD6: 90           lp       $10
0CD7: 00 07        lii      $07
0CD9: 18           mvwd
0CDA: F5 36        cal      $1536
0CDC: 3B A8        jrcm     $0C35
0CDE: 10 66 D1     lidp     $66D1
0CE1: 53           mvdm
0CE2: B3           lp       $33
0CE3: 60 2D        anim     $2D
0CE5: 61 28        orim     $28
0CE7: EF 65        cal      $0F65
0CE9: 2C 24        jrp      $0D0E
0CEB: B3           lp       $33
0CEC: 60 29        anim     $29
0CEE: 61 28        orim     $28
0CF0: F0 0E        cal      $100E
0CF2: 8A           lp       $0A
0CF3: DB           exam
0CF4: ED 12        cal      $0D12
0CF6: EF 65        cal      $0F65
0CF8: 8A           lp       $0A
0CF9: 63 40        cpim     $40
0CFB: 28 09        jrnzp    $0D05
0CFD: B3           lp       $33
0CFE: 61 80        orim     $80
0D00: F6 6D        cal      $166D
0D02: EF 65        cal      $0F65
0D04: 37           rtn
0D05: D1           rc
0D06: F5 36        cal      $1536
0D08: 3B 07        jrcm     $0D02
0D0A: 10 66 D0     lidp     $66D0
0D0D: 1B           exbd
0D0E: F5 75        cal      $1575
0D10: 2D 0F        jrm      $0D02
0D12: 10 66 D6     lidp     $66D6
0D15: 57           ldd
0D16: 03 28        lib      $28
0D18: E2 42        cal      $0242
0D1A: 57           ldd
0D1B: 86           lp       $06
0D1C: 10 66 D6     lidp     $66D6
0D1F: 53           mvdm
0D20: 8B           lp       $0B
0D21: DB           exam
0D22: 63 F0        cpim     $F0
0D24: 2A 09        jrncp    $0D2E
0D26: 63 1B        cpim     $1B
0D28: 3A 05        jrcp     $0D2E
0D2A: 63 A0        cpim     $A0
0D2C: 28 04        jrnzp    $0D31
0D2E: B3           lp       $33
0D2F: 61 04        orim     $04
0D31: D1           rc
0D32: 37           rtn
0D33: EF A5        cal      $0FA5
0D35: 3A 25        jrcp     $0D5B
0D37: EF 6A        cal      $0F6A
0D39: 86           lp       $06
0D3A: 24           ixl
0D3B: 67 22        cpia     $22
0D3D: 38 11        jrzp     $0D4F
0D3F: 67 0D        cpia     $0D
0D41: 38 0C        jrzp     $0D4E
0D43: 63 AF        cpim     $AF
0D45: 2A 05        jrncp    $0D4B
0D47: 26           iys
0D48: 48           inck
0D49: 2B 10        jrncm    $0D3A
0D4B: EF CD        cal      $0FCD
0D4D: 37           rtn
0D4E: 05           dx
0D4F: 88           lp       $08
0D50: 59           ldm
0D51: 97           lp       $17
0D52: DB           exam
0D53: 06           iy
0D54: 86           lp       $06
0D55: 10 66 F7     lidp     $66F7
0D58: 53           mvdm
0D59: EF E6        cal      $0FE6
0D5B: 37           rtn
0D5C: EF 9C        cal      $0F9C
0D5E: 3A 36        jrcp     $0D95
0D60: 24           ixl
0D61: 05           dx
0D62: ED 96        cal      $0D96
0D64: 67 3A        cpia     $3A
0D66: 2A 13        jrncp    $0D7A
0D68: 67 30        cpia     $30
0D6A: 3A 1B        jrcp     $0D86
0D6C: 64 0F        ania     $0F
0D6E: 96           lp       $16
0D6F: 1D           slw
0D70: 70 10        adim     $10
0D72: 96           lp       $16
0D73: 47           orma
0D74: 24           ixl
0D75: 49           deck
0D76: 29 13        jrnzm    $0D64
0D78: 2C 12        jrp      $0D8B
0D7A: 67 41        cpia     $41
0D7C: 3A 09        jrcp     $0D86
0D7E: 67 47        cpia     $47
0D80: 2A 05        jrncp    $0D86
0D82: 75 37        sbia     $37
0D84: 2D 17        jrm      $0D6E
0D86: 96           lp       $16
0D87: 1D           slw
0D88: 49           deck
0D89: 29 04        jrnzm    $0D86
0D8B: EF 65        cal      $0F65
0D8D: 78 80 00     call     $8000
0D90: EF 65        cal      $0F65
0D92: EF E6        cal      $0FE6
0D94: 05           dx
0D95: 37           rtn
0D96: E0 E4        cal      $00E4
0D98: 91           lp       $11
0D99: 61 F0        orim     $F0
0D9B: 00 04        lii      $04
0D9D: 88           lp       $08
0D9E: 02 0A        lia      $0A
0DA0: DB           exam
0DA1: 24           ixl
0DA2: 67 30        cpia     $30
0DA4: 39 04        jrzm     $0DA1
0DA6: 37           rtn
0DA7: B3           lp       $33
0DA8: 61 10        orim     $10
0DAA: 60 F3        anim     $F3
0DAC: E0 E7        cal      $00E7
0DAE: 02 00        lia      $00
0DB0: DA           exab
0DB1: 88           lp       $08
0DB2: 02 99        lia      $99
0DB4: 00 01        lii      $01
0DB6: 1E           film
0DB7: B3           lp       $33
0DB8: 24           ixl
0DB9: 67 30        cpia     $30
0DBB: 28 05        jrnzp    $0DC1
0DBD: 60 EF        anim     $EF
0DBF: 2D 08        jrm      $0DB8
0DC1: 67 20        cpia     $20
0DC3: 38 2E        jrzp     $0DF2
0DC5: 67 45        cpia     $45
0DC7: 38 4C        jrzp     $0E14
0DC9: 67 2E        cpia     $2E
0DCB: 38 29        jrzp     $0DF5
0DCD: 67 30        cpia     $30
0DCF: 3A A6        jrcp     $0E76
0DD1: 67 3A        cpia     $3A
0DD3: 2A A2        jrncp    $0E76
0DD5: B3           lp       $33
0DD6: 60 EF        anim     $EF
0DD8: 62 04        tsim     $04
0DDA: 28 09        jrnzp    $0DE4
0DDC: 34           push
0DDD: 89           lp       $09
0DDE: 02 01        lia      $01
0DE0: 00 01        lii      $01
0DE2: 0C           adn
0DE3: 5B           pop
0DE4: C2           incb
0DE5: 83           lp       $03
0DE6: 63 0B        cpim     $0B
0DE8: 2A 09        jrncp    $0DF2
0DEA: 96           lp       $16
0DEB: 00 04        lii      $04
0DED: 1D           slw
0DEE: 96           lp       $16
0DEF: 64 0F        ania     $0F
0DF1: 47           orma
0DF2: 24           ixl
0DF3: 2D 33        jrm      $0DC1
0DF5: B3           lp       $33
0DF6: 62 02        tsim     $02
0DF8: 28 7D        jrnzp    $0E76
0DFA: 60 EF        anim     $EF
0DFC: 62 04        tsim     $04
0DFE: 29 0D        jrnzm    $0DF2
0E00: 61 04        orim     $04
0E02: 83           lp       $03
0E03: 63 00        cpim     $00
0E05: 29 14        jrnzm    $0DF2
0E07: 00 01        lii      $01
0E09: 24           ixl
0E0A: 67 30        cpia     $30
0E0C: 29 4C        jrnzm    $0DC1
0E0E: 89           lp       $09
0E0F: 02 01        lia      $01
0E11: 0D           sbn
0E12: 2D 0A        jrm      $0E09
0E14: B3           lp       $33
0E15: 62 02        tsim     $02
0E17: 28 5E        jrnzp    $0E76
0E19: EE 9C        cal      $0E9C
0E1B: F3 9D        cal      $139D
0E1D: 67 2E        cpia     $2E
0E1F: 38 11        jrzp     $0E31
0E21: 67 30        cpia     $30
0E23: 3A 5B        jrcp     $0E7F
0E25: 67 3A        cpia     $3A
0E27: 2A 6A        jrncp    $0E92
0E29: 64 0F        ania     $0F
0E2B: 91           lp       $11
0E2C: DB           exam
0E2D: 58           swp
0E2E: 64 F0        ania     $F0
0E30: 47           orma
0E31: F3 9D        cal      $139D
0E33: 67 2E        cpia     $2E
0E35: 39 05        jrzm     $0E31
0E37: 67 45        cpia     $45
0E39: 39 09        jrzm     $0E31
0E3B: 67 30        cpia     $30
0E3D: 3A 05        jrcp     $0E43
0E3F: 67 3A        cpia     $3A
0E41: 3B 19        jrcm     $0E29
0E43: 90           lp       $10
0E44: 02 00        lia      $00
0E46: DB           exam
0E47: 59           ldm
0E48: B3           lp       $33
0E49: 62 08        tsim     $08
0E4B: 00 01        lii      $01
0E4D: 38 04        jrzp     $0E52
0E4F: 91           lp       $11
0E50: DB           exam
0E51: 0D           sbn
0E52: 91           lp       $11
0E53: 13 09        liq      $09
0E55: 0E           adw
0E56: 90           lp       $10
0E57: 63 90        cpim     $90
0E59: 3A 0A        jrcp     $0E64
0E5B: 63 99        cpim     $99
0E5D: 38 0D        jrzp     $0E6B
0E5F: E0 E7        cal      $00E7
0E61: D1           rc
0E62: 05           dx
0E63: 37           rtn
0E64: 63 00        cpim     $00
0E66: 38 09        jrzp     $0E70
0E68: EF DD        cal      $0FDD
0E6A: 37           rtn
0E6B: 50           incp
0E6C: 63 00        cpim     $00
0E6E: 39 10        jrzm     $0E5F
0E70: 91           lp       $11
0E71: 00 01        lii      $01
0E73: 1D           slw
0E74: 2D 14        jrm      $0E61
0E76: 83           lp       $03
0E77: 63 00        cpim     $00
0E79: 39 19        jrzm     $0E61
0E7B: EE 9C        cal      $0E9C
0E7D: 2C 18        jrp      $0E96
0E7F: 67 2B        cpia     $2B
0E81: 39 67        jrzm     $0E1B
0E83: 67 2D        cpia     $2D
0E85: 28 10        jrnzp    $0E96
0E87: B3           lp       $33
0E88: 59           ldm
0E89: 64 08        ania     $08
0E8B: 74 08        adia     $08
0E8D: 60 F7        anim     $F7
0E8F: 47           orma
0E90: 2D 76        jrm      $0E1B
0E92: 67 45        cpia     $45
0E94: 39 7A        jrzm     $0E1B
0E96: 90           lp       $10
0E97: 13 08        liq      $08
0E99: 0A           mvb
0E9A: 2D 2B        jrm      $0E70
0E9C: 00 04        lii      $04
0E9E: C2           incb
0E9F: 83           lp       $03
0EA0: 63 0B        cpim     $0B
0EA2: 2A 05        jrncp    $0EA8
0EA4: 96           lp       $16
0EA5: 1D           slw
0EA6: 3B 09        jrcm     $0E9E
0EA8: 37           rtn
0EA9: 8A           lp       $0A
0EAA: DB           exam
0EAB: EF FD        cal      $0FFD
0EAD: 03 28        lib      $28
0EAF: E2 42        cal      $0242
0EB1: 28 28        jrnzp    $0EDA
0EB3: 67 90        cpia     $90
0EB5: 7E 0F CD     jpz      $0FCD
0EB8: EF 14        cal      $0F14
0EBA: 10 66 F5     lidp     $66F5
0EBD: 57           ldd
0EBE: 67 83        cpia     $83
0EC0: 7E 0F CD     jpz      $0FCD
0EC3: 10 66 F5     lidp     $66F5
0EC6: 57           ldd
0EC7: 03 20        lib      $20
0EC9: E2 42        cal      $0242
0ECB: 06           iy
0ECC: 00 07        lii      $07
0ECE: 90           lp       $10
0ECF: 19           exwd
0ED0: 86           lp       $06
0ED1: 59           ldm
0ED2: 74 08        adia     $08
0ED4: 10 66 F5     lidp     $66F5
0ED7: 52           std
0ED8: D1           rc
0ED9: 37           rtn
0EDA: 8A           lp       $0A
0EDB: 59           ldm
0EDC: EF 1F        cal      $0F1F
0EDE: 8B           lp       $0B
0EDF: DB           exam
0EE0: 57           ldd
0EE1: EF 1F        cal      $0F1F
0EE3: 8B           lp       $0B
0EE4: C7           cpma
0EE5: 3A 1C        jrcp     $0F02
0EE7: 28 0A        jrnzp    $0EF2
0EE9: 8A           lp       $0A
0EEA: 63 5E        cpim     $5E
0EEC: 38 15        jrzp     $0F02
0EEE: 63 83        cpim     $83
0EF0: 38 11        jrzp     $0F02
0EF2: 8A           lp       $0A
0EF3: 59           ldm
0EF4: 34           push
0EF5: EF 65        cal      $0F65
0EF7: 78 80 09     call     $8009
0EFA: EF 65        cal      $0F65
0EFC: 5B           pop
0EFD: 8A           lp       $0A
0EFE: DB           exam
0EFF: 2B 55        jrncm    $0EAB
0F01: 37           rtn
0F02: EF 08        cal      $0F08
0F04: 2D 4B        jrm      $0EBA
0F06: 8A           lp       $0A
0F07: DB           exam
0F08: 10 66 F6     lidp     $66F6
0F0B: 57           ldd
0F0C: 67 90        cpia     $90
0F0E: 38 BE        jrzp     $0FCD
0F10: 03 28        lib      $28
0F12: E2 42        cal      $0242
0F14: 8A           lp       $0A
0F15: 59           ldm
0F16: 26           iys
0F17: 06           iy
0F18: 86           lp       $06
0F19: 10 66 F6     lidp     $66F6
0F1C: 53           mvdm
0F1D: D1           rc
0F1E: 37           rtn
0F1F: 67 40        cpia     $40
0F21: 2A 16        jrncp    $0F38
0F23: 67 30        cpia     $30
0F25: 2A 0F        jrncp    $0F35
0F27: 75 28        sbia     $28
0F29: 74 5D        adia     $5D
0F2B: 03 0F        lib      $0F
0F2D: 2A 02        jrncp    $0F30
0F2F: C2           incb
0F30: 00 00        lii      $00
0F32: 82           lp       $02
0F33: 35           data
0F34: 37           rtn
0F35: 02 07        lia      $07
0F37: 37           rtn
0F38: 67 90        cpia     $90
0F3A: 2A 14        jrncp    $0F4F
0F3C: 67 5E        cpia     $5E
0F3E: 38 0D        jrzp     $0F4C
0F40: 3A 08        jrcp     $0F49
0F42: 67 64        cpia     $64
0F44: 3B 10        jrcm     $0F35
0F46: 02 04        lia      $04
0F48: 37           rtn
0F49: 02 09        lia      $09
0F4B: 37           rtn
0F4C: 02 03        lia      $03
0F4E: 37           rtn
0F4F: 67 A1        cpia     $A1
0F51: 38 08        jrzp     $0F5A
0F53: 67 A2        cpia     $A2
0F55: 38 04        jrzp     $0F5A
0F57: 02 02        lia      $02
0F59: 37           rtn
0F5A: 02 08        lia      $08
0F5C: 37           rtn
0F5D: 0A           mvb
0F5E: 09           exw
0F5F: 05           dx
0F60: 06           iy
0F61: 09           exw
0F62: 06           iy
0F63: 00 05        lii      $05
0F65: 84           lp       $04
0F66: 13 38        liq      $38
0F68: 0B           exb
0F69: 37           rtn
0F6A: 02 00        lia      $00
0F6C: 88           lp       $08
0F6D: DB           exam
0F6E: 02 D0        lia      $D0
0F70: 94           lp       $14
0F71: DB           exam
0F72: 10 66 F7     lidp     $66F7
0F75: 57           ldd
0F76: 03 67        lib      $67
0F78: E2 42        cal      $0242
0F7A: 06           iy
0F7B: 95           lp       $15
0F7C: 13 06        liq      $06
0F7E: 0A           mvb
0F7F: 07           dy
0F80: 37           rtn
0F81: 03 18        lib      $18
0F83: 10 66 F5     lidp     $66F5
0F86: 57           ldd
0F87: 75 08        sbia     $08
0F89: 52           std
0F8A: 43           deca
0F8B: 84           lp       $04
0F8C: DB           exam
0F8D: 02 20        lia      $20
0F8F: 85           lp       $05
0F90: DB           exam
0F91: 04           ix
0F92: 00 07        lii      $07
0F94: DA           exab
0F95: 30           stp
0F96: 18           mvwd
0F97: 37           rtn
0F98: 03 10        lib      $10
0F9A: 2D 18        jrm      $0F83
0F9C: B7           lp       $37
0F9D: D1           rc
0F9E: 62 22        tsim     $22
0FA0: 38 03        jrzp     $0FA4
0FA2: EF C1        cal      $0FC1
0FA4: 37           rtn
0FA5: B7           lp       $37
0FA6: D1           rc
0FA7: 62 26        tsim     $26
0FA9: 2D 0A        jrm      $0FA0
0FAB: B7           lp       $37
0FAC: D1           rc
0FAD: 62 1D        tsim     $1D
0FAF: 2D 10        jrm      $0FA0
0FB1: EF 65        cal      $0F65
0FB3: 05           dx
0FB4: EF 65        cal      $0F65
0FB6: 10 66 3C     lidp     $663C
0FB9: 57           ldd
0FBA: 32           str
0FBB: 02 02        lia      $02
0FBD: B4           lp       $34
0FBE: DB           exam
0FBF: D0           sc
0FC0: 37           rtn
0FC1: 02 01        lia      $01
0FC3: 2D 07        jrm      $0FBD
0FC5: 02 03        lia      $03
0FC7: 2D 0B        jrm      $0FBD
0FC9: 02 04        lia      $04
0FCB: 2D 0F        jrm      $0FBD
0FCD: 02 05        lia      $05
0FCF: 2D 13        jrm      $0FBD
0FD1: 02 06        lia      $06
0FD3: 2D 17        jrm      $0FBD
0FD5: 02 07        lia      $07
0FD7: 2D 1B        jrm      $0FBD
0FD9: 02 08        lia      $08
0FDB: 2D 1F        jrm      $0FBD
0FDD: 02 09        lia      $09
0FDF: 2D 23        jrm      $0FBD
0FE1: EF F0        cal      $0FF0
0FE3: 61 01        orim     $01
0FE5: 37           rtn
0FE6: EF F0        cal      $0FF0
0FE8: 61 02        orim     $02
0FEA: 37           rtn
0FEB: EF F0        cal      $0FF0
0FED: 61 08        orim     $08
0FEF: 37           rtn
0FF0: B7           lp       $37
0FF1: 60 C0        anim     $C0
0FF3: 37           rtn
0FF4: 10 66 F5     lidp     $66F5
0FF7: DA           exab
0FF8: 57           ldd
0FF9: 67 80        cpia     $80
0FFB: DA           exab
0FFC: 37           rtn
0FFD: 10 66 F6     lidp     $66F6
1000: 57           ldd
1001: 67 80        cpia     $80
1003: 37           rtn
1004: 03 28        lib      $28
1006: E2 42        cal      $0242
1008: 57           ldd
1009: EF 1F        cal      $0F1F
100B: 67 09        cpia     $09
100D: 37           rtn
100E: 86           lp       $06
100F: 10 66 F6     lidp     $66F6
1012: 53           mvdm
1013: D1           rc
1014: 37           rtn
1015: EF 81        cal      $0F81
1017: 9C           lp       $1C
1018: 63 D0        cpim     $D0
101A: 94           lp       $14
101B: 38 07        jrzp     $1023
101D: 63 D0        cpim     $D0
101F: 38 09        jrzp     $1029
1021: D1           rc
1022: 37           rtn
1023: 63 D0        cpim     $D0
1025: 28 03        jrnzp    $1029
1027: D0           sc
1028: 37           rtn
1029: 5B           pop
102A: 5B           pop
102B: EF DD        cal      $0FDD
102D: 37           rtn
102E: 22           ldr
102F: 43           deca
1030: 43           deca
1031: 30           stp
1032: 13 04        liq      $04
1034: 0A           mvb
1035: 31           stq
1036: 0B           exb
1037: 32           str
1038: 37           rtn
1039: 22           ldr
103A: 42           inca
103B: 42           inca
103C: 84           lp       $04
103D: 31           stq
103E: 0A           mvb
103F: 30           stp
1040: DA           exab
1041: 22           ldr
1042: 31           stq
1043: 0A           mvb
1044: DA           exab
1045: 32           str
1046: 37           rtn
1047: 24           ixl
1048: 26           iys
1049: C3           decb
104A: 29 04        jrnzm    $1047
104C: 37           rtn
104D: F3 5B        cal      $135B
104F: D4 C0        anid     $C0
1051: F3 57        cal      $1357
1053: D4 E1        anid     $E1
1055: F9 E9        cal      $19E9
1057: 11 7F        lidl     $7F
1059: D4 00        anid     $00
105B: B5           lp       $35
105C: 60 BF        anim     $BF
105E: 62 80        tsim     $80
1060: 28 06        jrnzp    $1067
1062: 10 66 1E     lidp     $661E
1065: D4 00        anid     $00
1067: FB B7        cal      $1BB7
1069: D4 00        anid     $00
106B: FC 2B        cal      $1C2B
106D: 90           lp       $10
106E: 02 3E        lia      $3E
1070: DB           exam
1071: 91           lp       $11
1072: 02 20        lia      $20
1074: 00 16        lii      $16
1076: 1E           film
1077: FB 52        cal      $1B52
1079: FB B0        cal      $1BB0
107B: FB 5E        cal      $1B5E
107D: 78 80 0F     call     $800F
1080: 37           rtn
1081: D6 10        tsid     $10
1083: 38 21        jrzp     $10A5
1085: D4 EF        anid     $EF
1087: 10 66 E8     lidp     $66E8
108A: 57           ldd
108B: F3 5F        cal      $135F
108D: 10 66 E9     lidp     $66E9
1090: 57           ldd
1091: D6 80        tsid     $80
1093: 03 20        lib      $20
1095: 38 05        jrzp     $109B
1097: 75 80        sbia     $80
1099: 03 28        lib      $28
109B: E2 42        cal      $0242
109D: 03 05        lib      $05
109F: 25           dxl
10A0: 26           iys
10A1: C3           decb
10A2: 29 04        jrnzm    $109F
10A4: 37           rtn
10A5: D5 10        orid     $10
10A7: 02 F9        lia      $F9
10A9: 2D 1F        jrm      $108B
10AB: 8E           lp       $0E
10AC: 59           ldm
10AD: D2           sr
10AE: DB           exam
10AF: 2A 03        jrncp    $10B3
10B1: F0 CF        cal      $10CF
10B3: F0 C1        cal      $10C1
10B5: F0 C8        cal      $10C8
10B7: F0 CF        cal      $10CF
10B9: F0 C8        cal      $10C8
10BB: F0 C1        cal      $10C1
10BD: 49           deck
10BE: 2B 14        jrncm    $10AB
10C0: 37           rtn
10C1: 92           lp       $12
10C2: 13 22        liq      $22
10C4: 00 02        lii      $02
10C6: 09           exw
10C7: 37           rtn
10C8: 9A           lp       $1A
10C9: 13 12        liq      $12
10CB: 00 03        lii      $03
10CD: 08           mvw
10CE: 37           rtn
10CF: 94           lp       $14
10D0: 13 1C        liq      $1C
10D2: 00 02        lii      $02
10D4: 0E           adw
10D5: 37           rtn
10D6: 13 1D        liq      $1D
10D8: 2C 03        jrp      $10DC
10DA: 13 15        liq      $15
10DC: 84           lp       $04
10DD: 0A           mvb
10DE: 05           dx
10DF: 37           rtn
10E0: B0           lp       $30
10E1: 61 02        orim     $02
10E3: E0 E4        cal      $00E4
10E5: 2C 18        jrp      $10FE
10E7: E0 E4        cal      $00E4
10E9: B0           lp       $30
10EA: 60 FC        anim     $FC
10EC: 99           lp       $19
10ED: 62 80        tsim     $80
10EF: 38 0E        jrzp     $10FE
10F1: B0           lp       $30
10F2: 61 01        orim     $01
10F4: 02 00        lia      $00
10F6: 99           lp       $19
10F7: DB           exam
10F8: DA           exab
10F9: 02 00        lia      $00
10FB: 98           lp       $18
10FC: DB           exam
10FD: 15           sbb
10FE: 8E           lp       $0E
10FF: 13 18        liq      $18
1101: 0A           mvb
1102: 88           lp       $08
1103: 02 07        lia      $07
1105: DB           exam
1106: E0 DB        cal      $00DB
1108: 9C           lp       $1C
1109: 61 10        orim     $10
110B: E1 88        cal      $0188
110D: F0 AB        cal      $10AB
110F: 02 07        lia      $07
1111: 88           lp       $08
1112: DB           exam
1113: 8F           lp       $0F
1114: 59           ldm
1115: 8E           lp       $0E
1116: DB           exam
1117: F0 AB        cal      $10AB
1119: 91           lp       $11
111A: 61 40        orim     $40
111C: E4 70        cal      $0470
111E: B0           lp       $30
111F: 62 02        tsim     $02
1121: 28 0A        jrnzp    $112C
1123: 62 01        tsim     $01
1125: 38 06        jrzp     $112C
1127: 60 FE        anim     $FE
1129: 91           lp       $11
112A: 61 08        orim     $08
112C: D1           rc
112D: 37           rtn
112E: F3 53        cal      $1353
1130: D4 FE        anid     $FE
1132: 02 80        lia      $80
1134: 34           push
1135: 02 12        lia      $12
1137: 34           push
1138: 02 03        lia      $03
113A: E4 3D        cal      $043D
113C: 6B 01        test     $01
113E: 02 80        lia      $80
1140: 03 66        lib      $66
1142: E2 42        cal      $0242
1144: 02 00        lia      $00
1146: 26           iys
1147: 02 FB        lia      $FB
1149: 26           iys
114A: 00 FB        lii      $FB
114C: F8 DA        cal      $18DA
114E: 38 1C        jrzp     $116B
1150: 10 66 1E     lidp     $661E
1153: D4 00        anid     $00
1155: 11 1F        lidl     $1F
1157: D4 00        anid     $00
1159: 10 20 3C     lidp     $203C
115C: 57           ldd
115D: 64 F0        ania     $F0
115F: 47           orma
1160: 59           ldm
1161: 52           std
1162: D6 04        tsid     $04
1164: 02 08        lia      $08
1166: 38 03        jrzp     $116A
1168: 02 0A        lia      $0A
116A: 37           rtn
116B: E3 C1        cal      $03C1
116D: 7D 12 B6     jpnc     $12B6
1170: 34           push
1171: E3 C1        cal      $03C1
1173: DA           exab
1174: 5B           pop
1175: 7D 12 B6     jpnc     $12B6
1178: 83           lp       $03
1179: C7           cpma
117A: 7C 12 B6     jpnz     $12B6
117D: F3 53        cal      $1353
117F: D6 20        tsid     $20
1181: 28 42        jrnzp    $11C4
1183: D6 08        tsid     $08
1185: 28 38        jrnzp    $11BE
1187: D6 10        tsid     $10
1189: 28 2E        jrnzp    $11B8
118B: 74 A0        adia     $A0
118D: 03 83        lib      $83
118F: 2A 02        jrncp    $1192
1191: C2           incb
1192: E2 2E        cal      $022E
1194: 24           ixl
1195: F3 57        cal      $1357
1197: D6 01        tsid     $01
1199: 28 DB        jrnzp    $1275
119B: D5 01        orid     $01
119D: 11 2C        lidl     $2C
119F: 52           std
11A0: 67 02        cpia     $02
11A2: 3B 65        jrcm     $113E
11A4: 67 20        cpia     $20
11A6: 2A 85        jrncp    $122C
11A8: 67 10        cpia     $10
11AA: 3B 41        jrcm     $116A
11AC: F3 53        cal      $1353
11AE: 28 3A        jrnzp    $11E9
11B0: D6 20        tsid     $20
11B2: 38 44        jrzp     $11F7
11B4: D4 DF        anid     $DF
11B6: 2D 79        jrm      $113E
11B8: 74 78        adia     $78
11BA: 03 84        lib      $84
11BC: 2D 2E        jrm      $118F
11BE: 74 D6        adia     $D6
11C0: 03 83        lib      $83
11C2: 2D 34        jrm      $118F
11C4: D6 08        tsid     $08
11C6: 28 1C        jrnzp    $11E3
11C8: D6 10        tsid     $10
11CA: 28 12        jrnzp    $11DD
11CC: 10 20 3C     lidp     $203C
11CF: D6 80        tsid     $80
11D1: 28 05        jrnzp    $11D7
11D3: 67 28        cpia     $28
11D5: 39 4B        jrzm     $118B
11D7: 74 0C        adia     $0C
11D9: 03 84        lib      $84
11DB: 2D 4D        jrm      $118F
11DD: 74 AE        adia     $AE
11DF: 03 84        lib      $84
11E1: 2D 53        jrm      $118F
11E3: 74 42        adia     $42
11E5: 03 84        lib      $84
11E7: 2D 59        jrm      $118F
11E9: 67 12        cpia     $12
11EB: 28 11        jrnzp    $11FD
11ED: D6 40        tsid     $40
11EF: 28 09        jrnzp    $11F9
11F1: D5 40        orid     $40
11F3: D4 DF        anid     $DF
11F5: 2D B8        jrm      $113E
11F7: D5 20        orid     $20
11F9: D4 BF        anid     $BF
11FB: 2D BE        jrm      $113E
11FD: 67 15        cpia     $15
11FF: 28 74        jrnzp    $1274
1201: F3 5B        cal      $135B
1203: D6 02        tsid     $02
1205: F3 53        cal      $1353
1207: 28 10        jrnzp    $1218
1209: 10 20 3C     lidp     $203C
120C: D6 80        tsid     $80
120E: F3 53        cal      $1353
1210: 38 0B        jrzp     $121C
1212: D6 08        tsid     $08
1214: 38 13        jrzp     $1228
1216: D4 F7        anid     $F7
1218: D4 9F        anid     $9F
121A: 2D DD        jrm      $113E
121C: D6 10        tsid     $10
121E: 38 05        jrzp     $1224
1220: D4 EF        anid     $EF
1222: 2D 0B        jrm      $1218
1224: D5 10        orid     $10
1226: 2D 0F        jrm      $1218
1228: D5 08        orid     $08
122A: 2D 13        jrm      $1218
122C: F3 53        cal      $1353
122E: 38 05        jrzp     $1234
1230: 67 3D        cpia     $3D
1232: 28 10        jrnzp    $1243
1234: D6 40        tsid     $40
1236: 38 3D        jrzp     $1274
1238: 10 20 3C     lidp     $203C
123B: D6 08        tsid     $08
123D: 38 36        jrzp     $1274
123F: 65 80        oria     $80
1241: 2C 28        jrp      $126A
1243: 67 5B        cpia     $5B
1245: 2A 2E        jrncp    $1274
1247: 67 41        cpia     $41
1249: 3A 2A        jrcp     $1274
124B: D6 40        tsid     $40
124D: 38 26        jrzp     $1274
124F: 10 20 3C     lidp     $203C
1252: D6 08        tsid     $08
1254: 38 1F        jrzp     $1274
1256: FC 51        cal      $1C51
1258: 28 1B        jrnzp    $1274
125A: 75 41        sbia     $41
125C: 74 E4        adia     $E4
125E: 03 84        lib      $84
1260: 2A 02        jrncp    $1263
1262: C2           incb
1263: E2 2E        cal      $022E
1265: 24           ixl
1266: 66 80        tsia     $80
1268: 38 0B        jrzp     $1274
126A: DA           exab
126B: 5B           pop
126C: 5B           pop
126D: 02 80        lia      $80
126F: 34           push
1270: 02 15        lia      $15
1272: 34           push
1273: DA           exab
1274: 37           rtn
1275: D6 02        tsid     $02
1277: 38 48        jrzp     $12C0
1279: 10 66 2C     lidp     $662C
127C: 55           mvmd
127D: C7           cpma
127E: 28 41        jrnzp    $12C0
1280: F3 57        cal      $1357
1282: D6 08        tsid     $08
1284: 28 15        jrnzp    $129A
1286: 34           push
1287: 10 66 2E     lidp     $662E
128A: 82           lp       $02
128B: 1A           mvbd
128C: 67 00        cpia     $00
128E: 28 1A        jrnzp    $12A9
1290: DA           exab
1291: 67 00        cpia     $00
1293: DA           exab
1294: 28 14        jrnzp    $12A9
1296: F4 DE        cal      $14DE
1298: 5B           pop
1299: 37           rtn
129A: 6B 01        test     $01
129C: 7E 11 3E     jpz      $113E
129F: D6 04        tsid     $04
12A1: 7E 11 3E     jpz      $113E
12A4: F0 81        cal      $1081
12A6: 79 11 3E     jp       $113E
12A9: 42           inca
12AA: 2A 02        jrncp    $12AD
12AC: C2           incb
12AD: 82           lp       $02
12AE: 10 66 2E     lidp     $662E
12B1: 1B           exbd
12B2: 5B           pop
12B3: 79 11 3E     jp       $113E
12B6: F3 57        cal      $1357
12B8: D6 01        tsid     $01
12BA: 38 43        jrzp     $12FE
12BC: D6 02        tsid     $02
12BE: 38 39        jrzp     $12F8
12C0: 11 2B        lidl     $2B
12C2: D4 FD        anid     $FD
12C4: 00 FB        lii      $FB
12C6: 6B 01        test     $01
12C8: 38 53        jrzp     $131C
12CA: 02 80        lia      $80
12CC: 03 66        lib      $66
12CE: E2 2E        cal      $022E
12D0: 03 02        lib      $02
12D2: 24           ixl
12D3: 66 0F        tsia     $0F
12D5: 28 0D        jrnzp    $12E3
12D7: 34           push
12D8: 02 00        lia      $00
12DA: E4 3D        cal      $043D
12DC: 4E E0        wait     $E0
12DE: 02 01        lia      $01
12E0: E4 3D        cal      $043D
12E2: 5B           pop
12E3: 42           inca
12E4: 52           std
12E5: 2A 30        jrncp    $1316
12E7: C3           decb
12E8: 29 17        jrnzm    $12D2
12EA: 02 FF        lia      $FF
12EC: 03 02        lib      $02
12EE: 52           std
12EF: 05           dx
12F0: C3           decb
12F1: 29 04        jrnzm    $12EE
12F3: E4 58        cal      $0458
12F5: 79 11 4A     jp       $114A
12F8: 40           inci
12F9: 7D 11 4C     jpnc     $114C
12FC: D4 FE        anid     $FE
12FE: E3 B1        cal      $03B1
1300: F3 57        cal      $1357
1302: D6 08        tsid     $08
1304: 39 3F        jrzm     $12C6
1306: 10 66 F1     lidp     $66F1
1309: 02 B0        lia      $B0
130B: 52           std
130C: 78 80 06     call     $8006
130F: F3 57        cal      $1357
1311: D4 E1        anid     $E1
1313: 79 11 4A     jp       $114A
1316: F3 57        cal      $1357
1318: D6 04        tsid     $04
131A: 28 16        jrnzp    $1331
131C: F3 57        cal      $1357
131E: D6 01        tsid     $01
1320: 7C 11 4C     jpnz     $114C
1323: 12 5D        lip      $5D
1325: 61 07        orim     $07
1327: DD           outb
1328: 4E 1C        wait     $1C
132A: 02 05        lia      $05
132C: E4 3D        cal      $043D
132E: 79 11 4C     jp       $114C
1331: F0 81        cal      $1081
1333: 79 11 4C     jp       $114C
1336: 10 67 02     lidp     $6702
1339: B8           lp       $38
133A: 1A           mvbd
133B: 84           lp       $04         ; X <- [39:38]
133C: 13 38        liq      $38         ;
133E: 0A           mvb                  ;
133F: 37           rtn                  ;
1340: 94           lp       $14
1341: 63 D0        cpim     $D0
1343: 37           rtn
1344: 86           lp       $06         ; Y <- X
1345: 13 04        liq      $04         ;
1347: 0A           mvb                  ;
1348: 37           rtn                  ;
1349: 84           lp       $04         ; X <- Y
134A: 13 06        liq      $06         ;
134C: 0A           mvb                  ;
134D: 37           rtn                  ;
134E: B8           lp       $38         ; [39:38] <- X
134F: 13 04        liq      $04         ;
1351: 0A           mvb                  ;
1352: 37           rtn                  ;
1353: 10 20 3D     lidp     $203D
1356: 37           rtn
1357: 10 66 2B     lidp     $662B
135A: 37           rtn
135B: 10 66 DA     lidp     $66DA
135E: 37           rtn
135F: 34           push
1360: 02 45        lia      $45
1362: 03 80        lib      $80
1364: E2 25        cal      $0225
1366: 5B           pop
1367: 03 00        lib      $00
1369: 67 20        cpia     $20
136B: 3A 19        jrcp     $1385
136D: 67 7B        cpia     $7B
136F: 3A 17        jrcp     $1387
1371: 67 A0        cpia     $A0
1373: 3A 11        jrcp     $1385
1375: 75 25        sbia     $25
1377: 67 BB        cpia     $BB
1379: 3A 0D        jrcp     $1387
137B: 67 CB        cpia     $CB
137D: 3A 07        jrcp     $1385
137F: 75 10        sbia     $10
1381: 67 C9        cpia     $C9
1383: 3A 03        jrcp     $1387
1385: 02 20        lia      $20
1387: 75 1F        sbia     $1F
1389: D1           rc
138A: 8B           lp       $0B
138B: DB           exam
138C: 59           ldm
138D: 5A           sl
138E: DA           exab
138F: 5A           sl
1390: DA           exab
1391: 5A           sl
1392: DA           exab
1393: 5A           sl
1394: DA           exab
1395: 44           adm
1396: 59           ldm
1397: 2A 02        jrncp    $139A
1399: C2           incb
139A: 84           lp       $04
139B: 14           adb
139C: 37           rtn
139D: 24           ixl
139E: 67 20        cpia     $20
13A0: 39 04        jrzm     $139D
13A2: 37           rtn
13A3: 84           lp       $04
13A4: 13 0C        liq      $0C
13A6: 0B           exb
13A7: 37           rtn
13A8: 10 20 3C     lidp     $203C
13AB: D6 01        tsid     $01
13AD: 38 09        jrzp     $13B7
13AF: 84           lp       $04
13B0: 10 28 3E     lidp     $283E
13B3: 01 01        lij      $01
13B5: 1A           mvbd
13B6: 37           rtn
13B7: 10 66 1B     lidp     $661B
13BA: 84           lp       $04
13BB: 1A           mvbd
13BC: 37           rtn
13BD: 10 66 E1     lidp     $66E1
13C0: 2D 07        jrm      $13BA
13C2: 02 06        lia      $06
13C4: 2C 1A        jrp      $13DF
13C6: 02 0E        lia      $0E
13C8: 2C 16        jrp      $13DF
13CA: 02 04        lia      $04
13CC: 2C 12        jrp      $13DF
13CE: 02 0C        lia      $0C
13D0: 2C 0E        jrp      $13DF
13D2: 02 0A        lia      $0A
13D4: 2C 0A        jrp      $13DF
13D6: B2           lp       $32
13D7: 60 00        anim     $00
13D9: 61 01        orim     $01
13DB: 2C 0F        jrp      $13EB
13DD: 02 08        lia      $08
13DF: B2           lp       $32
13E0: 60 F0        anim     $F0
13E2: 47           orma
13E3: F3 40        cal      $1340
13E5: 7D 0F DD     jpnc     $0FDD
13E8: B2           lp       $32
13E9: 60 7F        anim     $7F
13EB: 91           lp       $11
13EC: 62 08        tsim     $08
13EE: 28 44        jrnzp    $1433
13F0: 90           lp       $10
13F1: 63 90        cpim     $90
13F3: 2A 4B        jrncp    $143F
13F5: 63 00        cpim     $00
13F7: 28 38        jrnzp    $1430
13F9: 50           incp
13FA: 02 00        lia      $00
13FC: DB           exam
13FD: 58           swp
13FE: 64 0F        ania     $0F
1400: 67 05        cpia     $05
1402: 2A 2D        jrncp    $1430
1404: 88           lp       $08
1405: DB           exam
1406: 48           inck
1407: 02 00        lia      $00
1409: 03 00        lib      $00
140B: 00 03        lii      $03
140D: 94           lp       $14
140E: 1D           slw
140F: 91           lp       $11
1410: 60 0F        anim     $0F
1412: 44           adm
1413: 59           ldm
1414: 2A 04        jrncp    $1419
1416: C2           incb
1417: 3A 18        jrcp     $1430
1419: 49           deck
141A: 38 2C        jrzp     $1447
141C: F5 59        cal      $1559
141E: 98           lp       $18
141F: 13 02        liq      $02
1421: 0A           mvb
1422: F5 59        cal      $1559
1424: F5 59        cal      $1559
1426: 3A 09        jrcp     $1430
1428: 98           lp       $18
1429: 14           adb
142A: 82           lp       $02
142B: 13 18        liq      $18
142D: 0A           mvb
142E: 2B 22        jrncm    $140D
1430: EF C5        cal      $0FC5
1432: 37           rtn
1433: B2           lp       $32
1434: 59           ldm
1435: 64 0F        ania     $0F
1437: 67 0A        cpia     $0A
1439: 29 0A        jrnzm    $1430
143B: 61 80        orim     $80
143D: 2D 4E        jrm      $13F0
143F: 98           lp       $18
1440: 02 00        lia      $00
1442: 00 01        lii      $01
1444: 1E           film
1445: 2C 05        jrp      $144B
1447: 98           lp       $18
1448: 13 02        liq      $02
144A: 0A           mvb
144B: B2           lp       $32
144C: 59           ldm
144D: 64 07        ania     $07
144F: 38 1D        jrzp     $146D
1451: 99           lp       $19
1452: 67 02        cpia     $02
1454: 3A 4E        jrcp     $14A3
1456: 67 04        cpia     $04
1458: 3A 24        jrcp     $147D
145A: 63 00        cpim     $00
145C: 29 2D        jrnzm    $1430
145E: 98           lp       $18
145F: 67 06        cpia     $06
1461: 3A 0B        jrcp     $146D
1463: 38 05        jrzp     $1469
1465: 63 30        cpim     $30
1467: 2C 03        jrp      $146B
1469: 63 51        cpim     $51
146B: 2B 3C        jrncm    $1430
146D: 99           lp       $19
146E: 63 00        cpim     $00
1470: 28 0B        jrnzp    $147C
1472: 51           decp
1473: 63 00        cpim     $00
1475: 28 06        jrnzp    $147C
1477: B2           lp       $32
1478: 62 08        tsim     $08
147A: 39 4B        jrzm     $1430
147C: 37           rtn
147D: 62 80        tsim     $80
147F: 28 12        jrnzp    $1492
1481: B2           lp       $32
1482: 62 80        tsim     $80
1484: 39 18        jrzm     $146D
1486: 98           lp       $18
1487: 02 00        lia      $00
1489: 03 00        lib      $00
148B: 13 02        liq      $02
148D: 0B           exb
148E: 98           lp       $18
148F: 15           sbb
1490: 2D 24        jrm      $146D
1492: B2           lp       $32
1493: 62 80        tsim     $80
1495: 39 66        jrzm     $1430
1497: 99           lp       $19
1498: 63 80        cpim     $80
149A: 29 6B        jrnzm    $1430
149C: 51           decp
149D: 63 00        cpim     $00
149F: 29 70        jrnzm    $1430
14A1: 2D 35        jrm      $146D
14A3: 63 FF        cpim     $FF
14A5: 39 76        jrzm     $1430
14A7: 2D 3B        jrm      $146D
14A9: 00 05        lii      $05
14AB: 9E           lp       $1E
14AC: F4 EC        cal      $14EC
14AE: 29 04        jrnzm    $14AB
14B0: 37           rtn
14B1: 86           lp       $06
14B2: 59           ldm
14B3: 8A           lp       $0A
14B4: DB           exam
14B5: 37           rtn
14B6: 86           lp       $06
14B7: 59           ldm
14B8: 8B           lp       $0B
14B9: DB           exam
14BA: 59           ldm
14BB: 37           rtn
14BC: 91           lp       $11
14BD: 62 08        tsim     $08
14BF: 28 1A        jrnzp    $14DA
14C1: 8F           lp       $0F
14C2: 63 00        cpim     $00
14C4: 28 13        jrnzp    $14D8
14C6: FB B7        cal      $1BB7
14C8: D6 06        tsid     $06
14CA: 28 06        jrnzp    $14D1
14CC: B3           lp       $33
14CD: 62 04        tsim     $04
14CF: 38 02        jrzp     $14D2
14D1: 06           iy
14D2: 86           lp       $06
14D3: 59           ldm
14D4: 8A           lp       $0A
14D5: DB           exam
14D6: 28 02        jrnzp    $14D9
14D8: 06           iy
14D9: 37           rtn
14DA: 02 2D        lia      $2D
14DC: 26           iys
14DD: 37           rtn
14DE: 02 FE        lia      $FE
14E0: 2C 03        jrp      $14E4
14E2: 02 CE        lia      $CE
14E4: 03 FF        lib      $FF
14E6: 10 66 2E     lidp     $662E
14E9: 82           lp       $02
14EA: 1B           exbd
14EB: 37           rtn
14EC: 1D           slw
14ED: 50           incp
14EE: 02 00        lia      $00
14F0: DB           exam
14F1: 65 30        oria     $30
14F3: 26           iys
14F4: C3           decb
14F5: 37           rtn
14F6: 10 66 D7     lidp     $66D7
14F9: D6 04        tsid     $04
14FB: 37           rtn
14FC: 10 66 FC     lidp     $66FC
14FF: 84           lp       $04
1500: 1A           mvbd
1501: 05           dx
1502: 02 FF        lia      $FF
1504: 03 64        lib      $64
1506: 82           lp       $02
1507: 13 04        liq      $04
1509: 0B           exb
150A: 84           lp       $04
150B: 15           sbb
150C: 82           lp       $02
150D: 13 04        liq      $04
150F: 0B           exb
1510: 38 12        jrzp     $1523
1512: 24           ixl
1513: 8A           lp       $0A
1514: C7           cpma
1515: 24           ixl
1516: 28 05        jrnzp    $151C
1518: 8B           lp       $0B
1519: C7           cpma
151A: 38 09        jrzp     $1524
151C: 24           ixl
151D: DA           exab
151E: 24           ixl
151F: 84           lp       $04
1520: 14           adb
1521: 2B 20        jrncm    $1502
1523: D0           sc
1524: 37           rtn
1525: 86           lp       $06
1526: 10 66 FC     lidp     $66FC
1529: 1B           exbd
152A: 86           lp       $06
152B: 11 FC        lidl     $FC
152D: 1A           mvbd
152E: 07           dy
152F: 8A           lp       $0A
1530: 59           ldm
1531: 26           iys
1532: 8B           lp       $0B
1533: 59           ldm
1534: 26           iys
1535: 37           rtn
1536: F3 CE        cal      $13CE
1538: 98           lp       $18
1539: 37           rtn
153A: 88           lp       $08
153B: 13 02        liq      $02
153D: 0A           mvb
153E: 10 66 E3     lidp     $66E3
1541: 82           lp       $02
1542: 1A           mvbd
1543: 82           lp       $02
1544: 13 06        liq      $06
1546: 0B           exb
1547: 86           lp       $06
1548: 15           sbb
1549: 82           lp       $02
154A: 13 06        liq      $06
154C: 0B           exb
154D: 37           rtn
154E: 98           lp       $18
154F: 59           ldm
1550: 75 1A        sbia     $1A
1552: 03 00        lib      $00
1554: D1           rc
1555: F5 59        cal      $1559
1557: F5 59        cal      $1559
1559: D1           rc
155A: 5A           sl
155B: DA           exab
155C: 5A           sl
155D: DA           exab
155E: 37           rtn
155F: 07           dy
1560: 02 40        lia      $40
1562: 26           iys
1563: 02 00        lia      $00
1565: 26           iys
1566: 37           rtn
1567: 10 66 FC     lidp     $66FC
156A: F5 6E        cal      $156E
156C: 11 3E        lidl     $3E
156E: 8C           lp       $0C
156F: 13 06        liq      $06
1571: 0A           mvb
1572: 8C           lp       $0C
1573: 1B           exbd
1574: 37           rtn
1575: 10 66 D0     lidp     $66D0
1578: 8C           lp       $0C
1579: 1A           mvbd
157A: F4 FC        cal      $14FC
157C: 3A 3D        jrcp     $15BA
157E: B3           lp       $33
157F: 62 40        tsim     $40
1581: 7C 0F C5     jpnz     $0FC5
1584: 04           ix
1585: 04           ix
1586: 24           ixl
1587: 8C           lp       $0C
1588: DB           exam
1589: C7           cpma
158A: DB           exam
158B: DA           exab
158C: 7F 0F C5     jpc      $0FC5
158F: 24           ixl
1590: 8D           lp       $0D
1591: DB           exam
1592: C7           cpma
1593: DB           exam
1594: 7F 0F C5     jpc      $0FC5
1597: 59           ldm
1598: 8A           lp       $0A
1599: DB           exam
159A: 02 00        lia      $00
159C: 8B           lp       $0B
159D: DB           exam
159E: 59           ldm
159F: C2           incb
15A0: 5A           sl
15A1: DA           exab
15A2: F5 C2        cal      $15C2
15A4: 8C           lp       $0C
15A5: 59           ldm
15A6: 03 00        lib      $00
15A8: 8A           lp       $0A
15A9: 14           adb
15AA: 24           ixl
15AB: 34           push
15AC: 03 00        lib      $00
15AE: F5 C2        cal      $15C2
15B0: 82           lp       $02
15B1: 13 0A        liq      $0A
15B3: 0A           mvb
15B4: 84           lp       $04
15B5: 14           adb
15B6: F5 F6        cal      $15F6
15B8: 5B           pop
15B9: 37           rtn
15BA: B3           lp       $33
15BB: 62 40        tsim     $40
15BD: 7E 0F C5     jpz      $0FC5
15C0: D1           rc
15C1: 37           rtn
15C2: B0           lp       $30
15C3: 13 02        liq      $02
15C5: 0A           mvb
15C6: 02 00        lia      $00
15C8: 03 00        lib      $00
15CA: B0           lp       $30
15CB: 13 02        liq      $02
15CD: 0B           exb
15CE: 67 00        cpia     $00
15D0: 28 07        jrnzp    $15D8
15D2: DA           exab
15D3: 67 00        cpia     $00
15D5: 38 1B        jrzp     $15F1
15D7: DA           exab
15D8: D1           rc
15D9: DA           exab
15DA: D2           sr
15DB: DA           exab
15DC: D2           sr
15DD: 82           lp       $02
15DE: 13 0A        liq      $0A
15E0: 0B           exb
15E1: 2A 05        jrncp    $15E7
15E3: B0           lp       $30
15E4: 14           adb
15E5: 3A 0F        jrcp     $15F5
15E7: F5 59        cal      $1559
15E9: 3A 0B        jrcp     $15F5
15EB: 82           lp       $02
15EC: 13 0A        liq      $0A
15EE: 0B           exb
15EF: 2B 22        jrncm    $15CE
15F1: 8A           lp       $0A
15F2: 13 30        liq      $30
15F4: 0B           exb
15F5: 37           rtn
15F6: F0 2E        cal      $102E
15F8: B3           lp       $33
15F9: 62 20        tsim     $20
15FB: 38 40        jrzp     $163C
15FD: 62 04        tsim     $04
15FF: 38 5E        jrzp     $165E
1601: 02 D0        lia      $D0
1603: 94           lp       $14
1604: DB           exam
1605: 10 66 F7     lidp     $66F7
1608: 57           ldd
1609: 03 67        lib      $67
160B: 95           lp       $15
160C: 13 02        liq      $02
160E: 0A           mvb
160F: 86           lp       $06
1610: 13 02        liq      $02
1612: 0A           mvb
1613: 07           dy
1614: 89           lp       $09
1615: 60 00        anim     $00
1617: B3           lp       $33
1618: 62 90        tsim     $90
161A: 28 27        jrnzp    $1642
161C: 22           ldr
161D: 74 04        adia     $04
161F: 30           stp
1620: 59           ldm
1621: 88           lp       $08
1622: DB           exam
1623: 86           lp       $06
1624: 63 AF        cpim     $AF
1626: 2A 2C        jrncp    $1653
1628: 24           ixl
1629: 67 00        cpia     $00
162B: 38 06        jrzp     $1632
162D: 26           iys
162E: C8           incl
162F: 49           deck
1630: 29 0E        jrnzm    $1623
1632: 89           lp       $09
1633: 59           ldm
1634: 97           lp       $17
1635: DB           exam
1636: 06           iy
1637: 86           lp       $06
1638: 10 66 F7     lidp     $66F7
163B: 53           mvdm
163C: F0 39        cal      $1039
163E: D1           rc
163F: F3 44        cal      $1344
1641: 37           rtn
1642: 02 07        lia      $07
1644: 88           lp       $08
1645: DB           exam
1646: 24           ixl
1647: 67 F5        cpia     $F5
1649: 39 27        jrzm     $1623
164B: 04           ix
164C: 24           ixl
164D: 67 00        cpia     $00
164F: 39 1E        jrzm     $1632
1651: 2C 16        jrp      $1668
1653: 24           ixl
1654: 67 00        cpia     $00
1656: 39 25        jrzm     $1632
1658: F0 39        cal      $1039
165A: EF CD        cal      $0FCD
165C: 2D 1E        jrm      $163F
165E: 04           ix
165F: 90           lp       $10
1660: 00 07        lii      $07
1662: 18           mvwd
1663: 90           lp       $10
1664: 63 F5        cpim     $F5
1666: 29 2B        jrnzm    $163C
1668: F0 39        cal      $1039
166A: EF DD        cal      $0FDD
166C: 37           rtn
166D: B3           lp       $33
166E: 62 40        tsim     $40
1670: 28 1E        jrnzp    $168F
1672: F5 36        cal      $1536
1674: 3A 1C        jrcp     $1691
1676: 63 1B        cpim     $1B
1678: 2A 19        jrncp    $1692
167A: 63 00        cpim     $00
167C: 38 12        jrzp     $168F
167E: 02 01        lia      $01
1680: 45           sbm
1681: 02 C7        lia      $C7
1683: 03 65        lib      $65
1685: E2 25        cal      $0225
1687: 98           lp       $18
1688: 59           ldm
1689: F5 52        cal      $1552
168B: 84           lp       $04
168C: 15           sbb
168D: 2D 98        jrm      $15F6
168F: EF C5        cal      $0FC5
1691: 37           rtn
1692: 10 66 D8     lidp     $66D8
1695: D6 08        tsid     $08
1697: 28 26        jrnzp    $16BE
1699: 10 66 FC     lidp     $66FC
169C: 84           lp       $04
169D: 1A           mvbd
169E: 02 07        lia      $07
16A0: 03 00        lib      $00
16A2: 84           lp       $04
16A3: 15           sbb
16A4: F5 4E        cal      $154E
16A6: 84           lp       $04
16A7: 15           sbb
16A8: F3 44        cal      $1344
16AA: F5 3A        cal      $153A
16AC: 7D 0F D1     jpnc     $0FD1
16AF: 10 66 D8     lidp     $66D8
16B2: D5 08        orid     $08
16B4: F5 67        cal      $1567
16B6: F5 5F        cal      $155F
16B8: 02 03        lia      $03
16BA: 03 00        lib      $00
16BC: 2C 4D        jrp      $170A
16BE: 11 DE        lidl     $DE
16C0: 57           ldd
16C1: 98           lp       $18
16C2: C7           cpma
16C3: 38 03        jrzp     $16C7
16C5: 2A 18        jrncp    $16DE
16C7: 8B           lp       $0B
16C8: 60 00        anim     $00
16CA: 8A           lp       $0A
16CB: 02 40        lia      $40
16CD: DB           exam
16CE: F4 FC        cal      $14FC
16D0: 7F 0F C5     jpc      $0FC5
16D3: 24           ixl
16D4: DA           exab
16D5: 24           ixl
16D6: 84           lp       $04
16D7: 14           adb
16D8: F5 4E        cal      $154E
16DA: 84           lp       $04
16DB: 15           sbb
16DC: 2D E7        jrm      $15F6
16DE: DA           exab
16DF: 10 66 FC     lidp     $66FC
16E2: 84           lp       $04
16E3: 1A           mvbd
16E4: 05           dx
16E5: 24           ixl
16E6: 67 40        cpia     $40
16E8: 7C 0F C5     jpnz     $0FC5
16EB: F3 44        cal      $1344
16ED: 04           ix
16EE: 98           lp       $18
16EF: 59           ldm
16F0: DA           exab
16F1: 83           lp       $03
16F2: 45           sbm
16F3: 02 00        lia      $00
16F5: DA           exab
16F6: F5 59        cal      $1559
16F8: F5 59        cal      $1559
16FA: F5 59        cal      $1559
16FC: 86           lp       $06
16FD: 15           sbb
16FE: F5 3A        cal      $153A
1700: 7D 0F D1     jpnc     $0FD1
1703: F5 67        cal      $1567
1705: F5 5F        cal      $155F
1707: 24           ixl
1708: DA           exab
1709: 24           ixl
170A: 88           lp       $08
170B: 13 02        liq      $02
170D: 0B           exb
170E: 88           lp       $08
170F: 14           adb
1710: 88           lp       $08
1711: 13 02        liq      $02
1713: 0B           exb
1714: DA           exab
1715: 26           iys
1716: DA           exab
1717: 26           iys
1718: 06           iy
1719: 06           iy
171A: 02 08        lia      $08
171C: 26           iys
171D: F3 49        cal      $1349
171F: 02 00        lia      $00
1721: 03 00        lib      $00
1723: 82           lp       $02
1724: 13 08        liq      $08
1726: 0B           exb
1727: 78 80 0C     call     $800C
172A: 98           lp       $18
172B: 10 66 DE     lidp     $66DE
172E: 53           mvdm
172F: 79 15 F6     jp       $15F6
1732: B3           lp       $33
1733: 60 63        anim     $63
1735: 8B           lp       $0B
1736: 60 00        anim     $00
1738: 24           ixl
1739: 8A           lp       $0A
173A: DB           exam
173B: 59           ldm
173C: 67 5B        cpia     $5B
173E: 7D 0F C1     jpnc     $0FC1
1741: 67 41        cpia     $41
1743: 7F 0F C1     jpc      $0FC1
1746: 24           ixl
1747: 67 28        cpia     $28
1749: 28 2C        jrnzp    $1776
174B: 8B           lp       $0B
174C: 61 80        orim     $80
174E: B3           lp       $33
174F: 61 08        orim     $08
1751: 8A           lp       $0A
1752: 63 41        cpim     $41
1754: 28 11        jrnzp    $1766
1756: 10 66 D8     lidp     $66D8
1759: D6 40        tsid     $40
175B: 28 14        jrnzp    $1770
175D: D5 40        orid     $40
175F: B3           lp       $33
1760: 62 40        tsim     $40
1762: 38 05        jrzp     $1768
1764: D5 80        orid     $80
1766: D1           rc
1767: 37           rtn
1768: B3           lp       $33
1769: 61 80        orim     $80
176B: 8A           lp       $0A
176C: 60 40        anim     $40
176E: 2D 09        jrm      $1766
1770: D6 80        tsid     $80
1772: 39 0B        jrzm     $1768
1774: 2D 0F        jrm      $1766
1776: 67 24        cpia     $24
1778: 28 14        jrnzp    $178D
177A: 8B           lp       $0B
177B: 61 20        orim     $20
177D: B3           lp       $33
177E: 61 04        orim     $04
1780: 24           ixl
1781: 67 28        cpia     $28
1783: 28 03        jrnzp    $1787
1785: 2D 3B        jrm      $174B
1787: B3           lp       $33
1788: 61 10        orim     $10
178A: 05           dx
178B: D1           rc
178C: 37           rtn
178D: 67 5B        cpia     $5B
178F: 2B 09        jrncm    $1787
1791: 67 41        cpia     $41
1793: 2A 09        jrncp    $179D
1795: 67 3A        cpia     $3A
1797: 2B 11        jrncm    $1787
1799: 67 30        cpia     $30
179B: 3B 15        jrcm     $1787
179D: 8B           lp       $0B
179E: DB           exam
179F: 24           ixl
17A0: 67 28        cpia     $28
17A2: 28 1C        jrnzp    $17BF
17A4: B3           lp       $33
17A5: 61 08        orim     $08
17A7: 02 80        lia      $80
17A9: 8B           lp       $0B
17AA: 44           adm
17AB: D1           rc
17AC: 37           rtn
17AD: 67 5B        cpia     $5B
17AF: 2B 26        jrncm    $178A
17B1: 67 41        cpia     $41
17B3: 2B 15        jrncm    $179F
17B5: 67 3A        cpia     $3A
17B7: 2B 2E        jrncm    $178A
17B9: 67 30        cpia     $30
17BB: 3B 32        jrcm     $178A
17BD: 2D 1F        jrm      $179F
17BF: 67 24        cpia     $24
17C1: 29 15        jrnzm    $17AD
17C3: B3           lp       $33
17C4: 61 04        orim     $04
17C6: 02 40        lia      $40
17C8: 8B           lp       $0B
17C9: 44           adm
17CA: 24           ixl
17CB: 67 28        cpia     $28
17CD: 29 44        jrnzm    $178A
17CF: 2D 2C        jrm      $17A4
17D1: F7 32        cal      $1732
17D3: 3A 1E        jrcp     $17F2
17D5: B3           lp       $33
17D6: 62 80        tsim     $80
17D8: 38 1A        jrzp     $17F3
17DA: 59           ldm
17DB: 34           push
17DC: B7           lp       $37
17DD: 61 80        orim     $80
17DF: E9 B8        cal      $09B8
17E1: 5B           pop
17E2: B3           lp       $33
17E3: DB           exam
17E4: 3A 0D        jrcp     $17F2
17E6: 24           ixl
17E7: 67 29        cpia     $29
17E9: 7C 0F C1     jpnz     $0FC1
17EC: EF 65        cal      $0F65
17EE: F6 6D        cal      $166D
17F0: EF 65        cal      $0F65
17F2: 37           rtn
17F3: 62 10        tsim     $10
17F5: 38 12        jrzp     $1808
17F7: 62 40        tsim     $40
17F9: 7C 0F DD     jpnz     $0FDD
17FC: 8A           lp       $0A
17FD: 59           ldm
17FE: 75 41        sbia     $41
1800: 98           lp       $18
1801: DB           exam
1802: EF 65        cal      $0F65
1804: F6 81        cal      $1681
1806: 2D 17        jrm      $17F0
1808: 62 08        tsim     $08
180A: 38 55        jrzp     $1860
180C: 59           ldm
180D: 34           push
180E: 8A           lp       $0A
180F: 10 66 29     lidp     $6629
1812: 1B           exbd
1813: B7           lp       $37
1814: 61 80        orim     $80
1816: E9 B8        cal      $09B8
1818: 3A 45        jrcp     $185E
181A: F5 36        cal      $1536
181C: 3A 41        jrcp     $185E
181E: 10 66 D0     lidp     $66D0
1821: 53           mvdm
1822: 10 66 F5     lidp     $66F5
1825: 57           ldd
1826: 67 80        cpia     $80
1828: 38 17        jrzp     $1840
182A: 10 20 80     lidp     $2080
182D: 90           lp       $10
182E: 00 07        lii      $07
1830: 18           mvwd
1831: F5 36        cal      $1536
1833: 3A 2A        jrcp     $185E
1835: 10 66 D1     lidp     $66D1
1838: 53           mvdm
1839: 24           ixl
183A: 67 29        cpia     $29
183C: 28 1D        jrnzp    $185A
183E: 2C 0C        jrp      $184B
1840: 24           ixl
1841: 67 29        cpia     $29
1843: 28 16        jrnzp    $185A
1845: 10 66 D1     lidp     $66D1
1848: 02 00        lia      $00
184A: 52           std
184B: EF 65        cal      $0F65
184D: 5B           pop
184E: B3           lp       $33
184F: DB           exam
1850: 8A           lp       $0A
1851: 10 66 29     lidp     $6629
1854: 1A           mvbd
1855: F5 75        cal      $1575
1857: EF 65        cal      $0F65
1859: 37           rtn
185A: 5B           pop
185B: EF C1        cal      $0FC1
185D: 37           rtn
185E: 5B           pop
185F: 37           rtn
1860: 62 40        tsim     $40
1862: 7C 0F C1     jpnz     $0FC1
1865: EF 65        cal      $0F65
1867: F4 FC        cal      $14FC
1869: 3A 0D        jrcp     $1877
186B: 04           ix
186C: 04           ix
186D: 04           ix
186E: 04           ix
186F: 24           ixl
1870: 34           push
1871: F5 F6        cal      $15F6
1873: 5B           pop
1874: EF 65        cal      $0F65
1876: 37           rtn
1877: B3           lp       $33
1878: 62 20        tsim     $20
187A: 38 0E        jrzp     $1889
187C: E0 E4        cal      $00E4
187E: D1           rc
187F: B3           lp       $33
1880: 62 04        tsim     $04
1882: 39 0F        jrzm     $1874
1884: 94           lp       $14
1885: 61 D0        orim     $D0
1887: 2D 14        jrm      $1874
1889: 62 02        tsim     $02
188B: EF 65        cal      $0F65
188D: 38 3B        jrzp     $18C9
188F: 10 66 FC     lidp     $66FC
1892: 86           lp       $06
1893: 1A           mvbd
1894: B3           lp       $33
1895: 62 04        tsim     $04
1897: 38 33        jrzp     $18CB
1899: 02 17        lia      $17
189B: 03 00        lib      $00
189D: 86           lp       $06
189E: 15           sbb
189F: 7F 0F D1     jpc      $0FD1
18A2: F5 3E        cal      $153E
18A4: 7D 0F D1     jpnc     $0FD1
18A7: F5 25        cal      $1525
18A9: 02 00        lia      $00
18AB: 26           iys
18AC: B3           lp       $33
18AD: 62 04        tsim     $04
18AF: 38 1F        jrzp     $18CF
18B1: 02 13        lia      $13
18B3: 26           iys
18B4: 02 00        lia      $00
18B6: 26           iys
18B7: 26           iys
18B8: B3           lp       $33
18B9: 62 04        tsim     $04
18BB: 38 17        jrzp     $18D3
18BD: 02 10        lia      $10
18BF: 26           iys
18C0: 00 0F        lii      $0F
18C2: 34           push
18C3: 06           iy
18C4: 02 00        lia      $00
18C6: 1F           fild
18C7: 5B           pop
18C8: 07           dy
18C9: D1           rc
18CA: 37           rtn
18CB: 02 0F        lia      $0F
18CD: 2D 33        jrm      $189B
18CF: 02 0B        lia      $0B
18D1: 2D 1F        jrm      $18B3
18D3: 02 08        lia      $08
18D5: 26           iys
18D6: 00 07        lii      $07
18D8: 2D 17        jrm      $18C2
18DA: 12 5C        lip      $5C
18DC: 60 00        anim     $00
18DE: 5D           outa
18DF: 50           incp
18E0: 60 F0        anim     $F0
18E2: 61 01        orim     $01
18E4: 8A           lp       $0A
18E5: 02 02        lia      $02
18E7: DB           exam
18E8: 12 5D        lip      $5D
18EA: DD           outb
18EB: 4E 29        wait     $29
18ED: CC           inb
18EE: 66 08        tsia     $08
18F0: 28 0A        jrnzp    $18FB
18F2: 4B           decm
18F3: 38 14        jrzp     $1908
18F5: 59           ldm
18F6: 64 03        ania     $03
18F8: 44           adm
18F9: 2D 12        jrm      $18E8
18FB: 59           ldm
18FC: 64 0F        ania     $0F
18FE: DA           exab
18FF: 10 20 3C     lidp     $203C
1902: 57           ldd
1903: 64 0F        ania     $0F
1905: 83           lp       $03
1906: C7           cpma
1907: 37           rtn
1908: 60 F0        anim     $F0
190A: 61 08        orim     $08
190C: DD           outb
190D: 4E 29        wait     $29
190F: 4C           ina
1910: 66 80        tsia     $80
1912: 02 08        lia      $08
1914: 39 19        jrzm     $18FC
1916: 02 04        lia      $04
1918: 2D 1D        jrm      $18FC
191A: 12 5C        lip      $5C
191C: 60 00        anim     $00
191E: 5D           outa
191F: 50           incp
1920: 60 F0        anim     $F0
1922: 61 04        orim     $04
1924: DD           outb
1925: 4E 35        wait     $35
1927: 10 20 3C     lidp     $203C
192A: D4 7F        anid     $7F
192C: CC           inb
192D: 66 08        tsia     $08
192F: 28 03        jrnzp    $1933
1931: D5 80        orid     $80
1933: 37           rtn
1934: F9 7E        cal      $197E
1936: F9 3E        cal      $193E
1938: 42           inca
1939: 89           lp       $09
193A: 44           adm
193B: 63 19        cpim     $19
193D: 37           rtn
193E: F9 6D        cal      $196D
1940: 10 66 89     lidp     $6689
1943: 57           ldd
1944: 84           lp       $04
1945: 44           adm
1946: 24           ixl
1947: 37           rtn
1948: 84           lp       $04
1949: 10 66 25     lidp     $6625
194C: 1B           exbd
194D: 84           lp       $04
194E: 10 66 25     lidp     $6625
1951: 1A           mvbd
1952: 37           rtn
1953: 84           lp       $04
1954: 13 28        liq      $28
1956: 0B           exb
1957: 37           rtn
1958: 84           lp       $04
1959: 13 2A        liq      $2A
195B: 0B           exb
195C: 37           rtn
195D: 25           dxl
195E: 04           ix
195F: 67 FF        cpia     $FF
1961: 38 03        jrzp     $1965
1963: 67 0D        cpia     $0D
1965: 37           rtn
1966: 02 10        lia      $10
1968: 03 67        lib      $67
196A: E2 2E        cal      $022E
196C: 37           rtn
196D: 02 06        lia      $06
196F: 2D 08        jrm      $1968
1971: 10 66 88     lidp     $6688
1974: 57           ldd
1975: 11 89        lidl     $89
1977: 52           std
1978: 37           rtn
1979: 10 66 88     lidp     $6688
197C: 2C 04        jrp      $1981
197E: 10 66 89     lidp     $6689
1981: 57           ldd
1982: 43           deca
1983: 52           std
1984: 37           rtn
1985: F9 66        cal      $1966
1987: 10 66 89     lidp     $6689
198A: 2C 06        jrp      $1991
198C: F9 66        cal      $1966
198E: 10 66 88     lidp     $6688
1991: 57           ldd
1992: 58           swp
1993: 84           lp       $04
1994: 44           adm
1995: 37           rtn
1996: F9 85        cal      $1985
1998: 2C 03        jrp      $199C
199A: F9 8C        cal      $198C
199C: 24           ixl
199D: 66 40        tsia     $40
199F: 37           rtn
19A0: F9 85        cal      $1985
19A2: 2C 03        jrp      $19A6
19A4: F9 8C        cal      $198C
19A6: 02 08        lia      $08
19A8: 44           adm
19A9: 04           ix
19AA: 00 07        lii      $07
19AC: 90           lp       $10
19AD: 18           mvwd
19AE: 37           rtn
19AF: 10 66 89     lidp     $6689
19B2: 2C 04        jrp      $19B7
19B4: 10 66 88     lidp     $6688
19B7: 57           ldd
19B8: 67 09        cpia     $09
19BA: 2A 05        jrncp    $19C0
19BC: 42           inca
19BD: 52           std
19BE: D1           rc
19BF: 37           rtn
19C0: D0           sc
19C1: 37           rtn
19C2: 10 20 7E     lidp     $207E
19C5: 37           rtn
19C6: 10 20 7F     lidp     $207F
19C9: 37           rtn
19CA: 84           lp       $04
19CB: 10 66 85     lidp     $6685
19CE: 1B           exbd
19CF: 84           lp       $04
19D0: 10 66 85     lidp     $6685
19D3: 1A           mvbd
19D4: 37           rtn
19D5: 86           lp       $06
19D6: 10 66 21     lidp     $6621
19D9: 1A           mvbd
19DA: 06           iy
19DB: 57           ldd
19DC: 67 FF        cpia     $FF
19DE: 37           rtn
19DF: 10 66 88     lidp     $6688
19E2: 2C 08        jrp      $19EB
19E4: 10 66 89     lidp     $6689
19E7: 2C 03        jrp      $19EB
19E9: F9 C2        cal      $19C2
19EB: D4 00        anid     $00
19ED: 37           rtn
19EE: F3 57        cal      $1357
19F0: D6 02        tsid     $02
19F2: 28 05        jrnzp    $19F8
19F4: D5 02        orid     $02
19F6: F4 E2        cal      $14E2
19F8: 37           rtn
19F9: 86           lp       $06
19FA: 10 66 21     lidp     $6621
19FD: 1A           mvbd
19FE: 06           iy
19FF: 86           lp       $06
1A00: 10 66 85     lidp     $6685
1A03: 1B           exbd
1A04: 8A           lp       $0A
1A05: 10 66 21     lidp     $6621
1A08: 1A           mvbd
1A09: 4A           incm
1A0A: BA           lp       $3A
1A0B: 13 0A        liq      $0A
1A0D: 0A           mvb
1A0E: BA           lp       $3A
1A0F: 10 66 25     lidp     $6625
1A12: 1B           exbd
1A13: BA           lp       $3A
1A14: 10 66 25     lidp     $6625
1A17: 1A           mvbd
1A18: 37           rtn
1A19: 84           lp       $04
1A1A: 13 3A        liq      $3A
1A1C: 0A           mvb
1A1D: 37           rtn
1A1E: 8A           lp       $0A
1A1F: 02 07        lia      $07
1A21: DB           exam
1A22: 88           lp       $08
1A23: 02 10        lia      $10
1A25: DB           exam
1A26: BA           lp       $3A
1A27: 13 04        liq      $04
1A29: 0A           mvb
1A2A: 37           rtn
1A2B: 10 66 8C     lidp     $668C
1A2E: 57           ldd
1A2F: 67 7F        cpia     $7F
1A31: 37           rtn
1A32: 67 41        cpia     $41
1A34: 3A 13        jrcp     $1A48
1A36: 67 5B        cpia     $5B
1A38: 3A 0D        jrcp     $1A46
1A3A: 67 61        cpia     $61
1A3C: 3A 0B        jrcp     $1A48
1A3E: 67 7B        cpia     $7B
1A40: 3A 05        jrcp     $1A46
1A42: 67 FE        cpia     $FE
1A44: 28 03        jrnzp    $1A48
1A46: D1           rc
1A47: 37           rtn
1A48: D0           sc
1A49: 37           rtn
1A4A: E0 E7        cal      $00E7
1A4C: 88           lp       $08
1A4D: 02 10        lia      $10
1A4F: DB           exam
1A50: 05           dx
1A51: 24           ixl
1A52: 67 0D        cpia     $0D
1A54: 38 19        jrzp     $1A6E
1A56: 67 FE        cpia     $FE
1A58: 38 17        jrzp     $1A70
1A5A: 67 30        cpia     $30
1A5C: 3A 16        jrcp     $1A73
1A5E: 67 7B        cpia     $7B
1A60: 2A 0D        jrncp    $1A6E
1A62: 67 3A        cpia     $3A
1A64: 38 09        jrzp     $1A6E
1A66: 67 3D        cpia     $3D
1A68: 38 05        jrzp     $1A6E
1A6A: 67 5E        cpia     $5E
1A6C: 28 12        jrnzp    $1A7F
1A6E: 05           dx
1A6F: 37           rtn
1A70: 24           ixl
1A71: 2C 0D        jrp      $1A7F
1A73: 67 23        cpia     $23
1A75: 39 08        jrzm     $1A6E
1A77: 67 2C        cpia     $2C
1A79: 38 05        jrzp     $1A7F
1A7B: 67 28        cpia     $28
1A7D: 2B 10        jrncm    $1A6E
1A7F: 88           lp       $08
1A80: 63 17        cpim     $17
1A82: 2B 32        jrncm    $1A51
1A84: 34           push
1A85: 59           ldm
1A86: 30           stp
1A87: 5B           pop
1A88: DB           exam
1A89: 48           inck
1A8A: 2D 3A        jrm      $1A51
1A8C: F9 53        cal      $1953
1A8E: F9 66        cal      $1966
1A90: 8B           lp       $0B
1A91: 02 0A        lia      $0A
1A93: DB           exam
1A94: 04           ix
1A95: FA 1E        cal      $1A1E
1A97: 05           dx
1A98: 24           ixl
1A99: 66 80        tsia     $80
1A9B: 38 1B        jrzp     $1AB7
1A9D: 88           lp       $08
1A9E: 59           ldm
1A9F: 30           stp
1AA0: 24           ixl
1AA1: C7           cpma
1AA2: 28 0C        jrnzp    $1AAF
1AA4: 67 00        cpia     $00
1AA6: 38 05        jrzp     $1AAC
1AA8: 48           inck
1AA9: 4B           decm
1AAA: 29 0E        jrnzm    $1A9D
1AAC: D1           rc
1AAD: 2C 0B        jrp      $1AB9
1AAF: FA 19        cal      $1A19
1AB1: 84           lp       $04
1AB2: 70 0F        adim     $0F
1AB4: CB           decn
1AB5: 29 22        jrnzm    $1A94
1AB7: EF C9        cal      $0FC9
1AB9: F9 53        cal      $1953
1ABB: 37           rtn
1ABC: F9 53        cal      $1953
1ABE: 84           lp       $04
1ABF: 10 66 21     lidp     $6621
1AC2: 1A           mvbd
1AC3: 24           ixl
1AC4: 67 FF        cpia     $FF
1AC6: 38 2B        jrzp     $1AF2
1AC8: FA 1E        cal      $1A1E
1ACA: 88           lp       $08
1ACB: 59           ldm
1ACC: 30           stp
1ACD: 24           ixl
1ACE: 67 3D        cpia     $3D
1AD0: 28 07        jrnzp    $1AD8
1AD2: 63 00        cpim     $00
1AD4: 28 12        jrnzp    $1AE7
1AD6: 2C 0D        jrp      $1AE4
1AD8: 67 FE        cpia     $FE
1ADA: 28 02        jrnzp    $1ADD
1ADC: 24           ixl
1ADD: C7           cpma
1ADE: 28 08        jrnzp    $1AE7
1AE0: 48           inck
1AE1: 4B           decm
1AE2: 29 19        jrnzm    $1ACA
1AE4: D1           rc
1AE5: 2C 10        jrp      $1AF6
1AE7: 67 FF        cpia     $FF
1AE9: 38 0A        jrzp     $1AF4
1AEB: 67 23        cpia     $23
1AED: 39 26        jrzm     $1AC8
1AEF: 24           ixl
1AF0: 2D 0A        jrm      $1AE7
1AF2: FA 26        cal      $1A26
1AF4: EF C9        cal      $0FC9
1AF6: F9 53        cal      $1953
1AF8: 37           rtn
1AF9: 59           ldm
1AFA: 89           lp       $09
1AFB: DB           exam
1AFC: 59           ldm
1AFD: 67 00        cpia     $00
1AFF: 38 14        jrzp     $1B14
1B01: 8A           lp       $0A
1B02: DB           exam
1B03: 8B           lp       $0B
1B04: 60 00        anim     $00
1B06: 24           ixl
1B07: 67 FE        cpia     $FE
1B09: 28 05        jrnzp    $1B0F
1B0B: C8           incl
1B0C: CA           incn
1B0D: 2D 08        jrm      $1B06
1B0F: 4B           decm
1B10: 29 0B        jrnzm    $1B06
1B12: 89           lp       $09
1B13: 59           ldm
1B14: 37           rtn
1B15: 97           lp       $17
1B16: 59           ldm
1B17: 88           lp       $08
1B18: DB           exam
1B19: 98           lp       $18
1B1A: 59           ldm
1B1B: 88           lp       $08
1B1C: C7           cpma
1B1D: 37           rtn
1B1E: 03 01        lib      $01
1B20: F4 A9        cal      $14A9
1B22: 24           ixl
1B23: 67 2E        cpia     $2E
1B25: 29 08        jrnzm    $1B1E
1B27: 06           iy
1B28: 37           rtn
1B29: DA           exab
1B2A: 8A           lp       $0A
1B2B: 59           ldm
1B2C: 83           lp       $03
1B2D: 45           sbm
1B2E: 37           rtn
1B2F: 02 60        lia      $60
1B31: 10 66 50     lidp     $6650
1B34: 00 2F        lii      $2F
1B36: 1F           fild
1B37: 37           rtn
1B38: 00 17        lii      $17
1B3A: 90           lp       $10
1B3B: 10 66 50     lidp     $6650
1B3E: 18           mvwd
1B3F: 11 1E        lidl     $1E
1B41: 57           ldd
1B42: 74 10        adia     $10
1B44: 88           lp       $08
1B45: DB           exam
1B46: 37           rtn
1B47: 00 17        lii      $17
1B49: 90           lp       $10
1B4A: 10 66 68     lidp     $6668
1B4D: 18           mvwd
1B4E: 75 18        sbia     $18
1B50: 2D 0F        jrm      $1B42
1B52: 90           lp       $10
1B53: 10 66 50     lidp     $6650
1B56: 00 17        lii      $17
1B58: 19           exwd
1B59: 90           lp       $10
1B5A: 11 50        lidl     $50
1B5C: 18           mvwd
1B5D: 37           rtn
1B5E: 90           lp       $10
1B5F: 10 66 68     lidp     $6668
1B62: 00 17        lii      $17
1B64: 19           exwd
1B65: 90           lp       $10
1B66: 11 68        lidl     $68
1B68: 18           mvwd
1B69: 37           rtn
1B6A: 10 66 19     lidp     $6619
1B6D: 8A           lp       $0A
1B6E: 1A           mvbd
1B6F: 8A           lp       $0A
1B70: 10 66 1B     lidp     $661B
1B73: 1B           exbd
1B74: 37           rtn
1B75: 10 66 B8     lidp     $66B8
1B78: 00 17        lii      $17
1B7A: 90           lp       $10
1B7B: 18           mvwd
1B7C: 11 1D        lidl     $1D
1B7E: 57           ldd
1B7F: 74 10        adia     $10
1B81: 88           lp       $08
1B82: DB           exam
1B83: 37           rtn
1B84: 10 66 B8     lidp     $66B8
1B87: 90           lp       $10
1B88: 00 17        lii      $17
1B8A: 19           exwd
1B8B: 02 20        lia      $20
1B8D: 90           lp       $10
1B8E: 1E           film
1B8F: 37           rtn
1B90: FB 75        cal      $1B75
1B92: 78 80 21     call     $8021
1B95: 10 66 B8     lidp     $66B8
1B98: 00 17        lii      $17
1B9A: 02 00        lia      $00
1B9C: 1F           fild
1B9D: 88           lp       $08
1B9E: 02 10        lia      $10
1BA0: DB           exam
1BA1: 10 66 1D     lidp     $661D
1BA4: D4 00        anid     $00
1BA6: 37           rtn
1BA7: 02 0D        lia      $0D
1BA9: 10 67 B0     lidp     $67B0
1BAC: 00 4F        lii      $4F
1BAE: 1F           fild
1BAF: 37           rtn
1BB0: 02 60        lia      $60
1BB2: 00 17        lii      $17
1BB4: 90           lp       $10
1BB5: 1E           film
1BB6: 37           rtn
1BB7: 10 66 1F     lidp     $661F
1BBA: 37           rtn
1BBB: 10 66 3D     lidp     $663D
1BBE: D6 04        tsid     $04
1BC0: 37           rtn
1BC1: E2 2A        cal      $022A
1BC3: 02 10        lia      $10
1BC5: 88           lp       $08
1BC6: DB           exam
1BC7: 78 80 42     call     $8042
1BCA: FB 52        cal      $1B52
1BCC: 37           rtn
1BCD: 10 66 50     lidp     $6650
1BD0: 02 20        lia      $20
1BD2: 00 17        lii      $17
1BD4: 1F           fild
1BD5: 37           rtn
1BD6: 10 66 68     lidp     $6668
1BD9: 2D 0A        jrm      $1BD0
1BDB: FB CD        cal      $1BCD
1BDD: FB D6        cal      $1BD6
1BDF: 37           rtn
1BE0: 02 4F        lia      $4F
1BE2: 03 66        lib      $66
1BE4: E2 22        cal      $0222
1BE6: 37           rtn
1BE7: 02 67        lia      $67
1BE9: 2D 08        jrm      $1BE2
1BEB: 10 66 16     lidp     $6616
1BEE: 84           lp       $04
1BEF: 1B           exbd
1BF0: 10 66 16     lidp     $6616
1BF3: 84           lp       $04
1BF4: 1A           mvbd
1BF5: 37           rtn
1BF6: 10 66 14     lidp     $6614
1BF9: 84           lp       $04
1BFA: 1B           exbd
1BFB: 10 66 14     lidp     $6614
1BFE: 84           lp       $04
1BFF: 1A           mvbd
1C00: 37           rtn
1C01: 02 67        lia      $67
1C03: 2C 03        jrp      $1C07
1C05: 02 4F        lia      $4F
1C07: 03 66        lib      $66
1C09: E2 25        cal      $0225
1C0B: 37           rtn
1C0C: FC 01        cal      $1C01
1C0E: FB E0        cal      $1BE0
1C10: 2C 05        jrp      $1C16
1C12: FC 05        cal      $1C05
1C14: FB E7        cal      $1BE7
1C16: 03 18        lib      $18
1C18: 24           ixl
1C19: 26           iys
1C1A: C3           decb
1C1B: 29 04        jrnzm    $1C18
1C1D: 37           rtn
1C1E: 24           ixl
1C1F: 67 E0        cpia     $E0
1C21: 2A 04        jrncp    $1C26
1C23: 26           iys
1C24: 2D 07        jrm      $1C1E
1C26: 66 08        tsia     $08
1C28: 29 06        jrnzm    $1C23
1C2A: 37           rtn
1C2B: 10 66 11     lidp     $6611
1C2E: D4 00        anid     $00
1C30: 10 66 12     lidp     $6612
1C33: D4 70        anid     $70
1C35: 37           rtn
1C36: 86           lp       $06
1C37: 59           ldm
1C38: 64 0F        ania     $0F
1C3A: 67 0F        cpia     $0F
1C3C: 38 05        jrzp     $1C42
1C3E: 67 07        cpia     $07
1C40: 28 03        jrnzp    $1C44
1C42: 70 01        adim     $01
1C44: 60 F8        anim     $F8
1C46: 70 08        adim     $08
1C48: 86           lp       $06
1C49: 63 80        cpim     $80
1C4B: 2A 03        jrncp    $1C4F
1C4D: D1           rc
1C4E: 37           rtn
1C4F: D0           sc
1C50: 37           rtn
1C51: 10 66 12     lidp     $6612
1C54: D6 80        tsid     $80
1C56: 37           rtn
1C57: FC 51        cal      $1C51
1C59: 38 14        jrzp     $1C6E
1C5B: D6 02        tsid     $02
1C5D: 28 12        jrnzp    $1C70
1C5F: D6 04        tsid     $04
1C61: 28 0C        jrnzp    $1C6E
1C63: 10 66 11     lidp     $6611
1C66: D6 10        tsid     $10
1C68: 28 07        jrnzp    $1C70
1C6A: D6 08        tsid     $08
1C6C: 38 03        jrzp     $1C70
1C6E: D1           rc
1C6F: 37           rtn
1C70: D0           sc
1C71: 37           rtn
1C72: FB 38        cal      $1B38
1C74: 10 20 80     lidp     $2080
1C77: 90           lp       $10
1C78: 19           exwd
1C79: FB 47        cal      $1B47
1C7B: 11 98        lidl     $98
1C7D: 90           lp       $10
1C7E: 19           exwd
1C7F: 37           rtn
1C80: 10 20 80     lidp     $2080
1C83: 00 17        lii      $17
1C85: 90           lp       $10
1C86: 18           mvwd
1C87: FB 52        cal      $1B52
1C89: 11 98        lidl     $98
1C8B: 90           lp       $10
1C8C: 18           mvwd
1C8D: FB 5E        cal      $1B5E
1C8F: 37           rtn
1C90: 24           ixl
1C91: 67 7B        cpia     $7B
1C93: 3A 0A        jrcp     $1C9E
1C95: 67 F0        cpia     $F0
1C97: 3A 44        jrcp     $1CDC
1C99: 67 FE        cpia     $FE
1C9B: 28 02        jrnzp    $1C9E
1C9D: 24           ixl
1C9E: 10 20 3C     lidp     $203C
1CA1: 67 7B        cpia     $7B
1CA3: 2A 16        jrncp    $1CBA
1CA5: 67 00        cpia     $00
1CA7: 38 0D        jrzp     $1CB5
1CA9: 67 60        cpia     $60
1CAB: 38 09        jrzp     $1CB5
1CAD: 67 5C        cpia     $5C
1CAF: 28 07        jrnzp    $1CB7
1CB1: D6 80        tsid     $80
1CB3: 28 03        jrnzp    $1CB7
1CB5: 02 20        lia      $20
1CB7: 67 20        cpia     $20
1CB9: 37           rtn
1CBA: 67 A1        cpia     $A1
1CBC: 3A 1F        jrcp     $1CDC
1CBE: D6 80        tsid     $80
1CC0: 38 17        jrzp     $1CD8
1CC2: 67 E0        cpia     $E0
1CC4: 3A 11        jrcp     $1CD6
1CC6: 67 F0        cpia     $F0
1CC8: 3A 13        jrcp     $1CDC
1CCA: 67 F9        cpia     $F9
1CCC: 3A 09        jrcp     $1CD6
1CCE: 67 FB        cpia     $FB
1CD0: 3A 0B        jrcp     $1CDC
1CD2: 67 FD        cpia     $FD
1CD4: 2A 07        jrncp    $1CDC
1CD6: D1           rc
1CD7: 37           rtn
1CD8: 67 F5        cpia     $F5
1CDA: 2B 11        jrncm    $1CCA
1CDC: D0           sc
1CDD: 37           rtn
1CDE: 10 66 B8     lidp     $66B8
1CE1: 00 17        lii      $17
1CE3: 02 00        lia      $00
1CE5: 1F           fild
1CE6: 37           rtn
1CE7: DA           exab
1CE8: 10 66 0D     lidp     $660D
1CEB: 57           ldd
1CEC: 83           lp       $03
1CED: 44           adm
1CEE: DA           exab
1CEF: 37           rtn
1CF0: DA           exab
1CF1: 10 66 0E     lidp     $660E
1CF4: 2D 0A        jrm      $1CEB
1CF6: DA           exab
1CF7: 10 66 0F     lidp     $660F
1CFA: 2D 10        jrm      $1CEB
1CFC: 00 FF        lii      $FF
1CFE: 00 FF        lii      $FF
1D00: B7           lp       $37
1D01: 02 00        lia      $00
1D03: FF 00        cal      $1F00
1D05: FF 00        cal      $1F00
1D07: FF 00        cal      $1F00
1D09: FF 00        cal      $1F00
1D0B: FF 00        cal      $1F00
1D0D: FF 00        cal      $1F00
1D0F: FF 00        cal      $1F00
1D11: FD 00        cal      $1D00
1D13: FF 00        cal      $1F00
1D15: FF 80        cal      $1F80
1D17: FF 00        cal      $1F00
1D19: FF 00        cal      $1F00
1D1B: FF 00        cal      $1F00
1D1D: FF 00        cal      $1F00
1D1F: FF 00        cal      $1F00
1D21: FF 00        cal      $1F00
1D23: FF 00        cal      $1F00
1D25: FF 01        cal      $1F01
1D27: FF 00        cal      $1F00
1D29: FF 00        cal      $1F00
1D2B: FF 00        cal      $1F00
1D2D: FF 00        cal      $1F00
1D2F: FF 80        cal      $1F80
1D31: BF           lp       $3F
1D32: 00 FF        lii      $FF
1D34: 00 FF        lii      $FF
1D36: 00 FF        lii      $FF
1D38: 00 BF        lii      $BF
1D3A: 00 FF        lii      $FF
1D3C: 00 FF        lii      $FF
1D3E: 00 FF        lii      $FF
1D40: 00 FF        lii      $FF
1D42: 00 FF        lii      $FF
1D44: 00 FF        lii      $FF
1D46: 00 FF        lii      $FF
1D48: 00 FF        lii      $FF
1D4A: 00 FF        lii      $FF
1D4C: 00 FF        lii      $FF
1D4E: 04           ix
1D4F: FD 40        cal      $1D40
1D51: FF 00        cal      $1F00
1D53: FF 00        cal      $1F00
1D55: FF 00        cal      $1F00
1D57: FF 00        cal      $1F00
1D59: FF 00        cal      $1F00
1D5B: FF 00        cal      $1F00
1D5D: FF 40        cal      $1F40
1D5F: FE 00        cal      $1E00
1D61: FF 00        cal      $1F00
1D63: FF 00        cal      $1F00
1D65: FF 00        cal      $1F00
1D67: FF 00        cal      $1F00
1D69: FF 00        cal      $1F00
1D6B: FF 00        cal      $1F00
1D6D: FF 00        cal      $1F00
1D6F: FF 00        cal      $1F00
1D71: FF 00        cal      $1F00
1D73: FF 00        cal      $1F00
1D75: FF 00        cal      $1F00
1D77: FF 00        cal      $1F00
1D79: FF 00        cal      $1F00
1D7B: FF 00        cal      $1F00
1D7D: FF 00        cal      $1F00
1D7F: FF 00        cal      $1F00
1D81: FF 00        cal      $1F00
1D83: FF 00        cal      $1F00
1D85: FF 00        cal      $1F00
1D87: FF 01        cal      $1F01
1D89: BF           lp       $3F
1D8A: 00 FF        lii      $FF
1D8C: 00 FF        lii      $FF
1D8E: 00 FF        lii      $FF
1D90: 81           lp       $01
1D91: FF 00        cal      $1F00
1D93: FF 00        cal      $1F00
1D95: FF 00        cal      $1F00
1D97: FF 00        cal      $1F00
1D99: FF 00        cal      $1F00
1D9B: FF 00        cal      $1F00
1D9D: FF 00        cal      $1F00
1D9F: BF           lp       $3F
1DA0: 00 FF        lii      $FF
1DA2: 00 FF        lii      $FF
1DA4: 00 FF        lii      $FF
1DA6: 00 FF        lii      $FF
1DA8: 00 FF        lii      $FF
1DAA: 00 FF        lii      $FF
1DAC: 00 FF        lii      $FF
1DAE: 80           lp       $00
1DAF: FF 00        cal      $1F00
1DB1: 7F 00 FF     jpc      $00FF
1DB4: 00 FF        lii      $FF
1DB6: 00 FF        lii      $FF
1DB8: 00 FF        lii      $FF
1DBA: 00 FF        lii      $FF
1DBC: 00 FF        lii      $FF
1DBE: 20           ldp
1DBF: FF 20        cal      $1F20
1DC1: FF 00        cal      $1F00
1DC3: FF 00        cal      $1F00
1DC5: FF 20        cal      $1F20
1DC7: FF 01        cal      $1F01
1DC9: FF 00        cal      $1F00
1DCB: FF 00        cal      $1F00
1DCD: FF 10        cal      $1F10
1DCF: FF 00        cal      $1F00
1DD1: DF           outc
1DD2: 00 FF        lii      $FF
1DD4: 00 FF        lii      $FF
1DD6: 00 FF        lii      $FF
1DD8: 00 FF        lii      $FF
1DDA: 00 FF        lii      $FF
1DDC: 00 FF        lii      $FF
1DDE: 00 FF        lii      $FF
1DE0: 00 FF        lii      $FF
1DE2: 00 FF        lii      $FF
1DE4: 00 FF        lii      $FF
1DE6: 00 FF        lii      $FF
1DE8: 00 FF        lii      $FF
1DEA: 00 FF        lii      $FF
1DEC: 00 FF        lii      $FF
1DEE: 40           inci
1DEF: 5F           outf
1DF0: 40           inci
1DF1: FF 00        cal      $1F00
1DF3: FF 00        cal      $1F00
1DF5: FF 00        cal      $1F00
1DF7: FF 00        cal      $1F00
1DF9: FF 00        cal      $1F00
1DFB: FF 00        cal      $1F00
1DFD: FF 00        cal      $1F00
1DFF: FF BA        cal      $1FBA
1E01: 71 00        sbim     $00
1E03: FF 00        cal      $1F00
1E05: FF 00        cal      $1F00
1E07: FF 00        cal      $1F00
1E09: FF 00        cal      $1F00
1E0B: FF 00        cal      $1F00
1E0D: FF 00        cal      $1F00
1E0F: FF 00        cal      $1F00
1E11: FF 00        cal      $1F00
1E13: FF 00        cal      $1F00
1E15: FF 00        cal      $1F00
1E17: FF 00        cal      $1F00
1E19: FF 00        cal      $1F00
1E1B: FF 00        cal      $1F00
1E1D: FF 00        cal      $1F00
1E1F: FF 06        cal      $1F06
1E21: FF 00        cal      $1F00
1E23: FF 00        cal      $1F00
1E25: FF 00        cal      $1F00
1E27: FF 00        cal      $1F00
1E29: FF 00        cal      $1F00
1E2B: FF 00        cal      $1F00
1E2D: FF 00        cal      $1F00
1E2F: BF           lp       $3F
1E30: 00 FF        lii      $FF
1E32: 00 FF        lii      $FF
1E34: 00 FF        lii      $FF
1E36: 00 FF        lii      $FF
1E38: 00 FF        lii      $FF
1E3A: 00 FF        lii      $FF
1E3C: 00 FF        lii      $FF
1E3E: 00 FF        lii      $FF
1E40: 00 FF        lii      $FF
1E42: 00 FF        lii      $FF
1E44: 00 FF        lii      $FF
1E46: 00 FF        lii      $FF
1E48: 00 FF        lii      $FF
1E4A: 00 FF        lii      $FF
1E4C: 00 FF        lii      $FF
1E4E: 00 FF        lii      $FF
1E50: 00 BF        lii      $BF
1E52: 00 FF        lii      $FF
1E54: 00 FF        lii      $FF
1E56: 40           inci
1E57: FF 00        cal      $1F00
1E59: FF 00        cal      $1F00
1E5B: FF 00        cal      $1F00
1E5D: FF 00        cal      $1F00
1E5F: FD 02        cal      $1D02
1E61: FF 00        cal      $1F00
1E63: FF 00        cal      $1F00
1E65: FF 00        cal      $1F00
1E67: FF 00        cal      $1F00
1E69: FF 00        cal      $1F00
1E6B: FF 00        cal      $1F00
1E6D: FF 00        cal      $1F00
1E6F: FF 00        cal      $1F00
1E71: FF 00        cal      $1F00
1E73: FF 00        cal      $1F00
1E75: FF 00        cal      $1F00
1E77: FF 00        cal      $1F00
1E79: FE 00        cal      $1E00
1E7B: FF 00        cal      $1F00
1E7D: FF 02        cal      $1F02
1E7F: FF 00        cal      $1F00
1E81: FF 00        cal      $1F00
1E83: FF 00        cal      $1F00
1E85: FF 00        cal      $1F00
1E87: FF 00        cal      $1F00
1E89: FF 00        cal      $1F00
1E8B: FF 00        cal      $1F00
1E8D: FF 00        cal      $1F00
1E8F: FF 00        cal      $1F00
1E91: FF 00        cal      $1F00
1E93: FF 00        cal      $1F00
1E95: FF 00        cal      $1F00
1E97: FF 00        cal      $1F00
1E99: FF 00        cal      $1F00
1E9B: FF 00        cal      $1F00
1E9D: FF 00        cal      $1F00
1E9F: FF 00        cal      $1F00
1EA1: FF 00        cal      $1F00
1EA3: FF 00        cal      $1F00
1EA5: FF 00        cal      $1F00
1EA7: FF 20        cal      $1F20
1EA9: B7           lp       $37
1EAA: 00 FF        lii      $FF
1EAC: 00 FF        lii      $FF
1EAE: 02 FF        lia      $FF
1EB0: 00 FF        lii      $FF
1EB2: 00 FF        lii      $FF
1EB4: 00 FF        lii      $FF
1EB6: 00 FF        lii      $FF
1EB8: 00 FF        lii      $FF
1EBA: 00 FF        lii      $FF
1EBC: 00 FF        lii      $FF
1EBE: 05           dx
1EBF: FF 00        cal      $1F00
1EC1: FD 00        cal      $1D00
1EC3: FF 00        cal      $1F00
1EC5: FF 00        cal      $1F00
1EC7: FF 00        cal      $1F00
1EC9: FF 00        cal      $1F00
1ECB: FF 00        cal      $1F00
1ECD: FF 00        cal      $1F00
1ECF: FF 00        cal      $1F00
1ED1: DF           outc
1ED2: 00 FF        lii      $FF
1ED4: 00 FF        lii      $FF
1ED6: 00 FF        lii      $FF
1ED8: 00 FF        lii      $FF
1EDA: 00 FF        lii      $FF
1EDC: 00 FF        lii      $FF
1EDE: 00 FF        lii      $FF
1EE0: 20           ldp
1EE1: FF 00        cal      $1F00
1EE3: FF 00        cal      $1F00
1EE5: FF 00        cal      $1F00
1EE7: EF 00        cal      $0F00
1EE9: FF 00        cal      $1F00
1EEB: FF 00        cal      $1F00
1EED: FF 00        cal      $1F00
1EEF: FF 88        cal      $1F88
1EF1: FF 00        cal      $1F00
1EF3: FF 00        cal      $1F00
1EF5: FF 20        cal      $1F20
1EF7: FF 00        cal      $1F00
1EF9: FD 00        cal      $1D00
1EFB: FF 00        cal      $1F00
1EFD: FF 02        cal      $1F02
1EFF: 7F DE 86     jpc      $DE86
1F02: 00 FF        lii      $FF
1F04: 00 FF        lii      $FF
1F06: 00 00        lii      $00
1F08: 00 08        lii      $08
1F0A: 00 FF        lii      $FF
1F0C: 00 FF        lii      $FF
1F0E: 00 00        lii      $00
1F10: 00 00        lii      $00
1F12: 00 FF        lii      $FF
1F14: 00 FF        lii      $FF
1F16: 00 10        lii      $10
1F18: 00 14        lii      $14
1F1A: 00 FF        lii      $FF
1F1C: 00 FF        lii      $FF
1F1E: 00 00        lii      $00
1F20: 00 00        lii      $00
1F22: 00 FF        lii      $FF
1F24: 00 FF        lii      $FF
1F26: 00 10        lii      $10
1F28: 02 00        lia      $00
1F2A: 00 FF        lii      $FF
1F2C: 00 FF        lii      $FF
1F2E: 00 00        lii      $00
1F30: 02 00        lia      $00
1F32: 00 FF        lii      $FF
1F34: 00 FF        lii      $FF
1F36: 00 00        lii      $00
1F38: 90           lp       $10
1F39: 00 00        lii      $00
1F3B: FF 00        cal      $1F00
1F3D: FF 80        cal      $1F80
1F3F: 08           mvw
1F40: 40           inci
1F41: 00 00        lii      $00
1F43: FF 00        cal      $1F00
1F45: FF 44        cal      $1F44
1F47: 00 00        lii      $00
1F49: 00 00        lii      $00
1F4B: FF 00        cal      $1F00
1F4D: FF 00        cal      $1F00
1F4F: 10 00 00     lidp     $0000
1F52: 00 FF        lii      $FF
1F54: 00 FF        lii      $FF
1F56: 00 04        lii      $04
1F58: 00 00        lii      $00
1F5A: 00 FF        lii      $FF
1F5C: 00 FF        lii      $FF
1F5E: 00 00        lii      $00
1F60: 00 00        lii      $00
1F62: 00 FF        lii      $FF
1F64: 00 FF        lii      $FF
1F66: 00 00        lii      $00
1F68: 00 00        lii      $00
1F6A: 00 FF        lii      $FF
1F6C: 00 FF        lii      $FF
1F6E: 00 00        lii      $00
1F70: 00 00        lii      $00
1F72: 00 FF        lii      $FF
1F74: 00 FF        lii      $FF
1F76: 00 00        lii      $00
1F78: 00 10        lii      $10
1F7A: 00 FF        lii      $FF
1F7C: 00 FF        lii      $FF
1F7E: 00 00        lii      $00
1F80: 00 00        lii      $00
1F82: 00 FF        lii      $FF
1F84: 00 FF        lii      $FF
1F86: 00 00        lii      $00
1F88: 00 00        lii      $00
1F8A: 00 FF        lii      $FF
1F8C: 00 FF        lii      $FF
1F8E: 00 00        lii      $00
1F90: 40           inci
1F91: 00 00        lii      $00
1F93: FF 00        cal      $1F00
1F95: FF 00        cal      $1F00
1F97: 00 00        lii      $00
1F99: 00 00        lii      $00
1F9B: FF 00        cal      $1F00
1F9D: FF 00        cal      $1F00
1F9F: 00 00        lii      $00
1FA1: 00 00        lii      $00
1FA3: FF 00        cal      $1F00
1FA5: FF 02        cal      $1F02
1FA7: 00 00        lii      $00
1FA9: 00 00        lii      $00
1FAB: FF 00        cal      $1F00
1FAD: FF 02        cal      $1F02
1FAF: 00 00        lii      $00
1FB1: 00 00        lii      $00
1FB3: FF 00        cal      $1F00
1FB5: FF 00        cal      $1F00
1FB7: 00 00        lii      $00
1FB9: 00 00        lii      $00
1FBB: FF 00        cal      $1F00
1FBD: FF 00        cal      $1F00
1FBF: 08           mvw
1FC0: 00 00        lii      $00
1FC2: 00 FF        lii      $FF
1FC4: 00 FF        lii      $FF
1FC6: 00 00        lii      $00
1FC8: 00 00        lii      $00
1FCA: 00 FF        lii      $FF
1FCC: 00 FF        lii      $FF
1FCE: 08           mvw
1FCF: 00 00        lii      $00
1FD1: 00 00        lii      $00
1FD3: FF 00        cal      $1F00
1FD5: FF 00        cal      $1F00
1FD7: 81           lp       $01
1FD8: 00 00        lii      $00
1FDA: 00 FF        lii      $FF
1FDC: 00 FF        lii      $FF
1FDE: 00 00        lii      $00
1FE0: 00 00        lii      $00
1FE2: 00 FF        lii      $FF
1FE4: 00 FF        lii      $FF
1FE6: 00 00        lii      $00
1FE8: 00 00        lii      $00
1FEA: 00 FF        lii      $FF
1FEC: 00 FF        lii      $FF
1FEE: 00 00        lii      $00
1FF0: D1           rc
1FF1: 42           inca
1FF2: 5B           pop
1FF3: 5B           pop
1FF4: 37           rtn
1FF5: FF 00        cal      $1F00
1FF7: 00 00        lii      $00
1FF9: 00 00        lii      $00
1FFB: FF 00        cal      $1F00
1FFD: FF 10        cal      $1F10
1FFF: 00 00        lii      $00
