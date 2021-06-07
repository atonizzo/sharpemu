0000: 79 7F 21     jp       $7F21
0003: 79 6D EA     jp       $6DEA
0006: 79 6D 0F     jp       $6D0F
0009: 79 5A 01     jp       $5A01
000C: 79 69 F9     jp       $69F9
000F: 79 6A D3     jp       $6AD3
0012: 79 6A F9     jp       $6AF9
0015: 79 6B 21     jp       $6B21
0018: 79 7F 45     jp       $7F45
001B: 79 7F 93     jp       $7F93
001E: 79 47 2E     jp       $472E
0021: 11 52        lidl     $52
0023: 62 55        tsim     $55
0025: 51           decp
0026: 5B           pop
0027: 11 59        lidl     $59
0029: 5E           ???
002A: 11 55        lidl     $55
002C: 62 62        tsim     $62
002E: 5F           outf
002F: 62 41        tsim     $41
0031: 2B 41        jrncm    $FFFFFFF1
0033: 5E           ???
0034: 41           deci
0035: 66 41        tsia     $41
0037: BA           lp       $3A
0038: 41           deci
0039: EA 42        cal      $0A42
003B: 01 42        lij      $42
003D: 08           mvw
003E: 00 00        lii      $00
0040: 42           inca
0041: 21           ldq
0042: 00 00        lii      $00
0044: 42           inca
0045: 4B           decm
0046: 42           inca
0047: 52           std
0048: 42           inca
0049: 91           lp       $11
004A: 42           inca
004B: A9           lp       $29
004C: 42           inca
004D: BF           lp       $3F
004E: 42           inca
004F: E5 00        cal      $0500
0051: 00 43        lii      $43
0053: 15           sbb
0054: 43           deca
0055: 6C           ???
0056: 43           deca
0057: A3           lp       $23
0058: 43           deca
0059: C9           decl
005A: 43           deca
005B: D2           sr
005C: 43           deca
005D: D9           ???
005E: 00 00        lii      $00
0060: 00 00        lii      $00
0062: 00 00        lii      $00
0064: 41           deci
0065: 57           ldd
0066: 43           deca
0067: D2           sr
0068: 42           inca
0069: 81           lp       $01
006A: 00 00        lii      $00
006C: 41           deci
006D: 34           push
006E: 00 00        lii      $00
0070: 00 00        lii      $00
0072: 00 00        lii      $00
0074: 42           inca
0075: D8           leave
0076: 42           inca
0077: B1           lp       $31
0078: 43           deca
0079: 74 41        adia     $41
007B: A2           lp       $22
007C: 41           deci
007D: AA           lp       $2A
007E: 42           inca
007F: 41           deci
0080: 43           deca
0081: 89           lp       $09
0082: 42           inca
0083: 88           lp       $08
0084: 43           deca
0085: 4A           incm
0086: 42           inca
0087: A1           lp       $21
0088: 00 00        lii      $00
008A: 43           deca
008B: C3           decb
008C: 43           deca
008D: 91           lp       $11
008E: 43           deca
008F: A3           lp       $23
0090: 43           deca
0091: 40           inci
0092: 00 00        lii      $00
0094: 43           deca
0095: D9           ???
0096: 41           deci
0097: F8 00        cal      $1800
0099: 00 00        lii      $00
009B: 00 42        lii      $42
009D: 4B           decm
009E: 00 00        lii      $00
00A0: 43           deca
00A1: 99           lp       $19
00A2: 00 00        lii      $00
00A4: 00 00        lii      $00
00A6: 43           deca
00A7: 65 42        oria     $42
00A9: 63 43        cpim     $43
00AB: 7B           ???
00AC: 41           deci
00AD: 9B           lp       $1B
00AE: 43           deca
00AF: AB           lp       $2B
00B0: 41           deci
00B1: 49           deck
00B2: 41           deci
00B3: 50           incp
00B4: 41           deci
00B5: 42           inca
00B6: 41           deci
00B7: F1 42        cal      $1142
00B9: 74 42        adia     $42
00BB: 6D           ???
00BC: 42           inca
00BD: 3A 41        jrcp     $00FF
00BF: 3B 43        jrcm     $007D
00C1: 82           lp       $02
00C2: 41           deci
00C3: CB           decn
00C4: 41           deci
00C5: D2           sr
00C6: 43           deca
00C7: 39 42        jrzm     $0086
00C9: FC 43        cal      $1C43
00CB: 15           sbb
00CC: 42           inca
00CD: B8           lp       $38
00CE: 42           inca
00CF: 91           lp       $11
00D0: 42           inca
00D1: 52           std
00D2: 41           deci
00D3: 66 41        tsia     $41
00D5: E1 41        cal      $0141
00D7: 80           lp       $00
00D8: 41           deci
00D9: 77           ???
00DA: 42           inca
00DB: 98           lp       $18
00DC: 43           deca
00DD: B2           lp       $32
00DE: 43           deca
00DF: BA           lp       $3A
00E0: 42           inca
00E1: EE 42        cal      $0E42
00E3: 5A           sl
00E4: 42           inca
00E5: F6 42        cal      $1642
00E7: CD           ???
00E8: 42           inca
00E9: 30           stp
00EA: 42           inca
00EB: 19           exwd
00EC: 42           inca
00ED: E5 42        cal      $0542
00EF: 21           ldq
00F0: 43           deca
00F1: 54           readm
00F2: 41           deci
00F3: C1           decj
00F4: 41           deci
00F5: 6E           ???
00F6: 00 00        lii      $00
00F8: 00 00        lii      $00
00FA: 00 00        lii      $00
00FC: 41           deci
00FD: B2           lp       $32
00FE: 41           deci
00FF: BA           lp       $3A
0100: 41           deci
0101: D9           ???
0102: 42           inca
0103: BF           lp       $3F
0104: 42           inca
0105: DE           ???
0106: 43           deca
0107: 04           ix
0108: 43           deca
0109: 26           iys
010A: 42           inca
010B: 2A 42        jrncp    $014E
010D: 01 42        lij      $42
010F: 7A 43 5E 41  dtj      $43, $5E41
0113: EA 42        cal      $0A42
0115: A9           lp       $29
0116: 43           deca
0117: 6C           ???
0118: 42           inca
0119: 08           mvw
011A: 42           inca
011B: 10 41 89     lidp     $4189
011E: 43           deca
011F: 0C           adn
0120: 41           deci
0121: 5E           ???
0122: 41           deci
0123: 2B 43        jrncm    $00E1
0125: C9           decl
0126: 43           deca
0127: 1C           srw
0128: 43           deca
0129: 2E           ???
012A: B5           lp       $35
012B: 51           decp
012C: 62 55        tsim     $55
012E: 51           decp
012F: 54           readm
0130: DC           ???
0131: 51           decp
0132: 26           iys
0133: A3           lp       $23
0134: 51           decp
0135: 5E           ???
0136: 54           readm
0137: 81           lp       $01
0138: 13 12        liq      $12
013A: A3           lp       $23
013B: 51           decp
013C: 52           std
013D: 63 AA        cpim     $AA
013F: 13 12        liq      $12
0141: A3           lp       $23
0142: 51           decp
0143: 64 5E        ania     $5E
0145: A5           lp       $25
0146: 13 12        liq      $12
0148: A3           lp       $23
0149: 51           decp
014A: 63 5E        cpim     $5E
014C: A3           lp       $23
014D: 13 12        liq      $12
014F: A3           lp       $23
0150: 51           decp
0151: 53           mvdm
0152: 63 A4        cpim     $A4
0154: 13 12        liq      $12
0156: A3           lp       $23
0157: 51           decp
0158: 63 53        cpim     $53
015A: 7D 13 12     jpnc     $1312
015D: 94           lp       $14
015E: 52           std
015F: 55           mvmd
0160: 55           mvmd
0161: 60 DB        anim     $DB
0163: 51           decp
0164: 40           inci
0165: F4 53        cal      $1453
0167: 5F           outf
0168: 5E           ???
0169: 64 B4        ania     $B4
016B: 51           decp
016C: 75 C5        sbia     $C5
016E: 53           mvdm
016F: 5C           ???
0170: 55           mvmd
0171: 51           decp
0172: 62 C5        tsim     $C5
0174: 51           decp
0175: 98           lp       $18
0176: E5 53        cal      $0553
0178: 5C           ???
0179: 5F           outf
017A: 51           decp
017B: 54           readm
017C: B7           lp       $37
017D: 71 87        sbim     $87
017F: C5           sbcm
0180: 53           mvdm
0181: 63 51        cpim     $51
0183: 66 55        tsia     $55
0185: B6           lp       $36
0186: 6E           ???
0187: FD E5        cal      $1DE5
0189: 53           mvdm
018A: 58           swp
018B: 51           decp
018C: 59           ldm
018D: 5E           ???
018E: D9           ???
018F: 74 89        adia     $89
0191: A5           lp       $25
0192: 53           mvdm
0193: 11 11        lidl     $11
0195: 11 11        lidl     $11
0197: 9D           lp       $1D
0198: 17 05        .default $1705
019A: E3 53        cal      $0353
019C: 5F           outf
019D: 63 A1        cpim     $A1
019F: 13 12        liq      $12
01A1: A4           lp       $24
01A2: 53           mvdm
01A3: 58           swp
01A4: 62 18        tsim     $18
01A6: 88           lp       $08
01A7: 13 12        liq      $12
01A9: A4           lp       $24
01AA: 53           mvdm
01AB: 5F           outf
01AC: 5D           outa
01AD: 18           mvwd
01AE: 89           lp       $09
01AF: 13 12        liq      $12
01B1: C4           adcm
01B2: 53           mvdm
01B3: 51           decp
01B4: 5C           ???
01B5: 5C           ???
01B6: C9           decl
01B7: 51           decp
01B8: AF           lp       $2F
01B9: F3 54        cal      $1354
01BB: 59           ldm
01BC: 5D           outa
01BD: CA           incn
01BE: 51           decp
01BF: D1           rc
01C0: E6 54        cal      $0654
01C2: 55           mvmd
01C3: 57           ldd
01C4: 62 55        tsim     $55
01C6: 55           mvmd
01C7: C4           adcm
01C8: 52           std
01C9: 7D E3 54     jpnc     $E354
01CC: 55           mvmd
01CD: 57           ldd
01CE: AC           lp       $2C
01CF: 7F C1 A3     jpc      $C1A3
01D2: 54           readm
01D3: 5D           outa
01D4: 63 AD        cpim     $AD
01D6: 0A           mvb
01D7: 3A A4        jrcp     $027C
01D9: 54           readm
01DA: 51           decp
01DB: 64 51        ania     $51
01DD: CB           decn
01DE: 51           decp
01DF: 26           iys
01E0: A5           lp       $25
01E1: 54           readm
01E2: 55           mvmd
01E3: 52           std
01E4: 65 57        oria     $57
01E6: B5           lp       $35
01E7: 17 05        .default $1705
01E9: F3 55        cal      $1355
01EB: 5E           ???
01EC: 54           readm
01ED: D4 52        anid     $52
01EF: 87           lp       $07
01F0: A3           lp       $23
01F1: 55           mvmd
01F2: 68           ???
01F3: 60 A6        anim     $A6
01F5: 13 12        liq      $12
01F7: A5           lp       $25
01F8: 55           mvmd
01F9: 62 62        tsim     $62
01FB: 5F           outf
01FC: 62 96        tsim     $96
01FE: 17 05        .default $1705
0200: F3 56        cal      $1356
0202: 5F           outf
0203: 62 D1        tsim     $D1
0205: 52           std
0206: 91           lp       $11
0207: B4           lp       $34
0208: 57           ldd
0209: 5F           outf
020A: 64 5F        ania     $5F
020C: D7           ???
020D: 53           mvdm
020E: 26           iys
020F: E5 57        cal      $0557
0211: 5F           outf
0212: 63 65        cpim     $65
0214: 52           std
0215: D8           leave
0216: 53           mvdm
0217: 4C           ina
0218: A4           lp       $24
0219: 57           ldd
021A: 62 51        tsim     $51
021C: 54           readm
021D: C0           incj
021E: 53           mvdm
021F: 72           ???
0220: F5 59        cal      $1559
0222: 5E           ???
0223: 60 65        anim     $65
0225: 64 C2        ania     $C2
0227: 53           mvdm
0228: 7E E2 59     jpz      $E259
022B: 56           read
022C: D0           sc
022D: 54           readm
022E: 1D           slw
022F: A6           lp       $26
0230: 59           ldm
0231: 5E           ???
0232: 63 64        cpim     $64
0234: 51           decp
0235: 64 BF        ania     $BF
0237: 6D           ???
0238: 0F           sbw
0239: E3 59        cal      $0359
023B: 5E           ???
023C: 64 A9        ania     $A9
023E: 13 12        liq      $12
0240: A6           lp       $26
0241: 59           ldm
0242: 5E           ???
0243: 5B           pop
0244: 55           mvmd
0245: 69           ptj
0246: 18 8A 13     .case    $18, $8A13
0249: 12 D3 5B     .case    $12, $D35B
024C: 55 69 99     .case    $55, $6999
024F: 6D 95 F4     .case    $6D, $95F4
0252: 5C 59 63     .case    $5C, $5963
0255: 64 B3 54     .case    $64, $B354
0258: 6E C5 5C     .case    $6E, $C55C
025B: 5C 59 63     .case    $5C, $5963
025E: 64 BC 7A     .case    $64, $BC7A
0261: FD C6 5C     .case    $FD, $C65C
0264: 60 62 59     .case    $60, $6259
0267: 5E 64 9F     .case    $5E, $649F
026A: 7C 27 A3     .case    $7C, $27A3
026D: 5C 5F 57     .case    $5C, $5F57
0270: A8 13 12     .case    $A8, $1312
0273: A2 5C 5E     .case    $A2, $5C5E
0276: A7 13 12     .case    $A7, $1312
0279: A3 5C 55     .case    $A3, $5C55
027C: 64 D2 54     .case    $64, $D254
027F: E3 A3 5C     .case    $E3, $A35C
0282: 55 5E 7F     .case    $55, $5E7F
0285: 13 12 85     .case    $13, $1285
0288: 5C 55 56     .case    $5C, $5556
028B: 64 18 8C     .case    $64, $188C
028E: 13 12 D3     .case    $13, $12D3
0291: 5D 55 5D     .case    $5D, $555D
0294: B2 13 12     .case    $B2, $1312
0297: C5 5D 55     .case    $C5, $5D55
029A: 62 57 55     .case    $62, $5755
029D: B8 71 9D     .case    $B8, $719D
02A0: C4 5D 59     .case    $C4, $5D59
02A3: 54 18 8E     .case    $54, $188E
02A6: 13 12 D4     .case    $13, $12D4
02A9: 5E 55 68     .case    $5E, $5568
02AC: 64 D5 55     .case    $64, $D555
02AF: 59 A3 5E     .case    $59, $A35E
02B2: 5F 64 86     .case    $5F, $6486
02B5: 13 12 A3     .case    $13, $12A3
02B8: 5E 55 67     .case    $5E, $5567
02BB: B1 55 E4     .case    $B1, $55E4
02BE: F2 5F 5E     .case    $F2, $5F5E
02C1: CC 56 3C     .case    $CC, $563C
02C4: A4 5F 11     .case    $A4, $5F11
02C7: 11 11 9C     .case    $11, $119C
02CA: 17 05 E7     .case    $17, $05E7
02CD: 5F 65 64     .case    $5F, $6564
02D0: 63 64 51     .case    $63, $6451
02D3: 64 BE 6D     .case    $64, $BE6D
02D6: 2F E2 5F     .case    $2F, $E25F
02D9: 62 85 13     .case    $62, $8513
02DC: 12 A3 5F     .case    $12, $A35F
02DF: 56 56 CD     .case    $56, $56CD
02E2: 17 05 F5     .case    $17, $05F5
02E5: 60 62 59     .case    $60, $6259
02E8: 5E 64 C1     .case    $5E, $64C1
02EB: 56 A9 E4     .case    $56, $A9E4
02EE: 60 51 63     .case    $60, $5163
02F1: 63 BB 57     .case    $63, $BB57
02F4: 60 C2 60     .case    $60, $C260
02F7: 59 BD 13     .case    $59, $BD13
02FA: 12 C4 60     .case    $12, $C460
02FD: 55 55 5B     .case    $55, $555B
0300: AF 13 12     .case    $AF, $1312
0303: A4 60 5F     .case    $A4, $605F
0306: 5B 55 CE     .case    $5B, $55CE
0309: 57 DC E5     .case    $57, $DCE5
030C: 60 51 65     .case    $60, $5165
030F: 63 55        .default $6355
0311: DA           exab
0312: 57           ldd
0313: 45           sbm
0314: B3           lp       $33
0315: 62 65        tsim     $65
0317: 5E           ???
0318: B0           lp       $30
0319: 59           ldm
031A: 7A C6 62 55  dtj      $C6, $6255
031E: 64 65        ania     $65
0320: 62 5E        tsim     $5E
0322: DE           ???
0323: 58           swp
0324: 1E           film
0325: A4           lp       $24
0326: 62 55        tsim     $55
0328: 51           decp
0329: 54           readm
032A: CF           ???
032B: 58           swp
032C: EC A7        cal      $0CA7
032E: 62 55        tsim     $55
0330: 63 64        cpim     $64
0332: 5F           outf
0333: 62 55        tsim     $55
0335: DF           outc
0336: 58           swp
0337: 3B A3        jrcm     $0295
0339: 62 5E        tsim     $5E
033B: 54           readm
033C: AE           lp       $2E
033D: 13 12        liq      $12
033F: A6           lp       $26
0340: 62 51        tsim     $51
0342: 5E           ???
0343: 54           readm
0344: 5F           outf
0345: 5D           outa
0346: 93           lp       $13
0347: 58           swp
0348: 65 E6        oria     $E6
034A: 62 59        tsim     $59
034C: 57           ldd
034D: 58           swp
034E: 64 18        ania     $18
0350: 8D           lp       $0D
0351: 13 12        liq      $12
0353: C6           tsma
0354: 62 51        tsim     $51
0356: 54           readm
0357: 59           ldm
0358: 51           decp
0359: 5E           ???
035A: C3           decb
035B: 58           swp
035C: 8C           lp       $0C
035D: E3 62        cal      $0362
035F: 55           mvmd
0360: 5D           outa
0361: D3           ???
0362: 5A           sl
0363: 71 A3        sbim     $A3
0365: 62 5F        tsim     $5F
0367: 5D           outa
0368: 9E           lp       $1E
0369: 6D           ???
036A: A2           lp       $22
036B: D4 63        anid     $63
036D: 64 5F        ania     $5F
036F: 60 D6        anim     $D6
0371: 58           swp
0372: 96           lp       $16
0373: A3           lp       $23
0374: 63 61        cpim     $61
0376: 62 87        tsim     $87
0378: 13 12        liq      $12
037A: A3           lp       $23
037B: 63 59        cpim     $59
037D: 5E           ???
037E: A0           lp       $20
037F: 13 12        liq      $12
0381: A3           lp       $23
0382: 63 57        cpim     $57
0384: 5E           ???
0385: AB           lp       $2B
0386: 13 12        liq      $12
0388: A4           lp       $24
0389: 63 64        cpim     $64
038B: 62 18        tsim     $18
038D: 8B           lp       $0B
038E: 13 12        liq      $12
0390: A4           lp       $24
0391: 63 64        cpim     $64
0393: 55           mvmd
0394: 60 91        anim     $91
0396: 17 05        .default $1705
0398: E6 63        cal      $0663
039A: 55           mvmd
039B: 64 53        ania     $53
039D: 5F           outf
039E: 5D           outa
039F: 9B           lp       $1B
03A0: 6B 75        test     $75
03A2: F4 64        cal      $1464
03A4: 58           swp
03A5: 55           mvmd
03A6: 5E           ???
03A7: 92           lp       $12
03A8: 17 05        .default $1705
03AA: E3 64        cal      $0364
03AC: 51           decp
03AD: 5E           ???
03AE: A2           lp       $22
03AF: 13 12        liq      $12
03B1: A4           lp       $24
03B2: 64 62        ania     $62
03B4: 5F           outf
03B5: 5E           ???
03B6: B9           lp       $39
03B7: 58           swp
03B8: 9A           lp       $1A
03B9: E5 64        cal      $0564
03BB: 62 5F        tsim     $5F
03BD: 56           read
03BE: 56           read
03BF: BA           lp       $3A
03C0: 58           swp
03C1: 9E           lp       $1E
03C2: E2 64        cal      $0264
03C4: 5F           outf
03C5: 90           lp       $10
03C6: 17 05        .default $1705
03C8: F5 65        cal      $1565
03CA: 63 59        cpim     $59
03CC: 5E           ???
03CD: 57           ldd
03CE: DD           outb
03CF: 58           swp
03D0: A2           lp       $22
03D1: F3 66        cal      $1366
03D3: 51           decp
03D4: 5C           ???
03D5: 7E 13 12     jpz      $1312
03D8: 94           lp       $14
03D9: 67 51        cpia     $51
03DB: 59           ldm
03DC: 64 95        ania     $95
03DE: 58           swp
03DF: C3           decb
03E0: F0 31        cal      $1031
03E2: 30           stp
03E3: 05           dx
03E4: 06           iy
03E5: 4B           decm
03E6: 32           str
03E7: 33           ???
03E8: 39 00        jrzm     $03E9
03EA: 00 00        lii      $00
03EC: 00 00        lii      $00
03EE: 00 00        lii      $00
03F0: 19           exwd
03F1: 41           deci
03F2: 42           inca
03F3: 1E           film
03F4: 44           adm
03F5: 45           sbm
03F6: 17 47        .default $1747
03F8: 48           inck
03F9: 49           deck
03FA: 1A           mvbd
03FB: E1 E2        cal      $01E2
03FD: E3 E4        cal      $03E4
03FF: 15           sbb
0400: E6 E7        cal      $06E7
0402: E8 1D        cal      $081D
0404: EA EB        cal      $0AEB
0406: EC ED        cal      $0CED
0408: EE 1B        cal      $0E1B
040A: 1C           srw
040B: 14           adb
040C: 18           mvwd
040D: F3 16        cal      $1316
040F: 13 F6        liq      $F6
0411: 12 F8        lip      $F8
0413: 1F           fild
0414: FA C1        cal      $1AC1
0416: C2           incb
0417: C3           decb
0418: C4           adcm
0419: 55           mvmd
041A: C6           tsma
041B: C7           cpma
041C: C8           incl
041D: 59           ldm
041E: CA           incn
041F: CB           decn
0420: CC           inb
0421: CD           ???
0422: CE           nopt
0423: 5F           outf
0424: 60 61        anim     $61
0426: 62 D3        tsim     $D3
0428: 64 65        ania     $65
042A: D6 67        tsid     $67
042C: D8           leave
042D: 69           ptj
042E: DA 66 56     .case    $DA, $6656
0431: 62 0C 44     .case    $62, $0C44
0434: 41 47 52     .case    $41, $4752
0437: 57 64 0F     .case    $57, $640F
043A: 60 34 5E     .case    $60, $345E
043D: 58 69 0E     .case    $58, $690E
0440: 5F 5D 5A     .case    $5F, $5D5A
0443: 65 04 11     .case    $65, $0411
0446: 5B 59 00     .case    $5B, $5900
0449: 5C 40 53     .case    $5C, $4053
044C: 54 55 0D     .case    $54, $550D
044F: 38 37 02     .case    $38, $3702
0452: 36 68 63     .case    $36, $6863
0455: 67 09 46     .case    $67, $0946
0458: 43 49 35     .case    $43, $4935
045B: 6A 51 61     .case    $6A, $5161
045E: 0A 45 42     .case    $0A, $4542
0461: 48 4A 04     .case    $48, $4A04
0464: 63 41 41     .case    $63, $4141
0467: 41 63 00     .case    $41, $6300
046A: 00 00 00     .case    $00, $0000
046D: 00 00 03     .case    $00, $0003
0470: 04 03 00     .case    $04, $0300
0473: 02 01 51     .case    $02, $0151
0476: 09 06 00     .case    $09, $0600
0479: 00 5F 00     .case    $00, $5F00
047C: 00 22 7F     .case    $00, $227F
047F: 22 7F 22     .case    $22, $7F22
0482: 23 13 08     .case    $23, $1308
0485: 64 62 15     .case    $64, $6215
0488: 16 7C 16     .case    $16, $7C16
048B: 15 24 2A     .case    $15, $242A
048E: 7F 2A 12     .case    $7F, $2A12
0491: 41 3F 01     .case    $41, $3F01
0494: 3F 41 10     .case    $3F, $4110
0497: 20 7F 01     .case    $20, $7F01
049A: 01 00 58     .case    $01, $0058
049D: 38 00 00     .case    $38, $0000
04A0: 00 5B 3B     .case    $00, $5B3B
04A3: 00 00 00     .case    $00, $0000
04A6: 36 36 00     .case    $36, $3600
04A9: 00 32 49     .case    $00, $3249
04AC: 79 41 3E     .case    $79, $413E
04AF: 36 49 55     .case    $36, $4955
04B2: 22 50 00     .case    $22, $5000
04B5: 1C 22 41     .case    $1C, $2241
04B8: 00 00 41     .case    $00, $0041
04BB: 22 1C 00     .case    $22, $1C00
04BE: 00 41 22     .case    $00, $4122
04C1: 14 08 08     .case    $14, $0808
04C4: 14 22 41     .case    $14, $2241
04C7: 00 14 14     .case    $00, $1414
04CA: 14 14 14     .case    $14, $1414
04CD: 08 08 3E     .case    $08, $083E
04D0: 08 08 08     .case    $08, $0808
04D3: 08 08 08     .case    $08, $0808
04D6: 08 14 08     .case    $08, $1408
04D9: 3E 08 14     .case    $3E, $0814
04DC: 20 10 08     .case    $20, $1008
04DF: 04 02 18     .case    $04, $0218
04E2: 04 02 04     .case    $04, $0204
04E5: 18 79 7F     .case    $18, $797F
04E8: C1 79 45     .case    $C1, $7945
04EB: DE 79 5C     .case    $DE, $795C
04EE: CF 79 68     .case    $CF, $7968
04F1: B5 79 62     .case    $B5, $7962
04F4: F1 79 6A     .case    $F1, $796A
04F7: 51 79 62     .case    $51, $7962
04FA: 79 79 69     .case    $79, $7969
04FD: C7 79 6D     .case    $C7, $796D
0500: BC 79 6C     .case    $BC, $796C
0503: BD 3E 51     .case    $BD, $3E51
0506: 49 45 3E     .case    $49, $453E
0509: 00 42 7F     .case    $00, $427F
050C: 40 00 42     .case    $40, $0042
050F: 61 51 49     .case    $61, $5149
0512: 46 41 49     .case    $46, $4149
0515: 4D 4B 31     .case    $4D, $4B31
0518: 18 14 12     .case    $18, $1412
051B: 7F 10 27     .case    $7F, $1027
051E: 45 45 45     .case    $45, $4545
0521: 39 3C 4A     .case    $39, $3C4A
0524: 49 49 30     .case    $49, $4930
0527: 01 01 79     .case    $01, $0179
052A: 05 03 36     .case    $05, $0336
052D: 49 49 49     .case    $49, $4949
0530: 36 06 49     .case    $36, $0649
0533: 49 29 1E     .case    $49, $291E
0536: 00 60 60     .case    $00, $6060
0539: 00 00 7F     .case    $00, $007F
053C: 7F 49 49     .case    $7F, $4949
053F: 49 7F 7F     .case    $49, $7F7F
0542: 7F 7F 7F     .case    $7F, $7F7F
0545: 08 04 08     .case    $08, $0408
0548: 10 08 40     .case    $10, $0840
054B: 40 40 40     .case    $40, $4040
054E: 40 00 00     .case    $40, $0000
0551: 00 00 00     .case    $00, $0000
0554: 00 00 00     .case    $00, $0000
0557: 00 00 7C     .case    $00, $007C
055A: 12 11 12     .case    $12, $1112
055D: 7C 41 7F     .case    $7C, $417F
0560: 49 49 36     .case    $49, $4936
0563: 3E 41 41     .case    $3E, $4141
0566: 41 22 41     .case    $41, $2241
0569: 7F 41 41     .case    $7F, $4141
056C: 3E 7F 49     .case    $3E, $7F49
056F: 49 49 41     .case    $49, $4941
0572: 7F 09 09     .case    $7F, $0909
0575: 09 01 3E     .case    $09, $013E
0578: 41 41 49     .case    $41, $4149
057B: 39 7F 08     .case    $39, $7F08
057E: 08 08 7F     .case    $08, $087F
0581: 00 41 7F     .case    $00, $417F
0584: 41 00 20     .case    $41, $0020
0587: 40 41 3F     .case    $40, $413F
058A: 01 7F 08     .case    $01, $7F08
058D: 14 22 41     .case    $14, $2241
0590: 7F 40 40     .case    $7F, $4040
0593: 40 40 7F     .case    $40, $407F
0596: 02 0C 02     .case    $02, $0C02
0599: 7F 7F 04     .case    $7F, $7F04
059C: 08 10 7F     .case    $08, $107F
059F: 3E 41 41     .case    $3E, $4141
05A2: 41 3E 7F     .case    $41, $3E7F
05A5: 09 09 09     .case    $09, $0909
05A8: 06 3E 41     .case    $06, $3E41
05AB: 51 21 5E     .case    $51, $215E
05AE: 7F 09 19     .case    $7F, $0919
05B1: 29 46 26     .case    $29, $4626
05B4: 49 49 49     .case    $49, $4949
05B7: 32 01 01     .case    $32, $0101
05BA: 7F 01 01     .case    $7F, $0101
05BD: 3F 40 40     .case    $3F, $4040
05C0: 40 3F 07     .case    $40, $3F07
05C3: 18 60 18     .case    $18, $6018
05C6: 07 7F 20     .case    $07, $7F20
05C9: 18 20 7F     .case    $18, $207F
05CC: 63 14 08     .case    $63, $1408
05CF: 14 63 03     .case    $14, $6303
05D2: 04 78 04     .case    $04, $7804
05D5: 03 61 51     .case    $03, $6151
05D8: 49 45 43     .case    $49, $4543
05DB: 79 4A 65     .case    $79, $4A65
05DE: 02 5C 32     .case    $02, $5C32
05E1: 01 01 93     .case    $01, $0193
05E4: 61 80 97     .case    $61, $8097
05E7: 60 3F B0     .case    $60, $3FB0
05EA: 02 50 C7     .case    $02, $50C7
05ED: 28 07 93     .case    $28, $0793
05F0: 60 7F B0     .case    $60, $7FB0
05F3: 2C 06 02     .case    $2C, $0602
05F6: A0 C7 28     .case    $A0, $C728
05F9: C4 03 07     .case    $C4, $0307
05FC: 42 50 C7     .case    $42, $50C7
05FF: 28 BD C3     .case    $28, $BDC3
0602: 29 07 B0     .case    $29, $07B0
0605: 02 50 03     .case    $02, $5003
0608: 08 DB 59     .case    $08, $DB59
060B: 42 50 C3     .case    $42, $50C3
060E: 29 06 02     .case    $29, $0602
0611: 04 8A DB     .case    $04, $8ADB
0614: 02 03 88     .case    $02, $0388
0617: DB 02 00     .case    $DB, $0200
061A: 03 B8 F1     .case    $03, $B8F1
061D: F1 00 03     .case    $F1, $0003
0620: 04 B0 19     .case    $04, $B019
0623: 04 05 B0     .case    $04, $05B0
0626: 19 78 47     .case    $19, $7847
0629: 1C 28 8C     .case    $1C, $288C
062C: F1 77 05     .case    $F1, $7705
062F: 04 B0 19     .case    $04, $B019
0632: 8A 59 5A     .case    $8A, $595A
0635: DB 59 87     .case    $DB, $5987
0638: 45 07 06     .case    $45, $0706
063B: B4 19 05     .case    $B4, $1905
063E: 04 B0 19     .case    $04, $B019
0641: 78 47 1C     .case    $78, $471C
0644: 07 06 28     .case    $07, $0628
0647: 08 B4 19     .case    $08, $B419
064A: F1 72 49     .case    $F1, $7249
064D: 29 20 F1     .case    $29, $20F1
0650: 77 78 6A     .case    $77, $786A
0653: 51 3A 53     .case    $51, $3A53
0656: 10 20 0A     .case    $10, $200A
0659: 82 1A 10     .case    $82, $1A10
065C: C6 C4 82     .case    $C6, $C482
065F: 1B 02 00     .case    $1B, $0200
0662: 86 DB 10     .case    $86, $DB10
0665: C6 E1 82     .case    $C6, $E182
0668: 1A 82 13     .case    $1A, $8213
066B: 06 0B 86     .case    $06, $0B86
066E: 15 38 31     .case    $15, $3831
0671: 11 E1 82     .case    $11, $E182
0674: 1B 78 56     .case    $1B, $7856
0677: 0D 78 55     .case    $0D, $7855
067A: F8 10 F8     .case    $F8, $10F8
067D: 3C D4 00     .case    $3C, $D400
0680: D5 0C        .default $D50C
0682: 11 3D        lidl     $3D
0684: D4 00        anid     $00
0686: 11 3E        lidl     $3E
0688: D4 00        anid     $00
068A: D5 02        orid     $02
068C: 78 7F A7     call     $7FA7
068F: 78 46 E4     call     $46E4
0692: 02 59        lia      $59
0694: 03 15        lib      $15
0696: 00 07        lii      $07
0698: A0           lp       $20
0699: 35           data
069A: 10 F8 B0     lidp     $F8B0
069D: A0           lp       $20
069E: 19           exwd
069F: 2C 2F        jrp      $06CF
06A1: 93           lp       $13
06A2: 62 80        tsim     $80
06A4: 39 19        jrzm     $068C
06A6: 2C 28        jrp      $06CF
06A8: 87           lp       $07
06A9: 59           ldm
06AA: 43           deca
06AB: DA           exab
06AC: 02 FF        lia      $FF
06AE: 10 C6 C4     lidp     $C6C4
06B1: 82           lp       $02
06B2: 1B           exbd
06B3: 02 30        lia      $30
06B5: 2D 54        jrm      $0662
06B7: 02 C0        lia      $C0
06B9: 87           lp       $07
06BA: DB           exam
06BB: 2D 6B        jrm      $0651
06BD: FF 44        cal      $1F44
06BF: 2A 06        jrncp    $06C6
06C1: 93           lp       $13
06C2: 60 7F        anim     $7F
06C4: 2D C1        jrm      $0604
06C6: 10 C6 E1     lidp     $C6E1
06C9: 03 00        lib      $00
06CB: 82           lp       $02
06CC: 1B           exbd
06CD: 2D CA        jrm      $0604
06CF: F1 62        cal      $1162
06D1: D5 01        orid     $01
06D3: 11 3C        lidl     $3C
06D5: D4 FD        anid     $FD
06D7: 78 6A 51     call     $6A51
06DA: 3A 04        jrcp     $06DF
06DC: 78 20 0C     call     $200C
06DF: F1 E0        cal      $11E0
06E1: 79 1D 00     jp       $1D00
06E4: 96           lp       $16
06E5: 60 FB        anim     $FB
06E7: F8 C5        cal      $18C5
06E9: 95           lp       $15
06EA: 60 C0        anim     $C0
06EC: 97           lp       $17
06ED: 60 3F        anim     $3F
06EF: F1 62        cal      $1162
06F1: D4 E1        anid     $E1
06F3: 11 BF        lidl     $BF
06F5: 02 00        lia      $00
06F7: 52           std
06F8: 11 3C        lidl     $3C
06FA: D4 FE        anid     $FE
06FC: 11 3D        lidl     $3D
06FE: D4 F4        anid     $F4
0700: 10 C6 D7     lidp     $C6D7
0703: D4 F3        anid     $F3
0705: 11 D8        lidl     $D8
0707: D4 FE        anid     $FE
0709: D5 06        orid     $06
070B: 11 D9        lidl     $D9
070D: D4 F9        anid     $F9
070F: 78 70 36     call     $7036
0712: F1 89        cal      $1189
0714: 04           ix
0715: 04           ix
0716: 10 C7 0E     lidp     $C70E
0719: 84           lp       $04
071A: 1B           exbd
071B: 37           rtn
071C: 02 50        lia      $50
071E: 03 04        lib      $04
0720: B0           lp       $30
0721: C7           cpma
0722: 28 06        jrnzp    $0729
0724: 42           inca
0725: 50           incp
0726: C3           decb
0727: 29 07        jrnzm    $0721
0729: 37           rtn
072A: 2C 03        jrp      $072E
072C: 4D           nopw
072D: 4D           nopw
072E: 10 F8 3C     lidp     $F83C
0731: D4 FE        anid     $FE
0733: 11 3D        lidl     $3D
0735: D4 FD        anid     $FD
0737: 67 10        cpia     $10
0739: 7F 49 F3     jpc      $49F3
073C: DA           exab
073D: 02 1D        lia      $1D
073F: 34           push
0740: 02 00        lia      $00
0742: 34           push
0743: F1 6A        cal      $116A
0745: D6 02        tsid     $02
0747: 28 EC        jrnzp    $0834
0749: D6 20        tsid     $20
074B: 38 05        jrzp     $0751
074D: D6 01        tsid     $01
074F: 38 0A        jrzp     $075A
0751: 78 68 8E     call     $688E
0754: 02 B0        lia      $B0
0756: 10 C6 EA     lidp     $C6EA
0759: 52           std
075A: DA           exab
075B: F1 6A        cal      $116A
075D: 67 6B        cpia     $6B
075F: 2A 4C        jrncp    $07AC
0761: 67 32        cpia     $32
0763: 3A 07        jrcp     $076B
0765: 67 40        cpia     $40
0767: 3A 33        jrcp     $079B
0769: F1 6A        cal      $116A
076B: D6 20        tsid     $20
076D: 38 1A        jrzp     $0788
076F: D6 01        tsid     $01
0771: 28 16        jrnzp    $0788
0773: 34           push
0774: 10 C6 EA     lidp     $C6EA
0777: 57           ldd
0778: 67 FF        cpia     $FF
077A: 2A 04        jrncp    $077F
077C: 42           inca
077D: 52           std
077E: 43           deca
077F: 03 C7        lib      $C7
0781: F1 F5        cal      $11F5
0783: 5B           pop
0784: 26           iys
0785: 79 4D F6     jp       $4DF6
0788: 34           push
0789: F1 F9        cal      $11F9
078B: 5B           pop
078C: 26           iys
078D: 06           iy
078E: F1 6A        cal      $116A
0790: D4 C0        anid     $C0
0792: D5 20        orid     $20
0794: 10 C6 EA     lidp     $C6EA
0797: 86           lp       $06
0798: 53           mvdm
0799: 2D 15        jrm      $0785
079B: D6 01        tsid     $01
079D: 39 33        jrzm     $076B
079F: 78 5C 78     call     $5C78
07A2: F1 6E        cal      $116E
07A4: 2B 3A        jrncm    $076B
07A6: 34           push
07A7: 78 62 DD     call     $62DD
07AA: 2D 20        jrm      $078B
07AC: 67 E1        cpia     $E1
07AE: 7D 49 00     jpnc     $4900
07B1: 75 70        sbia     $70
07B3: 67 61        cpia     $61
07B5: 38 7F        jrzp     $0835
07B7: 67 64        cpia     $64
07B9: 38 7F        jrzp     $0839
07BB: 10 F8 3F     lidp     $F83F
07BE: 52           std
07BF: F1 E5        cal      $11E5
07C1: 02 D0        lia      $D0
07C3: A4           lp       $24
07C4: DB           exam
07C5: 02 3F        lia      $3F
07C7: 03 F8        lib      $F8
07C9: A5           lp       $25
07CA: 13 02        liq      $02
07CC: 0A           mvb
07CD: 02 01        lia      $01
07CF: A7           lp       $27
07D0: DB           exam
07D1: 78 5A 21     call     $5A21
07D4: 3A BB        jrcp     $0890
07D6: 78 5A 31     call     $5A31
07D9: 78 63 01     call     $6301
07DC: 78 63 1F     call     $631F
07DF: 04           ix
07E0: 04           ix
07E1: 04           ix
07E2: 24           ixl
07E3: 67 1D        cpia     $1D
07E5: 28 02        jrnzp    $07E8
07E7: 24           ixl
07E8: 67 DC        cpia     $DC
07EA: 7C 48 F9     jpnz     $48F9
07ED: 34           push
07EE: 78 4E 5E     call     $4E5E
07F1: 5B           pop
07F2: 93           lp       $13
07F3: 60 9F        anim     $9F
07F5: 78 59 EA     call     $59EA
07F8: 3A 35        jrcp     $082E
07FA: 10 C6 EE     lidp     $C6EE
07FD: 86           lp       $06
07FE: 1B           exbd
07FF: 11 EE        lidl     $EE
0801: 86           lp       $06
0802: 1A           mvbd
0803: 93           lp       $13
0804: 62 04        tsim     $04
0806: 38 0A        jrzp     $0811
0808: 62 12        tsim     $12
080A: 38 03        jrzp     $080E
080C: 02 00        lia      $00
080E: 11 F0        lidl     $F0
0810: 52           std
0811: 11 DA        lidl     $DA
0813: D6 01        tsid     $01
0815: 28 92        jrnzp    $08A8
0817: D6 20        tsid     $20
0819: 38 9F        jrzp     $08B9
081B: 11 F1        lidl     $F1
081D: 02 B0        lia      $B0
081F: 52           std
0820: 93           lp       $13
0821: 62 04        tsim     $04
0823: 38 04        jrzp     $0828
0825: 95           lp       $15
0826: 61 04        orim     $04
0828: 78 4B EF     call     $4BEF
082B: 3A 75        jrcp     $08A1
082D: D1           rc
082E: 78 63 17     call     $6317
0831: 78 65 9A     call     $659A
0834: 37           rtn
0835: 02 11        lia      $11
0837: 2D 7D        jrm      $07BB
0839: 02 34        lia      $34
083B: 2D 81        jrm      $07BB
083D: F2 00        cal      $1200
083F: 10 C7 06     lidp     $C706
0842: 9C           lp       $1C
0843: 00 03        lii      $03
0845: 19           exwd
0846: 11 06        lidl     $06
0848: 9C           lp       $1C
0849: 18           mvwd
084A: 10 C6 FE     lidp     $C6FE
084D: 9C           lp       $1C
084E: 19           exwd
084F: 95           lp       $15
0850: 60 EF        anim     $EF
0852: F1 F9        cal      $11F9
0854: 02 11        lia      $11
0856: 26           iys
0857: 02 96        lia      $96
0859: 26           iys
085A: 94           lp       $14
085B: 60 7F        anim     $7F
085D: 61 40        orim     $40
085F: 59           ldm
0860: 26           iys
0861: 02 11        lia      $11
0863: 26           iys
0864: 02 59        lia      $59
0866: 26           iys
0867: 02 5E        lia      $5E
0869: 26           iys
086A: 02 11        lia      $11
086C: 26           iys
086D: 25           dxl
086E: 67 E0        cpia     $E0
0870: 3B 04        jrcm     $086D
0872: 05           dx
0873: 78 63 4A     call     $634A
0876: 02 00        lia      $00
0878: 26           iys
0879: 10 C6 D9     lidp     $C6D9
087C: D5 02        orid     $02
087E: 11 DA        lidl     $DA
0880: D4 C0        anid     $C0
0882: D5 02        orid     $02
0884: F1 AF        cal      $11AF
0886: 10 F8 3D     lidp     $F83D
0889: D5 08        orid     $08
088B: 02 01        lia      $01
088D: FF B1        cal      $1FB1
088F: 37           rtn
0890: 95           lp       $15
0891: 60 C0        anim     $C0
0893: F1 6A        cal      $116A
0895: D5 20        orid     $20
0897: 11 EA        lidl     $EA
0899: 84           lp       $04
089A: 55           mvmd
089B: 2C 08        jrp      $08A4
089D: F7 27        cal      $1727
089F: 2D 72        jrm      $082E
08A1: 95           lp       $15
08A2: 60 C0        anim     $C0
08A4: 78 6A 29     call     $6A29
08A7: 37           rtn
08A8: 78 5C 78     call     $5C78
08AB: F1 6E        cal      $116E
08AD: 93           lp       $13
08AE: 2A 17        jrncp    $08C6
08B0: 62 04        tsim     $04
08B2: 29 16        jrnzm    $089D
08B4: 06           iy
08B5: A0           lp       $20
08B6: 19           exwd
08B7: 2D 8B        jrm      $082D
08B9: F2 BD        cal      $12BD
08BB: 93           lp       $13
08BC: 62 04        tsim     $04
08BE: 39 14        jrzm     $08AB
08C0: A4           lp       $24
08C1: 02 D0        lia      $D0
08C3: DB           exam
08C4: 2D 1A        jrm      $08AB
08C6: 62 04        tsim     $04
08C8: 39 2C        jrzm     $089D
08CA: 78 67 87     call     $6787
08CD: 84           lp       $04
08CE: 13 25        liq      $25
08D0: 0A           mvb
08D1: 05           dx
08D2: A7           lp       $27
08D3: 59           ldm
08D4: 88           lp       $08
08D5: DB           exam
08D6: 10 C6 F0     lidp     $C6F0
08D9: 57           ldd
08DA: 67 00        cpia     $00
08DC: 28 06        jrnzp    $08E3
08DE: 02 F5        lia      $F5
08E0: 26           iys
08E1: 02 07        lia      $07
08E3: DA           exab
08E4: 88           lp       $08
08E5: 63 00        cpim     $00
08E7: 38 09        jrzp     $08F1
08E9: 24           ixl
08EA: 26           iys
08EB: C3           decb
08EC: 38 07        jrzp     $08F4
08EE: 49           deck
08EF: 29 07        jrnzm    $08E9
08F1: 02 00        lia      $00
08F3: 26           iys
08F4: 78 67 8C     call     $678C
08F7: 2D CB        jrm      $082D
08F9: 78 63 1C     call     $631C
08FC: 78 64 37     call     $6437
08FF: 37           rtn
0900: 8A           lp       $0A
0901: DB           exam
0902: 59           ldm
0903: 34           push
0904: F1 F9        cal      $11F9
0906: 5B           pop
0907: 75 90        sbia     $90
0909: 67 61        cpia     $61
090B: 38 09        jrzp     $0915
090D: 67 64        cpia     $64
090F: 28 07        jrnzp    $0917
0911: 02 34        lia      $34
0913: 2C 03        jrp      $0917
0915: 02 11        lia      $11
0917: F1 5E        cal      $115E
0919: D6 04        tsid     $04
091B: 38 3E        jrzp     $095A
091D: F1 6A        cal      $116A
091F: D5 08        orid     $08
0921: D4 DF        anid     $DF
0923: 26           iys
0924: 02 1D        lia      $1D
0926: 26           iys
0927: 06           iy
0928: 00 4D        lii      $4D
092A: 02 00        lia      $00
092C: 1F           fild
092D: 07           dy
092E: 78 63 69     call     $6369
0931: 3A 19        jrcp     $094B
0933: 24           ixl
0934: 67 00        cpia     $00
0936: 38 08        jrzp     $093F
0938: 67 E0        cpia     $E0
093A: 2A 04        jrncp    $093F
093C: 26           iys
093D: 3B 0B        jrcm     $0933
093F: 02 00        lia      $00
0941: 26           iys
0942: F1 6A        cal      $116A
0944: D4 C0        anid     $C0
0946: D5 08        orid     $08
0948: F1 AF        cal      $11AF
094A: 37           rtn
094B: 02 00        lia      $00
094D: 26           iys
094E: 10 C6 EA     lidp     $C6EA
0951: 86           lp       $06
0952: 53           mvdm
0953: 11 DA        lidl     $DA
0955: D5 20        orid     $20
0957: 79 4D F6     jp       $4DF6
095A: 34           push
095B: 78 63 69     call     $6369
095E: 5B           pop
095F: 7F 47 5B     jpc      $475B
0962: F1 6A        cal      $116A
0964: D6 01        tsid     $01
0966: 28 41        jrnzp    $09A8
0968: D6 20        tsid     $20
096A: 38 3D        jrzp     $09A8
096C: 93           lp       $13
096D: 61 80        orim     $80
096F: 24           ixl
0970: 67 00        cpia     $00
0972: 39 1C        jrzm     $0957
0974: 67 E0        cpia     $E0
0976: 2B 20        jrncm    $0957
0978: 67 1E        cpia     $1E
097A: 7E 4E 65     jpz      $4E65
097D: 05           dx
097E: F1 95        cal      $1195
0980: 10 C6 EA     lidp     $C6EA
0983: 57           ldd
0984: 03 FF        lib      $FF
0986: 93           lp       $13
0987: 62 80        tsim     $80
0989: 28 14        jrnzp    $099E
098B: 83           lp       $03
098C: 78 4D FF     call     $4DFF
098F: F1 95        cal      $1195
0991: 24           ixl
0992: 10 C6 EA     lidp     $C6EA
0995: 86           lp       $06
0996: 63 00        cpim     $00
0998: 38 02        jrzp     $099B
099A: 53           mvdm
099B: 27           dys
099C: 2D 2E        jrm      $096F
099E: 03 C7        lib      $C7
09A0: F1 EE        cal      $11EE
09A2: 06           iy
09A3: 93           lp       $13
09A4: 60 7F        anim     $7F
09A6: 2D 18        jrm      $098F
09A8: F1 6A        cal      $116A
09AA: D4 ED        anid     $ED
09AC: D5 20        orid     $20
09AE: DA           exab
09AF: 78 68 8E     call     $688E
09B2: 24           ixl
09B3: 05           dx
09B4: 67 1E        cpia     $1E
09B6: 7E 4E 65     jpz      $4E65
09B9: 67 32        cpia     $32
09BB: 3A 2A        jrcp     $09E6
09BD: 67 3A        cpia     $3A
09BF: 3A 09        jrcp     $09C9
09C1: 67 82        cpia     $82
09C3: 3A 22        jrcp     $09E6
09C5: 67 85        cpia     $85
09C7: 2A 1E        jrncp    $09E6
09C9: F1 6A        cal      $116A
09CB: D6 01        tsid     $01
09CD: 38 18        jrzp     $09E6
09CF: 11 C6        lidl     $C6
09D1: A0           lp       $20
09D2: 00 07        lii      $07
09D4: 18           mvwd
09D5: F1 6E        cal      $116E
09D7: 2A 0E        jrncp    $09E6
09D9: F1 C7        cal      $11C7
09DB: F1 E5        cal      $11E5
09DD: 78 62 DD     call     $62DD
09E0: F1 E0        cal      $11E0
09E2: F1 D2        cal      $11D2
09E4: 2C 03        jrp      $09E8
09E6: F1 F9        cal      $11F9
09E8: 06           iy
09E9: 06           iy
09EA: 93           lp       $13
09EB: 60 7F        anim     $7F
09ED: F1 6A        cal      $116A
09EF: D4 FE        anid     $FE
09F1: 2D 61        jrm      $0991
09F3: 67 00        cpia     $00
09F5: 38 3A        jrzp     $0A30
09F7: 67 04        cpia     $04
09F9: 3A 13        jrcp     $0A0D
09FB: 38 31        jrzp     $0A2D
09FD: 67 08        cpia     $08
09FF: 3A 30        jrcp     $0A30
0A01: 38 0B        jrzp     $0A0D
0A03: 67 0C        cpia     $0C
0A05: 3A 2A        jrcp     $0A30
0A07: 38 05        jrzp     $0A0D
0A09: 67 0E        cpia     $0E
0A0B: 3A 24        jrcp     $0A30
0A0D: 67 09        cpia     $09
0A0F: 2A 04        jrncp    $0A14
0A11: 78 4A 4E     call     $4A4E
0A14: 7A 06 4A 2D  dtj      $06, $4A2D
0A18: 69           ptj
0A19: 01 4A 54     .case    $01, $4A54
0A1C: 02 4A 65     .case    $02, $4A65
0A1F: 03 46 E4     .case    $03, $46E4
0A22: 08 4A A9     .case    $08, $4AA9
0A25: 0C 4A B3     .case    $0C, $4AB3
0A28: 0E 4C BF     .case    $0E, $4CBF
0A2B: 4D B1        .default $4DB1
0A2D: 79 1D 00     jp       $1D00
0A30: F1 6A        cal      $116A
0A32: D6 02        tsid     $02
0A34: 29 08        jrnzm    $0A2D
0A36: 7A 05 4A 4C  dtj      $05, $4A4C
0A3A: 69           ptj
0A3B: 00 4E 65     .case    $00, $4E65
0A3E: 05 4D CB     .case    $05, $4DCB
0A41: 06 4E 1D     .case    $06, $4E1D
0A44: 07 4E 35     .case    $07, $4E35
0A47: 0B 4D B6     .case    $0B, $4DB6
0A4A: 4B 98        .default $4B98
0A4C: 2D 20        jrm      $0A2D
0A4E: 10 F8 3D     lidp     $F83D
0A51: D4 F7        anid     $F7
0A53: 37           rtn
0A54: 02 50        lia      $50
0A56: 03 08        lib      $08
0A58: B0           lp       $30
0A59: DB           exam
0A5A: 59           ldm
0A5B: 42           inca
0A5C: 50           incp
0A5D: C3           decb
0A5E: 29 06        jrnzm    $0A59
0A60: 02 08        lia      $08
0A62: FF B1        cal      $1FB1
0A64: 37           rtn
0A65: 78 7F AF     call     $7FAF
0A68: 95           lp       $15
0A69: 62 10        tsim     $10
0A6B: 38 3A        jrzp     $0AA6
0A6D: 62 01        tsim     $01
0A6F: 28 36        jrnzp    $0AA6
0A71: 62 06        tsim     $06
0A73: 38 32        jrzp     $0AA6
0A75: 10 C6 F1     lidp     $C6F1
0A78: 57           ldd
0A79: 67 B0        cpia     $B0
0A7B: 03 C7        lib      $C7
0A7D: F1 F5        cal      $11F5
0A7F: 38 19        jrzp     $0A99
0A81: 02 00        lia      $00
0A83: 26           iys
0A84: 10 C6 EA     lidp     $C6EA
0A87: 86           lp       $06
0A88: 53           mvdm
0A89: 63 FF        cpim     $FF
0A8B: 38 04        jrzp     $0A90
0A8D: 26           iys
0A8E: 2D 06        jrm      $0A89
0A90: F1 6A        cal      $116A
0A92: D4 C0        anid     $C0
0A94: D5 20        orid     $20
0A96: F1 A1        cal      $11A1
0A98: 37           rtn
0A99: 02 13        lia      $13
0A9B: 26           iys
0A9C: 02 00        lia      $00
0A9E: 26           iys
0A9F: F1 6A        cal      $116A
0AA1: D4 C0        anid     $C0
0AA3: F1 AF        cal      $11AF
0AA5: 37           rtn
0AA6: F8 C5        cal      $18C5
0AA8: 37           rtn
0AA9: 95           lp       $15
0AAA: 62 10        tsim     $10
0AAC: 38 03        jrzp     $0AB0
0AAE: 61 01        orim     $01
0AB0: F8 C5        cal      $18C5
0AB2: 37           rtn
0AB3: 10 C6 D9     lidp     $C6D9
0AB6: D5 10        orid     $10
0AB8: F1 5E        cal      $115E
0ABA: D6 02        tsid     $02
0ABC: 38 26        jrzp     $0AE3
0ABE: 95           lp       $15
0ABF: 62 10        tsim     $10
0AC1: 38 19        jrzp     $0ADB
0AC3: 78 4A 4E     call     $4A4E
0AC6: F1 62        cal      $1162
0AC8: D6 02        tsid     $02
0ACA: 28 0F        jrnzp    $0ADA
0ACC: 10 C6 D9     lidp     $C6D9
0ACF: D6 20        tsid     $20
0AD1: 28 08        jrnzp    $0ADA
0AD3: F1 62        cal      $1162
0AD5: D5 08        orid     $08
0AD7: 78 63 7D     call     $637D
0ADA: 37           rtn
0ADB: 10 C6 D9     lidp     $C6D9
0ADE: D6 02        tsid     $02
0AE0: 29 1E        jrnzm    $0AC3
0AE2: 37           rtn
0AE3: D6 04        tsid     $04
0AE5: 29 04        jrnzm    $0AE2
0AE7: 10 C6 D9     lidp     $C6D9
0AEA: D6 20        tsid     $20
0AEC: 29 0B        jrnzm    $0AE2
0AEE: 95           lp       $15
0AEF: 62 10        tsim     $10
0AF1: 38 35        jrzp     $0B27
0AF3: F1 6A        cal      $116A
0AF5: D6 04        tsid     $04
0AF7: 39 21        jrzm     $0AD7
0AF9: F1 62        cal      $1162
0AFB: D6 02        tsid     $02
0AFD: 28 14        jrnzp    $0B12
0AFF: 10 C6 D9     lidp     $C6D9
0B02: D6 10        tsid     $10
0B04: 38 08        jrzp     $0B0D
0B06: 78 64 0D     call     $640D
0B09: 78 63 CA     call     $63CA
0B0C: 37           rtn
0B0D: 78 63 DA     call     $63DA
0B10: 2D 08        jrm      $0B09
0B12: 10 F8 B8     lidp     $F8B8
0B15: 82           lp       $02
0B16: 1A           mvbd
0B17: 67 00        cpia     $00
0B19: 28 0C        jrnzp    $0B26
0B1B: DA           exab
0B1C: 67 00        cpia     $00
0B1E: 28 07        jrnzp    $0B26
0B20: 78 4A FF     call     $4AFF
0B23: 78 63 D4     call     $63D4
0B26: 37           rtn
0B27: F1 89        cal      $1189
0B29: 24           ixl
0B2A: 67 FF        cpia     $FF
0B2C: 39 07        jrzm     $0B26
0B2E: F1 6A        cal      $116A
0B30: D6 04        tsid     $04
0B32: 29 3A        jrnzm    $0AF9
0B34: 11 D9        lidl     $D9
0B36: D6 02        tsid     $02
0B38: 38 0B        jrzp     $0B44
0B3A: F1 62        cal      $1162
0B3C: D6 02        tsid     $02
0B3E: 29 2D        jrnzm    $0B12
0B40: 78 63 7D     call     $637D
0B43: 37           rtn
0B44: F1 62        cal      $1162
0B46: D6 02        tsid     $02
0B48: 29 37        jrnzm    $0B12
0B4A: 10 C6 D9     lidp     $C6D9
0B4D: D6 10        tsid     $10
0B4F: 38 33        jrzp     $0B83
0B51: 11 E3        lidl     $E3
0B53: 84           lp       $04
0B54: 1A           mvbd
0B55: 25           dxl
0B56: 67 FF        cpia     $FF
0B58: 28 0D        jrnzp    $0B66
0B5A: 10 20 07     lidp     $2007
0B5D: D6 FF        tsid     $FF
0B5F: 29 3A        jrnzm    $0B26
0B61: 10 20 08     lidp     $2008
0B64: 84           lp       $04
0B65: 1A           mvbd
0B66: 25           dxl
0B67: 67 E0        cpia     $E0
0B69: 3B 04        jrcm     $0B66
0B6B: 10 C6 D9     lidp     $C6D9
0B6E: D5 08        orid     $08
0B70: 11 DA        lidl     $DA
0B72: D4 C0        anid     $C0
0B74: D5 04        orid     $04
0B76: 98           lp       $18
0B77: 13 04        liq      $04
0B79: 0A           mvb
0B7A: 78 61 F8     call     $61F8
0B7D: F1 62        cal      $1162
0B7F: D5 02        orid     $02
0B81: 2D 79        jrm      $0B09
0B83: 85           lp       $05
0B84: 63 80        cpim     $80
0B86: 2B 1C        jrncm    $0B6B
0B88: 10 20 07     lidp     $2007
0B8B: D6 FF        tsid     $FF
0B8D: 39 23        jrzm     $0B6B
0B8F: F1 8F        cal      $118F
0B91: 24           ixl
0B92: 67 FF        cpia     $FF
0B94: 39 6F        jrzm     $0B26
0B96: 2D 2C        jrm      $0B6B
0B98: 10 C6 D9     lidp     $C6D9
0B9B: D4 EF        anid     $EF
0B9D: F1 5E        cal      $115E
0B9F: D6 02        tsid     $02
0BA1: 39 BF        jrzm     $0AE3
0BA3: 95           lp       $15
0BA4: 62 10        tsim     $10
0BA6: 7E 4C AA     jpz      $4CAA
0BA9: 60 FE        anim     $FE
0BAB: 78 4E 5E     call     $4E5E
0BAE: 96           lp       $16
0BAF: 60 FD        anim     $FD
0BB1: 61 01        orim     $01
0BB3: F1 BD        cal      $11BD
0BB5: 95           lp       $15
0BB6: 62 0E        tsim     $0E
0BB8: F1 62        cal      $1162
0BBA: 38 C8        jrzp     $0C83
0BBC: D6 02        tsid     $02
0BBE: 28 FB        jrnzp    $0CBA
0BC0: D5 02        orid     $02
0BC2: 78 63 CA     call     $63CA
0BC5: 95           lp       $15
0BC6: 62 08        tsim     $08
0BC8: 28 B6        jrnzp    $0C7F
0BCA: F1 6A        cal      $116A
0BCC: D6 20        tsid     $20
0BCE: 28 15        jrnzp    $0BE4
0BD0: 95           lp       $15
0BD1: 78 5A 71     call     $5A71
0BD4: F1 E5        cal      $11E5
0BD6: 95           lp       $15
0BD7: 60 F1        anim     $F1
0BD9: 96           lp       $16
0BDA: 60 FD        anim     $FD
0BDC: F1 6A        cal      $116A
0BDE: D4 C0        anid     $C0
0BE0: 78 65 AF     call     $65AF
0BE3: 37           rtn
0BE4: 78 4B EF     call     $4BEF
0BE7: 3A 78        jrcp     $0C60
0BE9: F1 6A        cal      $116A
0BEB: D4 C0        anid     $C0
0BED: 2C 48        jrp      $0C36
0BEF: F2 00        cal      $1200
0BF1: 78 67 87     call     $6787
0BF4: 10 C6 F1     lidp     $C6F1
0BF7: 57           ldd
0BF8: 03 C7        lib      $C7
0BFA: F1 F1        cal      $11F1
0BFC: 24           ixl
0BFD: 05           dx
0BFE: 67 00        cpia     $00
0C00: 28 07        jrnzp    $0C08
0C02: F8 99        cal      $1899
0C04: 78 5A 71     call     $5A71
0C07: 37           rtn
0C08: 10 C6 EE     lidp     $C6EE
0C0B: 86           lp       $06
0C0C: 1A           mvbd
0C0D: 11 F0        lidl     $F0
0C0F: 95           lp       $15
0C10: 62 04        tsim     $04
0C12: 38 3B        jrzp     $0C4E
0C14: 60 F1        anim     $F1
0C16: 88           lp       $08
0C17: 55           mvmd
0C18: 63 00        cpim     $00
0C1A: 28 07        jrnzp    $0C22
0C1C: 02 F5        lia      $F5
0C1E: 26           iys
0C1F: 02 07        lia      $07
0C21: DB           exam
0C22: 24           ixl
0C23: 67 10        cpia     $10
0C25: 39 04        jrzm     $0C22
0C27: 67 12        cpia     $12
0C29: 38 1F        jrzp     $0C49
0C2B: 67 00        cpia     $00
0C2D: 38 1B        jrzp     $0C49
0C2F: 26           iys
0C30: 49           deck
0C31: 29 10        jrnzm    $0C22
0C33: F8 99        cal      $1899
0C35: 37           rtn
0C36: 24           ixl
0C37: 67 1B        cpia     $1B
0C39: 05           dx
0C3A: 29 67        jrnzm    $0BD4
0C3C: 04           ix
0C3D: F1 E5        cal      $11E5
0C3F: 96           lp       $16
0C40: 60 FD        anim     $FD
0C42: 78 53 7E     call     $537E
0C45: 78 65 9A     call     $659A
0C48: 37           rtn
0C49: 02 00        lia      $00
0C4B: 26           iys
0C4C: 2D 1A        jrm      $0C33
0C4E: F1 77        cal      $1177
0C50: 78 60 B8     call     $60B8
0C53: 10 C6 F1     lidp     $C6F1
0C56: 57           ldd
0C57: 03 C7        lib      $C7
0C59: F1 F1        cal      $11F1
0C5B: F2 05        cal      $1205
0C5D: 2A 06        jrncp    $0C64
0C5F: 37           rtn
0C60: 78 6A 29     call     $6A29
0C63: 37           rtn
0C64: 24           ixl
0C65: 67 00        cpia     $00
0C67: 38 04        jrzp     $0C6C
0C69: F7 27        cal      $1727
0C6B: 37           rtn
0C6C: F1 6E        cal      $116E
0C6E: 2B 06        jrncm    $0C69
0C70: 10 C6 EE     lidp     $C6EE
0C73: 86           lp       $06
0C74: 1A           mvbd
0C75: 06           iy
0C76: 00 07        lii      $07
0C78: A0           lp       $20
0C79: 19           exwd
0C7A: 78 67 8C     call     $678C
0C7D: D1           rc
0C7E: 37           rtn
0C7F: 60 F1        anim     $F1
0C81: 2D AE        jrm      $0BD4
0C83: F1 6A        cal      $116A
0C85: D4 C0        anid     $C0
0C87: F1 62        cal      $1162
0C89: D6 02        tsid     $02
0C8B: 38 1F        jrzp     $0CAB
0C8D: 11 B8        lidl     $B8
0C8F: 82           lp       $02
0C90: 1A           mvbd
0C91: 67 00        cpia     $00
0C93: 28 16        jrnzp    $0CAA
0C95: DA           exab
0C96: 67 00        cpia     $00
0C98: 28 11        jrnzp    $0CAA
0C9A: F1 E5        cal      $11E5
0C9C: 78 65 E7     call     $65E7
0C9F: 3A 1A        jrcp     $0CBA
0CA1: 02 FF        lia      $FF
0CA3: 03 FF        lib      $FF
0CA5: 10 F8 B8     lidp     $F8B8
0CA8: 82           lp       $02
0CA9: 1B           exbd
0CAA: 37           rtn
0CAB: D5 02        orid     $02
0CAD: F1 E5        cal      $11E5
0CAF: 78 65 E7     call     $65E7
0CB2: 3B 09        jrcm     $0CAA
0CB4: 02 CE        lia      $CE
0CB6: 03 FF        lib      $FF
0CB8: 2D 14        jrm      $0CA5
0CBA: F1 62        cal      $1162
0CBC: D4 FD        anid     $FD
0CBE: 37           rtn
0CBF: 93           lp       $13
0CC0: 60 00        anim     $00
0CC2: 61 01        orim     $01
0CC4: 10 C6 D9     lidp     $C6D9
0CC7: D4 F7        anid     $F7
0CC9: 11 DA        lidl     $DA
0CCB: D6 02        tsid     $02
0CCD: 38 20        jrzp     $0CEE
0CCF: D6 20        tsid     $20
0CD1: 38 1B        jrzp     $0CED
0CD3: D4 FD        anid     $FD
0CD5: 78 4A 4E     call     $4A4E
0CD8: F8 99        cal      $1899
0CDA: 10 C6 EA     lidp     $C6EA
0CDD: 84           lp       $04
0CDE: 53           mvdm
0CDF: 78 63 CA     call     $63CA
0CE2: F1 62        cal      $1162
0CE4: D5 02        orid     $02
0CE6: 93           lp       $13
0CE7: 62 04        tsim     $04
0CE9: 28 AB        jrnzp    $0D95
0CEB: F1 A1        cal      $11A1
0CED: 37           rtn
0CEE: D6 08        tsid     $08
0CF0: 38 8E        jrzp     $0D7F
0CF2: 02 B2        lia      $B2
0CF4: 10 C6 F1     lidp     $C6F1
0CF7: 52           std
0CF8: 93           lp       $13
0CF9: 61 02        orim     $02
0CFB: 11 DA        lidl     $DA
0CFD: D6 20        tsid     $20
0CFF: 38 47        jrzp     $0D47
0D01: D6 01        tsid     $01
0D03: 28 64        jrnzp    $0D68
0D05: F1 62        cal      $1162
0D07: D6 02        tsid     $02
0D09: 38 59        jrzp     $0D63
0D0B: 11 B8        lidl     $B8
0D0D: 82           lp       $02
0D0E: 1A           mvbd
0D0F: 67 00        cpia     $00
0D11: 29 25        jrnzm    $0CED
0D13: DA           exab
0D14: 67 00        cpia     $00
0D16: 29 2A        jrnzm    $0CED
0D18: 78 63 D4     call     $63D4
0D1B: 93           lp       $13
0D1C: 62 01        tsim     $01
0D1E: 10 C6 EA     lidp     $C6EA
0D21: 57           ldd
0D22: 38 17        jrzp     $0D3A
0D24: 03 C7        lib      $C7
0D26: F1 F1        cal      $11F1
0D28: 24           ixl
0D29: 84           lp       $04
0D2A: 63 FF        cpim     $FF
0D2C: 2B 40        jrncm    $0CED
0D2E: 67 00        cpia     $00
0D30: 38 7B        jrzp     $0DAC
0D32: 04           ix
0D33: 10 C6 EA     lidp     $C6EA
0D36: 84           lp       $04
0D37: 53           mvdm
0D38: 2D 57        jrm      $0CE2
0D3A: 93           lp       $13
0D3B: 62 02        tsim     $02
0D3D: 28 16        jrnzp    $0D54
0D3F: 67 B0        cpia     $B0
0D41: 38 6A        jrzp     $0DAC
0D43: 43           deca
0D44: 52           std
0D45: 2D 64        jrm      $0CE2
0D47: D6 08        tsid     $08
0D49: 39 5D        jrzm     $0CED
0D4B: D5 20        orid     $20
0D4D: 02 B2        lia      $B2
0D4F: 11 EA        lidl     $EA
0D51: 52           std
0D52: 2D 74        jrm      $0CDF
0D54: 10 C6 F1     lidp     $C6F1
0D57: DA           exab
0D58: 57           ldd
0D59: 83           lp       $03
0D5A: C7           cpma
0D5B: 38 50        jrzp     $0DAC
0D5D: DA           exab
0D5E: 43           deca
0D5F: 11 EA        lidl     $EA
0D61: 2D 1E        jrm      $0D44
0D63: 78 63 CA     call     $63CA
0D66: 2D 4C        jrm      $0D1B
0D68: D6 01        tsid     $01
0D6A: 39 24        jrzm     $0D47
0D6C: D4 FE        anid     $FE
0D6E: 93           lp       $13
0D6F: 62 01        tsim     $01
0D71: 9C           lp       $1C
0D72: 59           ldm
0D73: 38 03        jrzp     $0D77
0D75: 02 B0        lia      $B0
0D77: 11 EA        lidl     $EA
0D79: 52           std
0D7A: 78 63 CA     call     $63CA
0D7D: 2D 9C        jrm      $0CE2
0D7F: 95           lp       $15
0D80: 62 06        tsim     $06
0D82: 38 05        jrzp     $0D88
0D84: 62 01        tsim     $01
0D86: 39 8F        jrzm     $0CF8
0D88: D6 04        tsid     $04
0D8A: 39 90        jrzm     $0CFB
0D8C: 93           lp       $13
0D8D: 61 04        orim     $04
0D8F: D6 20        tsid     $20
0D91: 38 07        jrzp     $0D99
0D93: 2D 8F        jrm      $0D05
0D95: 78 62 09     call     $6209
0D98: 37           rtn
0D99: D5 20        orid     $20
0D9B: 11 D9        lidl     $D9
0D9D: D4 F7        anid     $F7
0D9F: F1 9A        cal      $119A
0DA1: 24           ixl
0DA2: 67 40        cpia     $40
0DA4: 3B CB        jrcm     $0CDA
0DA6: 67 4A        cpia     $4A
0DA8: 3B 08        jrcm     $0DA1
0DAA: 2D D1        jrm      $0CDA
0DAC: F1 62        cal      $1162
0DAE: D4 FD        anid     $FD
0DB0: 37           rtn
0DB1: 93           lp       $13
0DB2: 60 00        anim     $00
0DB4: 2D F1        jrm      $0CC4
0DB6: 10 F8 3C     lidp     $F83C
0DB9: D6 02        tsid     $02
0DBB: 38 04        jrzp     $0DC0
0DBD: D4 FD        anid     $FD
0DBF: 37           rtn
0DC0: 78 6B 6F     call     $6B6F
0DC3: 38 06        jrzp     $0DCA
0DC5: 10 F8 3C     lidp     $F83C
0DC8: D5 02        orid     $02
0DCA: 37           rtn
0DCB: 93           lp       $13
0DCC: 60 00        anim     $00
0DCE: 61 01        orim     $01
0DD0: F1 6A        cal      $116A
0DD2: D6 20        tsid     $20
0DD4: 38 47        jrzp     $0E1C
0DD6: D6 01        tsid     $01
0DD8: 28 43        jrnzp    $0E1C
0DDA: 11 EA        lidl     $EA
0DDC: 57           ldd
0DDD: 03 C7        lib      $C7
0DDF: F1 F1        cal      $11F1
0DE1: 24           ixl
0DE2: 67 00        cpia     $00
0DE4: 38 37        jrzp     $0E1C
0DE6: 84           lp       $04
0DE7: 59           ldm
0DE8: 03 FF        lib      $FF
0DEA: 93           lp       $13
0DEB: 62 01        tsim     $01
0DED: 83           lp       $03
0DEE: 38 33        jrzp     $0E22
0DF0: 78 4D FF     call     $4DFF
0DF3: 02 10        lia      $10
0DF5: 27           dys
0DF6: F1 6A        cal      $116A
0DF8: D6 04        tsid     $04
0DFA: 28 19        jrnzp    $0E14
0DFC: F1 A1        cal      $11A1
0DFE: 37           rtn
0DFF: 45           sbm
0E00: 59           ldm
0E01: 88           lp       $08
0E02: DB           exam
0E03: 02 FF        lia      $FF
0E05: 03 C7        lib      $C7
0E07: F1 EE        cal      $11EE
0E09: F1 72        cal      $1172
0E0B: 06           iy
0E0C: 38 06        jrzp     $0E13
0E0E: 25           dxl
0E0F: 27           dys
0E10: 49           deck
0E11: 29 04        jrnzm    $0E0E
0E13: 37           rtn
0E14: 10 C6 D9     lidp     $C6D9
0E17: D4 F7        anid     $F7
0E19: 78 62 09     call     $6209
0E1C: 37           rtn
0E1D: 93           lp       $13
0E1E: 60 00        anim     $00
0E20: 2D 51        jrm      $0DD0
0E22: 45           sbm
0E23: 59           ldm
0E24: 88           lp       $08
0E25: DB           exam
0E26: F1 77        cal      $1177
0E28: 07           dy
0E29: 38 06        jrzp     $0E30
0E2B: 24           ixl
0E2C: 26           iys
0E2D: 49           deck
0E2E: 29 04        jrnzm    $0E2B
0E30: 02 00        lia      $00
0E32: 26           iys
0E33: 2D 3E        jrm      $0DF6
0E35: 95           lp       $15
0E36: 62 10        tsim     $10
0E38: 38 24        jrzp     $0E5D
0E3A: 62 01        tsim     $01
0E3C: 28 20        jrnzp    $0E5D
0E3E: 61 01        orim     $01
0E40: F1 6A        cal      $116A
0E42: D4 DD        anid     $DD
0E44: D5 10        orid     $10
0E46: 10 40 21     lidp     $4021
0E49: A8           lp       $28
0E4A: 00 09        lii      $09
0E4C: 18           mvwd
0E4D: F1 F9        cal      $11F9
0E4F: 06           iy
0E50: A8           lp       $28
0E51: 19           exwd
0E52: 86           lp       $06
0E53: 70 09        adim     $09
0E55: 78 68 99     call     $6899
0E58: 02 00        lia      $00
0E5A: 26           iys
0E5B: F1 AF        cal      $11AF
0E5D: 37           rtn
0E5E: 10 C7 FF     lidp     $C7FF
0E61: 02 00        lia      $00
0E63: 52           std
0E64: 37           rtn
0E65: F1 E5        cal      $11E5
0E67: 78 4E 5E     call     $4E5E
0E6A: 95           lp       $15
0E6B: 62 10        tsim     $10
0E6D: 38 0E        jrzp     $0E7C
0E6F: 62 04        tsim     $04
0E71: 38 0A        jrzp     $0E7C
0E73: 62 01        tsim     $01
0E75: 28 06        jrnzp    $0E7C
0E77: F1 BD        cal      $11BD
0E79: 79 4B CA     jp       $4BCA
0E7C: F1 9A        cal      $119A
0E7E: F1 6A        cal      $116A
0E80: D6 20        tsid     $20
0E82: 38 1C        jrzp     $0E9F
0E84: D6 08        tsid     $08
0E86: 38 05        jrzp     $0E8C
0E88: 04           ix
0E89: 04           ix
0E8A: 2C 17        jrp      $0EA2
0E8C: 95           lp       $15
0E8D: 62 06        tsim     $06
0E8F: 38 12        jrzp     $0EA2
0E91: 59           ldm
0E92: 64 11        ania     $11
0E94: 67 10        cpia     $10
0E96: 28 0B        jrnzp    $0EA2
0E98: 11 F1        lidl     $F1
0E9A: 84           lp       $04
0E9B: 55           mvmd
0E9C: 05           dx
0E9D: 2C 04        jrp      $0EA2
0E9F: 78 68 8E     call     $688E
0EA2: F1 77        cal      $1177
0EA4: 78 60 B8     call     $60B8
0EA7: 02 00        lia      $00
0EA9: 86           lp       $06
0EAA: 63 FF        cpim     $FF
0EAC: 38 04        jrzp     $0EB1
0EAE: 26           iys
0EAF: 2D 06        jrm      $0EAA
0EB1: F1 9A        cal      $119A
0EB3: F1 5E        cal      $115E
0EB5: D6 01        tsid     $01
0EB7: 7E 50 76     jpz      $5076
0EBA: F1 6A        cal      $116A
0EBC: D6 20        tsid     $20
0EBE: 38 E3        jrzp     $0FA2
0EC0: D6 01        tsid     $01
0EC2: 28 DF        jrnzp    $0FA2
0EC4: 24           ixl
0EC5: 05           dx
0EC6: 67 40        cpia     $40
0EC8: 7F 50 28     jpc      $5028
0ECB: 67 4A        cpia     $4A
0ECD: 7D 50 28     jpnc     $5028
0ED0: 10 C6 D9     lidp     $C6D9
0ED3: D6 20        tsid     $20
0ED5: 28 CC        jrnzp    $0FA2
0ED7: 00 01        lii      $01
0ED9: A8           lp       $28
0EDA: 02 00        lia      $00
0EDC: 1E           film
0EDD: 24           ixl
0EDE: 67 40        cpia     $40
0EE0: 39 04        jrzm     $0EDD
0EE2: 03 03        lib      $03
0EE4: 05           dx
0EE5: 24           ixl
0EE6: 67 40        cpia     $40
0EE8: 3A 22        jrcp     $0F0B
0EEA: 67 4A        cpia     $4A
0EEC: 2A 1E        jrncp    $0F0B
0EEE: A9           lp       $29
0EEF: 1D           slw
0EF0: 64 0F        ania     $0F
0EF2: A9           lp       $29
0EF3: 47           orma
0EF4: C3           decb
0EF5: 2B 11        jrncm    $0EE5
0EF7: F7 13        cal      $1713
0EF9: 78 6A 29     call     $6A29
0EFC: 37           rtn
0EFD: 9A           lp       $1A
0EFE: 63 00        cpim     $00
0F00: 7C 50 10     jpnz     $5010
0F03: 98           lp       $18
0F04: 10 C6 E3     lidp     $C6E3
0F07: 1A           mvbd
0F08: 79 50 10     jp       $5010
0F0B: 05           dx
0F0C: F2 00        cal      $1200
0F0E: 78 46 E9     call     $46E9
0F11: F8 99        cal      $1899
0F13: 95           lp       $15
0F14: 60 EF        anim     $EF
0F16: A8           lp       $28
0F17: 61 E0        orim     $E0
0F19: 63 E0        cpim     $E0
0F1B: 28 06        jrnzp    $0F22
0F1D: A9           lp       $29
0F1E: 63 00        cpim     $00
0F20: 39 2A        jrzm     $0EF7
0F22: 89           lp       $09
0F23: 60 00        anim     $00
0F25: 24           ixl
0F26: C8           incl
0F27: 67 00        cpia     $00
0F29: 29 05        jrnzm    $0F25
0F2B: 89           lp       $09
0F2C: 59           ldm
0F2D: 8A           lp       $0A
0F2E: DB           exam
0F2F: 10 C6 E3     lidp     $C6E3
0F32: 84           lp       $04
0F33: 1A           mvbd
0F34: 25           dxl
0F35: 67 FF        cpia     $FF
0F37: 38 E9        jrzp     $1021
0F39: 78 5E BA     call     $5EBA
0F3C: 3B 40        jrcm     $0EFD
0F3E: 84           lp       $04
0F3F: 13 18        liq      $18
0F41: 0A           mvb
0F42: F1 77        cal      $1177
0F44: 04           ix
0F45: 88           lp       $08
0F46: 60 00        anim     $00
0F48: 24           ixl
0F49: 48           inck
0F4A: 67 00        cpia     $00
0F4C: 29 05        jrnzm    $0F48
0F4E: 8A           lp       $0A
0F4F: 63 01        cpim     $01
0F51: 28 04        jrnzp    $0F56
0F53: 48           inck
0F54: 48           inck
0F55: C9           decl
0F56: F1 77        cal      $1177
0F58: 88           lp       $08
0F59: 59           ldm
0F5A: 89           lp       $09
0F5B: 45           sbm
0F5C: 59           ldm
0F5D: 2A 48        jrncp    $0FA6
0F5F: 03 FF        lib      $FF
0F61: 86           lp       $06
0F62: 14           adb
0F63: 88           lp       $08
0F64: 13 04        liq      $04
0F66: 0A           mvb
0F67: 10 C6 E3     lidp     $C6E3
0F6A: 82           lp       $02
0F6B: 1A           mvbd
0F6C: 88           lp       $08
0F6D: 15           sbb
0F6E: 24           ixl
0F6F: 26           iys
0F70: 48           inck
0F71: 2B 04        jrncm    $0F6E
0F73: C8           incl
0F74: 2B 07        jrncm    $0F6E
0F76: 10 C6 E3     lidp     $C6E3
0F79: 86           lp       $06
0F7A: 1B           exbd
0F7B: 8A           lp       $0A
0F7C: 63 01        cpim     $01
0F7E: 38 23        jrzp     $0FA2
0F80: 86           lp       $06
0F81: 13 18        liq      $18
0F83: 0A           mvb
0F84: 06           iy
0F85: F8 99        cal      $1899
0F87: 8A           lp       $0A
0F88: 59           ldm
0F89: DA           exab
0F8A: 24           ixl
0F8B: 26           iys
0F8C: C3           decb
0F8D: 29 04        jrnzm    $0F8A
0F8F: 78 46 E9     call     $46E9
0F92: F1 6A        cal      $116A
0F94: D4 C0        anid     $C0
0F96: D5 04        orid     $04
0F98: 11 D9        lidl     $D9
0F9A: D5 08        orid     $08
0F9C: 78 62 09     call     $6209
0F9F: F1 E0        cal      $11E0
0FA1: 37           rtn
0FA2: F8 C5        cal      $18C5
0FA4: 2D 06        jrm      $0F9F
0FA6: 39 27        jrzm     $0F80
0FA8: 93           lp       $13
0FA9: 60 FE        anim     $FE
0FAB: 88           lp       $08
0FAC: 13 04        liq      $04
0FAE: 0A           mvb
0FAF: 10 C6 E3     lidp     $C6E3
0FB2: 84           lp       $04
0FB3: 1A           mvbd
0FB4: F1 77        cal      $1177
0FB6: 86           lp       $06
0FB7: 03 00        lib      $00
0FB9: 14           adb
0FBA: 8C           lp       $0C
0FBB: 13 06        liq      $06
0FBD: 0A           mvb
0FBE: 10 C6 FC     lidp     $C6FC
0FC1: 82           lp       $02
0FC2: 1A           mvbd
0FC3: 8C           lp       $0C
0FC4: 15           sbb
0FC5: 2A 29        jrncp    $0FEF
0FC7: 8C           lp       $0C
0FC8: 13 06        liq      $06
0FCA: 0A           mvb
0FCB: 10 C6 E3     lidp     $C6E3
0FCE: 8C           lp       $0C
0FCF: 1B           exbd
0FD0: 04           ix
0FD1: 06           iy
0FD2: 82           lp       $02
0FD3: 13 04        liq      $04
0FD5: 0A           mvb
0FD6: 88           lp       $08
0FD7: 15           sbb
0FD8: 25           dxl
0FD9: 27           dys
0FDA: 48           inck
0FDB: 2B 04        jrncm    $0FD8
0FDD: C8           incl
0FDE: 2B 07        jrncm    $0FD8
0FE0: 86           lp       $06
0FE1: 13 18        liq      $18
0FE3: 0A           mvb
0FE4: 93           lp       $13
0FE5: 62 01        tsim     $01
0FE7: 39 64        jrzm     $0F84
0FE9: 07           dy
0FEA: 06           iy
0FEB: A8           lp       $28
0FEC: 1B           exbd
0FED: 2D 6A        jrm      $0F84
0FEF: 8C           lp       $0C
0FF0: 13 06        liq      $06
0FF2: 0A           mvb
0FF3: 02 D0        lia      $D0
0FF5: 03 C5        lib      $C5
0FF7: 8C           lp       $0C
0FF8: 15           sbb
0FF9: 2A 0E        jrncp    $1008
0FFB: 10 C6 FC     lidp     $C6FC
0FFE: 82           lp       $02
0FFF: 00 01        lii      $01
1001: 19           exwd
1002: 11 D8        lidl     $D8
1004: D4 F7        anid     $F7
1006: 2D 40        jrm      $0FC7
1008: F7 1B        cal      $171B
100A: F1 9A        cal      $119A
100C: 04           ix
100D: 79 4E F9     jp       $4EF9
1010: 8A           lp       $0A
1011: 59           ldm
1012: 67 01        cpia     $01
1014: 39 73        jrzm     $0FA2
1016: 74 02        adia     $02
1018: 93           lp       $13
1019: 61 01        orim     $01
101B: 88           lp       $08
101C: 13 18        liq      $18
101E: 0A           mvb
101F: 2D 71        jrm      $0FAF
1021: 04           ix
1022: 98           lp       $18
1023: 13 04        liq      $04
1025: 0A           mvb
1026: 2D 17        jrm      $1010
1028: 96           lp       $16
1029: 60 EF        anim     $EF
102B: 61 02        orim     $02
102D: 95           lp       $15
102E: 60 DF        anim     $DF
1030: F1 6A        cal      $116A
1032: D4 E0        anid     $E0
1034: F1 62        cal      $1162
1036: D4 FB        anid     $FB
1038: F1 9A        cal      $119A
103A: 78 64 32     call     $6432
103D: 37           rtn
103E: F1 5E        cal      $115E
1040: D6 02        tsid     $02
1042: F1 6A        cal      $116A
1044: 38 27        jrzp     $106C
1046: 95           lp       $15
1047: 62 10        tsim     $10
1049: 38 22        jrzp     $106C
104B: 62 08        tsim     $08
104D: 38 11        jrzp     $105F
104F: D6 01        tsid     $01
1051: 28 05        jrnzp    $1057
1053: D6 20        tsid     $20
1055: 29 2E        jrnzm    $1028
1057: D4 C0        anid     $C0
1059: F1 BD        cal      $11BD
105B: 95           lp       $15
105C: 79 4C 7F     jp       $4C7F
105F: 62 01        tsim     $01
1061: 28 0A        jrnzp    $106C
1063: 62 02        tsim     $02
1065: 38 06        jrzp     $106C
1067: F1 BD        cal      $11BD
1069: 79 4B CA     jp       $4BCA
106C: D6 20        tsid     $20
106E: 39 CD        jrzm     $0FA2
1070: D6 01        tsid     $01
1072: 29 D1        jrnzm    $0FA2
1074: 2D 4D        jrm      $1028
1076: F1 6A        cal      $116A
1078: D6 08        tsid     $08
107A: 39 3D        jrzm     $103E
107C: 10 C6 C5     lidp     $C6C5
107F: 57           ldd
1080: 67 7F        cpia     $7F
1082: 3A 9F        jrcp     $1122
1084: F1 9A        cal      $119A
1086: 24           ixl
1087: 67 11        cpia     $11
1089: 38 94        jrzp     $111E
108B: 67 34        cpia     $34
108D: 38 8C        jrzp     $111A
108F: 74 90        adia     $90
1091: 8A           lp       $0A
1092: DB           exam
1093: 88           lp       $08
1094: 60 00        anim     $00
1096: 04           ix
1097: 24           ixl
1098: 48           inck
1099: 67 00        cpia     $00
109B: 29 05        jrnzm    $1097
109D: 80           lp       $00
109E: 60 00        anim     $00
10A0: 89           lp       $09
10A1: 60 00        anim     $00
10A3: 78 63 69     call     $6369
10A6: 3A 64        jrcp     $110B
10A8: F1 77        cal      $1177
10AA: 24           ixl
10AB: C8           incl
10AC: 67 00        cpia     $00
10AE: 38 11        jrzp     $10C0
10B0: 67 E0        cpia     $E0
10B2: 3B 09        jrcm     $10AA
10B4: F2 00        cal      $1200
10B6: 67 FF        cpia     $FF
10B8: 38 0D        jrzp     $10C6
10BA: 24           ixl
10BB: 40           inci
10BC: 67 00        cpia     $00
10BE: 29 09        jrnzm    $10B6
10C0: 24           ixl
10C1: C8           incl
10C2: 67 FF        cpia     $FF
10C4: 29 05        jrnzm    $10C0
10C6: 88           lp       $08
10C7: 59           ldm
10C8: 89           lp       $09
10C9: 45           sbm
10CA: 3A 37        jrcp     $1102
10CC: FA CF        cal      $1ACF
10CE: 05           dx
10CF: 07           dy
10D0: 80           lp       $00
10D1: 63 00        cpim     $00
10D3: 38 06        jrzp     $10DA
10D5: 24           ixl
10D6: 26           iys
10D7: 41           deci
10D8: 29 04        jrnzm    $10D5
10DA: 49           deck
10DB: 38 3B        jrzp     $1117
10DD: 8A           lp       $0A
10DE: 59           ldm
10DF: 26           iys
10E0: F1 9A        cal      $119A
10E2: 04           ix
10E3: 04           ix
10E4: 24           ixl
10E5: 26           iys
10E6: 49           deck
10E7: 29 04        jrnzm    $10E4
10E9: 89           lp       $09
10EA: 63 00        cpim     $00
10EC: 38 07        jrzp     $10F4
10EE: 02 00        lia      $00
10F0: 26           iys
10F1: C9           decl
10F2: 29 03        jrnzm    $10F0
10F4: F1 6A        cal      $116A
10F6: D6 20        tsid     $20
10F8: 7E 4F A2     jpz      $4FA2
10FB: D4 DF        anid     $DF
10FD: F1 AF        cal      $11AF
10FF: F1 E0        cal      $11E0
1101: 37           rtn
1102: F7 1B        cal      $171B
1104: F1 9A        cal      $119A
1106: 04           ix
1107: 04           ix
1108: 04           ix
1109: 2D FD        jrm      $100D
110B: 88           lp       $08
110C: 63 01        cpim     $01
110E: F1 77        cal      $1177
1110: 7E 4F A2     jpz      $4FA2
1113: F2 00        cal      $1200
1115: 2D 54        jrm      $10C2
1117: C8           incl
1118: 2D 30        jrm      $10E9
111A: 02 F4        lia      $F4
111C: 2D 8C        jrm      $1091
111E: 02 F1        lia      $F1
1120: 2D 90        jrm      $1091
1122: F7 27        cal      $1727
1124: 2D 21        jrm      $1104
1126: 93           lp       $13
1127: 60 7F        anim     $7F
1129: 24           ixl
112A: 67 12        cpia     $12
112C: 38 0F        jrzp     $113C
112E: 67 00        cpia     $00
1130: 38 09        jrzp     $113A
1132: 67 1D        cpia     $1D
1134: 29 0C        jrnzm    $1129
1136: 62 80        tsim     $80
1138: 29 10        jrnzm    $1129
113A: 05           dx
113B: 37           rtn
113C: 70 80        adim     $80
113E: 2D 16        jrm      $1129
1140: F2 05        cal      $1205
1142: 3A 2E        jrcp     $1171
1144: F1 6E        cal      $116E
1146: 2A 2B        jrncp    $1172
1148: 78 59 D4     call     $59D4
114B: E2 2A        cal      $022A
114D: F2 BD        cal      $12BD
114F: A2           lp       $22
1150: 02 10        lia      $10
1152: DB           exam
1153: EB 67        cal      $0B67
1155: A1           lp       $21
1156: 62 08        tsim     $08
1158: 28 18        jrnzp    $1171
115A: 02 30        lia      $30
115C: FF B1        cal      $1FB1
115E: 78 59 D4     call     $59D4
1161: 2A 0F        jrncp    $1171
1163: 02 00        lia      $00
1165: FF B1        cal      $1FB1
1167: A2           lp       $22
1168: 63 00        cpim     $00
116A: 38 06        jrzp     $1171
116C: 78 59 D4     call     $59D4
116F: 3B 25        jrcm     $114B
1171: 37           rtn
1172: F7 27        cal      $1727
1174: 37           rtn
1175: F1 5E        cal      $115E
1177: D6 02        tsid     $02
1179: 38 1B        jrzp     $1195
117B: 95           lp       $15
117C: 62 10        tsim     $10
117E: 38 16        jrzp     $1195
1180: 62 09        tsim     $09
1182: 38 11        jrzp     $1194
1184: 60 FE        anim     $FE
1186: 10 C7 02     lidp     $C702
1189: 9C           lp       $1C
118A: 00 03        lii      $03
118C: 18           mvwd
118D: 98           lp       $18
118E: 13 1C        liq      $1C
1190: 08           mvw
1191: 96           lp       $16
1192: 61 10        orim     $10
1194: 37           rtn
1195: F7 27        cal      $1727
1197: 37           rtn
1198: 02 CF        lia      $CF
119A: 03 C5        lib      $C5
119C: F1 EE        cal      $11EE
119E: 06           iy
119F: 02 00        lia      $00
11A1: 00 CF        lii      $CF
11A3: 1F           fild
11A4: 10 C6 FC     lidp     $C6FC
11A7: 86           lp       $06
11A8: 1B           exbd
11A9: 10 C6 D8     lidp     $C6D8
11AC: D4 F7        anid     $F7
11AE: 37           rtn
11AF: F2 05        cal      $1205
11B1: 3A 1E        jrcp     $11D0
11B3: 92           lp       $12
11B4: 60 00        anim     $00
11B6: 93           lp       $13
11B7: 61 80        orim     $80
11B9: F7 37        cal      $1737
11BB: 3A 14        jrcp     $11D0
11BD: 78 59 E0     call     $59E0
11C0: A9           lp       $29
11C1: DB           exam
11C2: 26           iys
11C3: A8           lp       $28
11C4: DB           exam
11C5: 26           iys
11C6: 78 67 87     call     $6787
11C9: 78 C6 DB     call     $C6DB
11CC: D1           rc
11CD: 78 67 8C     call     $678C
11D0: 37           rtn
11D1: 93           lp       $13
11D2: 60 9F        anim     $9F
11D4: 61 40        orim     $40
11D6: 78 59 EA     call     $59EA
11D9: 3A 97        jrcp     $1271
11DB: 8A           lp       $0A
11DC: 59           ldm
11DD: 8E           lp       $0E
11DE: DB           exam
11DF: 93           lp       $13
11E0: 62 02        tsim     $02
11E2: 28 87        jrnzp    $126A
11E4: 62 04        tsim     $04
11E6: 38 92        jrzp     $1279
11E8: 24           ixl
11E9: 67 37        cpia     $37
11EB: 28 86        jrnzp    $1272
11ED: 8E           lp       $0E
11EE: 59           ldm
11EF: 34           push
11F0: F2 05        cal      $1205
11F2: 5B           pop
11F3: 8E           lp       $0E
11F4: DB           exam
11F5: 3A 7B        jrcp     $1271
11F7: 92           lp       $12
11F8: 60 F0        anim     $F0
11FA: 61 06        orim     $06
11FC: 93           lp       $13
11FD: 60 7F        anim     $7F
11FF: F7 37        cal      $1737
1201: 3A 6F        jrcp     $1271
1203: 10 C6 D0     lidp     $C6D0
1206: 8C           lp       $0C
1207: 1A           mvbd
1208: 8C           lp       $0C
1209: 78 59 F1     call     $59F1
120C: 8A           lp       $0A
120D: 13 02        liq      $02
120F: 0A           mvb
1210: 8D           lp       $0D
1211: 78 59 F1     call     $59F1
1214: FA 9E        cal      $1A9E
1216: 3A 50        jrcp     $1267
1218: A8           lp       $28
1219: 59           ldm
121A: 03 00        lib      $00
121C: FA 9E        cal      $1A9E
121E: 3A 48        jrcp     $1267
1220: 88           lp       $08
1221: 13 0A        liq      $0A
1223: 0A           mvb
1224: 02 06        lia      $06
1226: 03 00        lib      $00
1228: 8A           lp       $0A
1229: 14           adb
122A: 10 C6 FC     lidp     $C6FC
122D: 86           lp       $06
122E: 1A           mvbd
122F: 82           lp       $02
1230: 13 0A        liq      $0A
1232: 0A           mvb
1233: 86           lp       $06
1234: 15           sbb
1235: 3A 31        jrcp     $1267
1237: F8 B0        cal      $18B0
1239: 2A 2D        jrncp    $1267
123B: 10 C6 FC     lidp     $C6FC
123E: 86           lp       $06
123F: 1B           exbd
1240: 10 C6 FC     lidp     $C6FC
1243: 86           lp       $06
1244: 1A           mvbd
1245: 07           dy
1246: 8E           lp       $0E
1247: 59           ldm
1248: 26           iys
1249: 8A           lp       $0A
124A: 13 08        liq      $08
124C: 0A           mvb
124D: 02 03        lia      $03
124F: 03 00        lib      $00
1251: 8A           lp       $0A
1252: 14           adb
1253: 8B           lp       $0B
1254: 59           ldm
1255: 26           iys
1256: 8A           lp       $0A
1257: 59           ldm
1258: 26           iys
1259: 8C           lp       $0C
125A: 59           ldm
125B: 26           iys
125C: 8D           lp       $0D
125D: 59           ldm
125E: 26           iys
125F: A8           lp       $28
1260: 59           ldm
1261: 26           iys
1262: 78 59 F9     call     $59F9
1265: 2C 04        jrp      $126A
1267: F7 1B        cal      $171B
1269: 37           rtn
126A: 24           ixl
126B: 67 1B        cpia     $1B
126D: 39 9D        jrzm     $11D1
126F: D1           rc
1270: 05           dx
1271: 37           rtn
1272: 02 10        lia      $10
1274: 05           dx
1275: A8           lp       $28
1276: DB           exam
1277: 2D 75        jrm      $1203
1279: 02 08        lia      $08
127B: 2D 07        jrm      $1275
127D: 10 F8 3C     lidp     $F83C
1280: D5 0C        orid     $0C
1282: 11 3D        lidl     $3D
1284: D4 FB        anid     $FB
1286: 37           rtn
1287: 95           lp       $15
1288: 60 EF        anim     $EF
128A: 96           lp       $16
128B: 61 20        orim     $20
128D: 78 5A 61     call     $5A61
1290: 37           rtn
1291: 93           lp       $13
1292: 60 9F        anim     $9F
1294: 78 59 EA     call     $59EA
1297: 3A 7C        jrcp     $1314
1299: 93           lp       $13
129A: 62 04        tsim     $04
129C: 28 86        jrnzp    $1323
129E: 24           ixl
129F: 67 34        cpia     $34
12A1: 28 7B        jrnzp    $131D
12A3: 8A           lp       $0A
12A4: 13 06        liq      $06
12A6: 0A           mvb
12A7: 10 C6 F3     lidp     $C6F3
12AA: 57           ldd
12AB: 67 60        cpia     $60
12AD: 38 72        jrzp     $1320
12AF: 03 C7        lib      $C7
12B1: F1 F5        cal      $11F5
12B3: 06           iy
12B4: 8A           lp       $0A
12B5: 1B           exbd
12B6: F2 05        cal      $1205
12B8: 3A 5B        jrcp     $1314
12BA: F1 6E        cal      $116E
12BC: 2A 66        jrncp    $1323
12BE: 78 5A 0D     call     $5A0D
12C1: 06           iy
12C2: 86           lp       $06
12C3: 1A           mvbd
12C4: 06           iy
12C5: A0           lp       $20
12C6: 00 07        lii      $07
12C8: 19           exwd
12C9: 24           ixl
12CA: 67 90        cpia     $90
12CC: 28 50        jrnzp    $131D
12CE: F2 05        cal      $1205
12D0: 3A 43        jrcp     $1314
12D2: 78 5A 16     call     $5A16
12D5: 3A 3E        jrcp     $1314
12D7: 78 5A 0D     call     $5A0D
12DA: 06           iy
12DB: 06           iy
12DC: 06           iy
12DD: A8           lp       $28
12DE: 1B           exbd
12DF: 10 C6 F3     lidp     $C6F3
12E2: 86           lp       $06
12E3: 53           mvdm
12E4: 24           ixl
12E5: 67 91        cpia     $91
12E7: 28 2D        jrnzp    $1315
12E9: F2 05        cal      $1205
12EB: 3A 28        jrcp     $1314
12ED: F1 6E        cal      $116E
12EF: 2A 33        jrncp    $1323
12F1: 78 5A 16     call     $5A16
12F4: 3A 1F        jrcp     $1314
12F6: ED 42        cal      $0D42
12F8: A2           lp       $22
12F9: 63 00        cpim     $00
12FB: 38 27        jrzp     $1323
12FD: 78 5A 0D     call     $5A0D
1300: 06           iy
1301: 06           iy
1302: 06           iy
1303: A0           lp       $20
1304: 00 07        lii      $07
1306: 19           exwd
1307: 86           lp       $06
1308: 70 07        adim     $07
130A: 78 5A 3B     call     $5A3B
130D: 10 C6 F3     lidp     $C6F3
1310: 57           ldd
1311: 74 0E        adia     $0E
1313: 52           std
1314: 37           rtn
1315: F2 BD        cal      $12BD
1317: A2           lp       $22
1318: 61 10        orim     $10
131A: 05           dx
131B: 2D 1F        jrm      $12FD
131D: F7 05        cal      $1705
131F: 37           rtn
1320: F7 17        cal      $1717
1322: 37           rtn
1323: F7 27        cal      $1727
1325: 37           rtn
1326: F1 5E        cal      $115E
1328: D6 02        tsid     $02
132A: 28 04        jrnzp    $132F
132C: F7 27        cal      $1727
132E: 37           rtn
132F: F2 05        cal      $1205
1331: 3A 19        jrcp     $134B
1333: 78 5A 21     call     $5A21
1336: 3A 14        jrcp     $134B
1338: 96           lp       $16
1339: 62 02        tsim     $02
133B: 28 07        jrnzp    $1343
133D: 61 08        orim     $08
133F: 78 5A 61     call     $5A61
1342: 37           rtn
1343: 61 10        orim     $10
1345: 78 5A 31     call     $5A31
1348: 95           lp       $15
1349: 60 F1        anim     $F1
134B: 37           rtn
134C: F2 05        cal      $1205
134E: 3A 22        jrcp     $1371
1350: 78 5A 21     call     $5A21
1353: 3A 1D        jrcp     $1371
1355: 10 C6 F4     lidp     $C6F4
1358: 57           ldd
1359: 67 A8        cpia     $A8
135B: 2A 13        jrncp    $136F
135D: 03 F8        lib      $F8
135F: F1 F5        cal      $11F5
1361: 78 5A 3B     call     $5A3B
1364: 10 C6 F4     lidp     $C6F4
1367: 57           ldd
1368: 74 04        adia     $04
136A: 52           std
136B: 96           lp       $16
136C: 61 08        orim     $08
136E: 37           rtn
136F: F7 17        cal      $1717
1371: 37           rtn
1372: 10 F8 3C     lidp     $F83C
1375: D4 F3        anid     $F3
1377: D5 04        orid     $04
1379: 11 3D        lidl     $3D
137B: D5 04        orid     $04
137D: 37           rtn
137E: 24           ixl
137F: 67 15        cpia     $15
1381: 38 6B        jrzp     $13ED
1383: 96           lp       $16
1384: 62 02        tsim     $02
1386: 28 6A        jrnzp    $13F1
1388: 67 12        cpia     $12
138A: 78 68 8E     call     $688E
138D: 05           dx
138E: 28 84        jrnzp    $1413
1390: 04           ix
1391: 24           ixl
1392: 67 12        cpia     $12
1394: 38 75        jrzp     $140A
1396: F1 F9        cal      $11F9
1398: 05           dx
1399: 24           ixl
139A: 67 12        cpia     $12
139C: 38 09        jrzp     $13A6
139E: 67 00        cpia     $00
13A0: 26           iys
13A1: 29 09        jrnzm    $1399
13A3: F7 05        cal      $1705
13A5: 37           rtn
13A6: 02 00        lia      $00
13A8: 26           iys
13A9: 24           ixl
13AA: 67 1C        cpia     $1C
13AC: 28 47        jrnzp    $13F4
13AE: 78 5A 6B     call     $5A6B
13B1: 11 EA        lidl     $EA
13B3: 53           mvdm
13B4: 11 DA        lidl     $DA
13B6: D5 20        orid     $20
13B8: 93           lp       $13
13B9: 60 9F        anim     $9F
13BB: 78 59 EA     call     $59EA
13BE: 3A 28        jrcp     $13E7
13C0: 10 C6 EE     lidp     $C6EE
13C3: 86           lp       $06
13C4: 1B           exbd
13C5: 93           lp       $13
13C6: 62 04        tsim     $04
13C8: 38 1F        jrzp     $13E8
13CA: 62 12        tsim     $12
13CC: 38 03        jrzp     $13D0
13CE: 02 00        lia      $00
13D0: 11 F0        lidl     $F0
13D2: 52           std
13D3: 95           lp       $15
13D4: 61 04        orim     $04
13D6: FA CF        cal      $1ACF
13D8: F1 6A        cal      $116A
13DA: D6 20        tsid     $20
13DC: 28 06        jrnzp    $13E3
13DE: F1 AF        cal      $11AF
13E0: FA CF        cal      $1ACF
13E2: 37           rtn
13E3: F1 A1        cal      $11A1
13E5: 2D 06        jrm      $13E0
13E7: 37           rtn
13E8: 95           lp       $15
13E9: 61 02        orim     $02
13EB: 2D 16        jrm      $13D6
13ED: 78 78 55     call     $7855
13F0: 37           rtn
13F1: F7 27        cal      $1727
13F3: 37           rtn
13F4: 67 1B        cpia     $1B
13F6: 28 10        jrnzp    $1407
13F8: F1 6A        cal      $116A
13FA: D4 DF        anid     $DF
13FC: F1 F9        cal      $11F9
13FE: 06           iy
13FF: 78 5A 6B     call     $5A6B
1402: 11 EA        lidl     $EA
1404: 53           mvdm
1405: 2D 4E        jrm      $13B8
1407: F7 05        cal      $1705
1409: 37           rtn
140A: 24           ixl
140B: 67 1B        cpia     $1B
140D: 38 05        jrzp     $1413
140F: 67 1C        cpia     $1C
1411: 29 0B        jrnzm    $1407
1413: F1 F9        cal      $11F9
1415: 02 13        lia      $13
1417: 26           iys
1418: 02 00        lia      $00
141A: 26           iys
141B: 2D 24        jrm      $13F8
141D: F2 05        cal      $1205
141F: 3A 32        jrcp     $1452
1421: F1 6E        cal      $116E
1423: 2A 43        jrncp    $1467
1425: A1           lp       $21
1426: 62 08        tsim     $08
1428: 28 3A        jrnzp    $1463
142A: A2           lp       $22
142B: 63 00        cpim     $00
142D: 38 35        jrzp     $1463
142F: 24           ixl
1430: 67 92        cpia     $92
1432: 28 02        jrnzp    $1435
1434: 24           ixl
1435: 05           dx
1436: 67 6B        cpia     $6B
1438: 3A 11        jrcp     $144A
143A: 67 B0        cpia     $B0
143C: 3A 16        jrcp     $1453
143E: 67 BD        cpia     $BD
1440: 38 09        jrzp     $144A
1442: 67 BF        cpia     $BF
1444: 38 05        jrzp     $144A
1446: 67 B2        cpia     $B2
1448: 28 05        jrnzp    $144E
144A: 78 53 26     call     $5326
144D: 37           rtn
144E: 96           lp       $16
144F: 61 40        orim     $40
1451: D1           rc
1452: 37           rtn
1453: 67 90        cpia     $90
1455: 3A 07        jrcp     $145D
1457: 67 A0        cpia     $A0
1459: 2B 10        jrncm    $144A
145B: 2D 0E        jrm      $144E
145D: 67 76        cpia     $76
145F: 2B 16        jrncm    $144A
1461: 2D 14        jrm      $144E
1463: 78 5A 71     call     $5A71
1466: 37           rtn
1467: A7           lp       $27
1468: 63 00        cpim     $00
146A: 39 08        jrzm     $1463
146C: 2D 3E        jrm      $142F
146E: F1 5E        cal      $115E
1470: D6 01        tsid     $01
1472: 28 04        jrnzp    $1477
1474: F7 27        cal      $1727
1476: 37           rtn
1477: 10 C6 D9     lidp     $C6D9
147A: D5 08        orid     $08
147C: D6 20        tsid     $20
147E: 28 36        jrnzp    $14B5
1480: 24           ixl
1481: 05           dx
1482: 67 00        cpia     $00
1484: 38 58        jrzp     $14DD
1486: F2 05        cal      $1205
1488: 3A 2C        jrcp     $14B5
148A: F2 00        cal      $1200
148C: 24           ixl
148D: 67 00        cpia     $00
148F: 38 04        jrzp     $1494
1491: F7 05        cal      $1705
1493: 37           rtn
1494: F1 89        cal      $1189
1496: 24           ixl
1497: 67 FF        cpia     $FF
1499: 38 14        jrzp     $14AE
149B: 78 6A 51     call     $6A51
149E: 2A 20        jrncp    $14BF
14A0: 78 5D FB     call     $5DFB
14A3: 3A 12        jrcp     $14B6
14A5: F1 6A        cal      $116A
14A7: D4 DF        anid     $DF
14A9: D5 04        orid     $04
14AB: 78 61 F8     call     $61F8
14AE: 02 FF        lia      $FF
14B0: 03 C7        lib      $C7
14B2: F1 F1        cal      $11F1
14B4: D1           rc
14B5: 37           rtn
14B6: 9A           lp       $1A
14B7: 63 00        cpim     $00
14B9: 29 15        jrnzm    $14A5
14BB: D0           sc
14BC: F8 99        cal      $1899
14BE: 37           rtn
14BF: 10 20 07     lidp     $2007
14C2: D6 FF        tsid     $FF
14C4: 39 25        jrzm     $14A0
14C6: F1 8F        cal      $118F
14C8: F1 6E        cal      $116E
14CA: 3A 06        jrcp     $14D1
14CC: 78 5E 09     call     $5E09
14CF: 2D 2D        jrm      $14A3
14D1: 78 5E E9     call     $5EE9
14D4: 98           lp       $18
14D5: 13 04        liq      $04
14D7: 0A           mvb
14D8: 78 5E 77     call     $5E77
14DB: 2D 39        jrm      $14A3
14DD: F2 BD        cal      $12BD
14DF: F2 00        cal      $1200
14E1: 2D 4E        jrm      $1494
14E3: 93           lp       $13
14E4: 60 9F        anim     $9F
14E6: 78 59 EA     call     $59EA
14E9: 3A 63        jrcp     $154D
14EB: 34           push
14EC: 24           ixl
14ED: 67 34        cpia     $34
14EF: 5B           pop
14F0: 28 65        jrnzp    $1556
14F2: 78 54 FF     call     $54FF
14F5: 3A 08        jrcp     $14FE
14F7: 24           ixl
14F8: 67 1B        cpia     $1B
14FA: 39 18        jrzm     $14E3
14FC: 05           dx
14FD: D1           rc
14FE: 37           rtn
14FF: 78 63 2D     call     $632D
1502: F2 05        cal      $1205
1504: 3A 48        jrcp     $154D
1506: 78 5C 70     call     $5C70
1509: 10 C6 ED     lidp     $C6ED
150C: F1 6E        cal      $116E
150E: 2A 17        jrncp    $1526
1510: D6 80        tsid     $80
1512: 38 10        jrzp     $1523
1514: 11 EB        lidl     $EB
1516: 86           lp       $06
1517: 1A           mvbd
1518: 06           iy
1519: A0           lp       $20
151A: 00 07        lii      $07
151C: 19           exwd
151D: 07           dy
151E: 06           iy
151F: A0           lp       $20
1520: 18           mvwd
1521: D1           rc
1522: 37           rtn
1523: F7 27        cal      $1727
1525: 37           rtn
1526: D6 80        tsid     $80
1528: 29 06        jrnzm    $1523
152A: F1 C7        cal      $11C7
152C: 57           ldd
152D: 67 00        cpia     $00
152F: 11 EB        lidl     $EB
1531: 86           lp       $06
1532: 1A           mvbd
1533: 28 1F        jrnzp    $1553
1535: 02 F5        lia      $F5
1537: 26           iys
1538: 03 07        lib      $07
153A: A7           lp       $27
153B: 59           ldm
153C: 88           lp       $08
153D: DB           exam
153E: 84           lp       $04
153F: 13 25        liq      $25
1541: 0A           mvb
1542: 05           dx
1543: 49           deck
1544: 3A 09        jrcp     $154E
1546: 24           ixl
1547: 26           iys
1548: C3           decb
1549: 29 07        jrnzm    $1543
154B: F1 D2        cal      $11D2
154D: 37           rtn
154E: 02 00        lia      $00
1550: 26           iys
1551: 2D 07        jrm      $154B
1553: DA           exab
1554: 2D 1B        jrm      $153A
1556: F7 05        cal      $1705
1558: 37           rtn
1559: 93           lp       $13
155A: 60 9F        anim     $9F
155C: 61 20        orim     $20
155E: 78 59 EA     call     $59EA
1561: 3A 7A        jrcp     $15DC
1563: F1 6E        cal      $116E
1565: 2A 7B        jrncp    $15E1
1567: FA CF        cal      $1ACF
1569: 10 C6 F3     lidp     $C6F3
156C: 57           ldd
156D: 67 10        cpia     $10
156F: 38 6D        jrzp     $15DD
1571: 03 C7        lib      $C7
1573: 75 10        sbia     $10
1575: F1 F1        cal      $11F1
1577: 04           ix
1578: 8C           lp       $0C
1579: 13 04        liq      $04
157B: 0A           mvb
157C: 82           lp       $02
157D: 1A           mvbd
157E: 82           lp       $02
157F: 13 06        liq      $06
1581: 0B           exb
1582: 86           lp       $06
1583: 15           sbb
1584: 82           lp       $02
1585: 13 06        liq      $06
1587: 0B           exb
1588: 38 09        jrzp     $1592
158A: 84           lp       $04
158B: 59           ldm
158C: 10 C6 F3     lidp     $C6F3
158F: 52           std
1590: 2D 24        jrm      $156D
1592: E1 FF        cal      $01FF
1594: 84           lp       $04
1595: 13 0C        liq      $0C
1597: 0A           mvb
1598: 04           ix
1599: 04           ix
159A: A8           lp       $28
159B: 1A           mvbd
159C: ED 42        cal      $0D42
159E: E2 73        cal      $0273
15A0: EB 67        cal      $0B67
15A2: 04           ix
15A3: 04           ix
15A4: A8           lp       $28
15A5: 00 07        lii      $07
15A7: 18           mvwd
15A8: A9           lp       $29
15A9: 62 08        tsim     $08
15AB: A1           lp       $21
15AC: 38 13        jrzp     $15C0
15AE: 62 08        tsim     $08
15B0: 28 06        jrnzp    $15B7
15B2: A2           lp       $22
15B3: 63 00        cpim     $00
15B5: 28 0E        jrnzp    $15C4
15B7: 10 C6 F3     lidp     $C6F3
15BA: 57           ldd
15BB: 75 10        sbia     $10
15BD: 52           std
15BE: 2C 1B        jrp      $15DA
15C0: 62 08        tsim     $08
15C2: 39 0C        jrzm     $15B7
15C4: E2 38        cal      $0238
15C6: E2 73        cal      $0273
15C8: EB 50        cal      $0B50
15CA: E1 FF        cal      $01FF
15CC: 06           iy
15CD: A0           lp       $20
15CE: 19           exwd
15CF: 84           lp       $04
15D0: 70 07        adim     $07
15D2: 04           ix
15D3: 98           lp       $18
15D4: 00 03        lii      $03
15D6: 18           mvwd
15D7: 96           lp       $16
15D8: 61 08        orim     $08
15DA: FA CF        cal      $1ACF
15DC: 37           rtn
15DD: F7 17        cal      $1717
15DF: 2D 06        jrm      $15DA
15E1: F7 27        cal      $1727
15E3: 37           rtn
15E4: F1 5E        cal      $115E
15E6: D6 02        tsid     $02
15E8: 28 50        jrnzp    $1639
15EA: 24           ixl
15EB: 67 00        cpia     $00
15ED: 28 65        jrnzp    $1653
15EF: 05           dx
15F0: F2 00        cal      $1200
15F2: F1 5E        cal      $115E
15F4: D6 01        tsid     $01
15F6: 28 16        jrnzp    $160D
15F8: 10 C6 C4     lidp     $C6C4
15FB: 86           lp       $06
15FC: 1A           mvbd
15FD: 06           iy
15FE: 87           lp       $07
15FF: 63 40        cpim     $40
1601: 3A 06        jrcp     $1608
1603: 00 2F        lii      $2F
1605: 02 00        lia      $00
1607: 1F           fild
1608: F8 C5        cal      $18C5
160A: F8 99        cal      $1899
160C: 37           rtn
160D: 10 C6 E1     lidp     $C6E1
1610: 86           lp       $06
1611: 1A           mvbd
1612: 07           dy
1613: 02 FF        lia      $FF
1615: 26           iys
1616: 26           iys
1617: 10 C6 E3     lidp     $C6E3
161A: 8A           lp       $0A
161B: 13 06        liq      $06
161D: 0A           mvb
161E: 8A           lp       $0A
161F: 1B           exbd
1620: 06           iy
1621: 10 C7 0E     lidp     $C70E
1624: 86           lp       $06
1625: 1B           exbd
1626: 78 51 98     call     $5198
1629: 10 C6 D9     lidp     $C6D9
162C: D4 59        anid     $59
162E: 11 D8        lidl     $D8
1630: D4 F2        anid     $F2
1632: D5 02        orid     $02
1634: 95           lp       $15
1635: 60 C0        anim     $C0
1637: 2D 30        jrm      $1608
1639: F7 27        cal      $1727
163B: 37           rtn
163C: F2 05        cal      $1205
163E: 3A 69        jrcp     $16A8
1640: 92           lp       $12
1641: 60 F0        anim     $F0
1643: 61 06        orim     $06
1645: 93           lp       $13
1646: 60 7F        anim     $7F
1648: F7 37        cal      $1737
164A: 2A 0E        jrncp    $1659
164C: 94           lp       $14
164D: 63 03        cpim     $03
164F: 38 06        jrzp     $1656
1651: D0           sc
1652: 37           rtn
1653: F7 05        cal      $1705
1655: 37           rtn
1656: A8           lp       $28
1657: 61 FF        orim     $FF
1659: 24           ixl
165A: 96           lp       $16
165B: 60 7F        anim     $7F
165D: 67 D8        cpia     $D8
165F: 38 07        jrzp     $1667
1661: 67 D7        cpia     $D7
1663: 29 11        jrnzm    $1653
1665: 61 80        orim     $80
1667: A8           lp       $28
1668: 59           ldm
1669: DA           exab
166A: C3           decb
166B: 38 21        jrzp     $168D
166D: 93           lp       $13
166E: 60 7F        anim     $7F
1670: 24           ixl
1671: 67 00        cpia     $00
1673: 38 13        jrzp     $1687
1675: 67 12        cpia     $12
1677: 38 11        jrzp     $1689
1679: 62 80        tsim     $80
167B: 29 0C        jrnzm    $1670
167D: 67 1D        cpia     $1D
167F: 38 07        jrzp     $1687
1681: 67 1B        cpia     $1B
1683: 29 14        jrnzm    $1670
1685: 2D 1C        jrm      $166A
1687: 05           dx
1688: 37           rtn
1689: 70 80        adim     $80
168B: 2D 1C        jrm      $1670
168D: F2 05        cal      $1205
168F: 3A 18        jrcp     $16A8
1691: 78 5A 21     call     $5A21
1694: 3A 13        jrcp     $16A8
1696: 96           lp       $16
1697: 61 08        orim     $08
1699: 78 51 26     call     $5126
169C: 96           lp       $16
169D: 62 80        tsim     $80
169F: 38 05        jrzp     $16A5
16A1: 78 5A 61     call     $5A61
16A4: 37           rtn
16A5: 78 53 55     call     $5355
16A8: 37           rtn
16A9: 24           ixl
16AA: 67 15        cpia     $15
16AC: 38 94        jrzp     $1741
16AE: 67 34        cpia     $34
16B0: 38 77        jrzp     $1728
16B2: 05           dx
16B3: 10 C6 D7     lidp     $C6D7
16B6: D6 08        tsid     $08
16B8: 28 68        jrnzp    $1721
16BA: 96           lp       $16
16BB: 62 02        tsim     $02
16BD: 28 67        jrnzp    $1725
16BF: 78 7C 57     call     $7C57
16C2: 3A 62        jrcp     $1725
16C4: 78 5A 78     call     $5A78
16C7: 3A 40        jrcp     $1708
16C9: F1 F9        cal      $11F9
16CB: 10 C6 E7     lidp     $C6E7
16CE: 57           ldd
16CF: 03 00        lib      $00
16D1: 86           lp       $06
16D2: 14           adb
16D3: 02 00        lia      $00
16D5: 26           iys
16D6: 10 C6 D7     lidp     $C6D7
16D9: D6 04        tsid     $04
16DB: 28 35        jrnzp    $1711
16DD: F1 66        cal      $1166
16DF: D6 02        tsid     $02
16E1: 28 2F        jrnzp    $1711
16E3: 78 69 C7     call     $69C7
16E6: FA CF        cal      $1ACF
16E8: 10 C6 D8     lidp     $C6D8
16EB: D6 04        tsid     $04
16ED: 28 1B        jrnzp    $1709
16EF: 02 00        lia      $00
16F1: 03 00        lib      $00
16F3: 88           lp       $08
16F4: 13 02        liq      $02
16F6: 0A           mvb
16F7: F1 E0        cal      $11E0
16F9: 10 C6 E5     lidp     $C6E5
16FC: 82           lp       $02
16FD: 1A           mvbd
16FE: 88           lp       $08
16FF: 15           sbb
1700: 38 04        jrzp     $1705
1702: 78 5C 7D     call     $5C7D
1705: F1 E5        cal      $11E5
1707: D1           rc
1708: 37           rtn
1709: 95           lp       $15
170A: 61 08        orim     $08
170C: F1 6A        cal      $116A
170E: D5 01        orid     $01
1710: 37           rtn
1711: 78 6A 82     call     $6A82
1714: 3A 04        jrcp     $1719
1716: 78 7D DD     call     $7DDD
1719: FA CF        cal      $1ACF
171B: 10 C6 D7     lidp     $C6D7
171E: D4 DF        anid     $DF
1720: 37           rtn
1721: 78 7C 27     call     $7C27
1724: 37           rtn
1725: F7 05        cal      $1705
1727: 37           rtn
1728: 24           ixl
1729: 10 C6 D7     lidp     $C6D7
172C: 67 C1        cpia     $C1
172E: 38 0F        jrzp     $173E
1730: 67 9F        cpia     $9F
1732: 29 0E        jrnzm    $1725
1734: 78 6B 6F     call     $6B6F
1737: 11 D7        lidl     $D7
1739: 38 04        jrzp     $173E
173B: D5 08        orid     $08
173D: 37           rtn
173E: D4 F7        anid     $F7
1740: 37           rtn
1741: 78 75 44     call     $7544
1744: 37           rtn
1745: 78 5A 78     call     $5A78
1748: 3A 16        jrcp     $175F
174A: 78 69 C7     call     $69C7
174D: FA CF        cal      $1ACF
174F: 02 CA        lia      $CA
1751: 03 FF        lib      $FF
1753: 88           lp       $08
1754: 13 02        liq      $02
1756: 0A           mvb
1757: F1 E0        cal      $11E0
1759: 78 5C 7D     call     $5C7D
175C: F1 E5        cal      $11E5
175E: D1           rc
175F: 37           rtn
1760: FA CF        cal      $1ACF
1762: F1 8F        cal      $118F
1764: 88           lp       $08
1765: 02 07        lia      $07
1767: DB           exam
1768: 24           ixl
1769: 67 FF        cpia     $FF
176B: 38 32        jrzp     $179E
176D: F8 99        cal      $1899
176F: 24           ixl
1770: 67 12        cpia     $12
1772: 28 2B        jrnzp    $179E
1774: 10 C6 D9     lidp     $C6D9
1777: D6 20        tsid     $20
1779: 02 A8        lia      $A8
177B: 03 F8        lib      $F8
177D: 38 36        jrzp     $17B4
177F: 8C           lp       $0C
1780: 13 02        liq      $02
1782: 0A           mvb
1783: F1 95        cal      $1195
1785: 24           ixl
1786: 67 00        cpia     $00
1788: 38 1E        jrzp     $17A7
178A: DA           exab
178B: F1 95        cal      $1195
178D: 24           ixl
178E: 83           lp       $03
178F: C7           cpma
1790: 28 12        jrnzp    $17A3
1792: 49           deck
1793: 29 11        jrnzm    $1783
1795: 2C 13        jrp      $17A9
1797: 05           dx
1798: 10 C6 D9     lidp     $C6D9
179B: D4 DF        anid     $DF
179D: 37           rtn
179E: F7 05        cal      $1705
17A0: FA CF        cal      $1ACF
17A2: 37           rtn
17A3: F7 27        cal      $1727
17A5: 2D 06        jrm      $17A0
17A7: F1 95        cal      $1195
17A9: 24           ixl
17AA: 67 00        cpia     $00
17AC: 39 16        jrzm     $1797
17AE: 67 12        cpia     $12
17B0: 39 19        jrzm     $1798
17B2: 2D 0A        jrm      $17A9
17B4: F1 F5        cal      $11F5
17B6: 02 F5        lia      $F5
17B8: 26           iys
17B9: 24           ixl
17BA: 67 12        cpia     $12
17BC: 38 1A        jrzp     $17D7
17BE: 67 00        cpia     $00
17C0: 38 15        jrzp     $17D6
17C2: 26           iys
17C3: 49           deck
17C4: 29 0C        jrnzm    $17B9
17C6: 24           ixl
17C7: 67 12        cpia     $12
17C9: 38 06        jrzp     $17D0
17CB: 67 00        cpia     $00
17CD: 29 08        jrnzm    $17C6
17CF: 05           dx
17D0: 10 C6 D9     lidp     $C6D9
17D3: D5 20        orid     $20
17D5: 37           rtn
17D6: 05           dx
17D7: 02 00        lia      $00
17D9: 26           iys
17DA: 2D 0B        jrm      $17D0
17DC: F2 05        cal      $1205
17DE: 3A 3B        jrcp     $181A
17E0: 92           lp       $12
17E1: 60 F0        anim     $F0
17E3: 93           lp       $13
17E4: 61 80        orim     $80
17E6: F7 37        cal      $1737
17E8: 3A 31        jrcp     $181A
17EA: A8           lp       $28
17EB: 10 C6 EB     lidp     $C6EB
17EE: 1B           exbd
17EF: 24           ixl
17F0: 67 1B        cpia     $1B
17F2: 28 28        jrnzp    $181B
17F4: F2 05        cal      $1205
17F6: 3A 23        jrcp     $181A
17F8: 92           lp       $12
17F9: 60 F0        anim     $F0
17FB: 61 04        orim     $04
17FD: 93           lp       $13
17FE: 61 80        orim     $80
1800: F7 37        cal      $1737
1802: 3A 17        jrcp     $181A
1804: 10 C6 EB     lidp     $C6EB
1807: 86           lp       $06
1808: 1A           mvbd
1809: A8           lp       $28
180A: 59           ldm
180B: 07           dy
180C: 26           iys
180D: 06           iy
180E: 10 C6 EB     lidp     $C6EB
1811: 86           lp       $06
1812: 1B           exbd
1813: 24           ixl
1814: 67 1B        cpia     $1B
1816: 39 23        jrzm     $17F4
1818: 05           dx
1819: D1           rc
181A: 37           rtn
181B: F7 05        cal      $1705
181D: 37           rtn
181E: 10 C6 F4     lidp     $C6F4
1821: 57           ldd
1822: 67 80        cpia     $80
1824: 38 13        jrzp     $1838
1826: 75 03        sbia     $03
1828: 03 F8        lib      $F8
182A: F1 F5        cal      $11F5
182C: 98           lp       $18
182D: 00 03        lii      $03
182F: 18           mvwd
1830: 10 C6 F4     lidp     $C6F4
1833: 86           lp       $06
1834: 53           mvdm
1835: 79 53 38     jp       $5338
1838: F7 17        cal      $1717
183A: 37           rtn
183B: 24           ixl
183C: 67 00        cpia     $00
183E: 05           dx
183F: 28 15        jrnzp    $1855
1841: FA CF        cal      $1ACF
1843: F1 89        cal      $1189
1845: 04           ix
1846: 04           ix
1847: 10 C7 0E     lidp     $C70E
184A: 84           lp       $04
184B: 1B           exbd
184C: FA CF        cal      $1ACF
184E: 10 C6 D8     lidp     $C6D8
1851: D5 02        orid     $02
1853: D1           rc
1854: 37           rtn
1855: F2 05        cal      $1205
1857: 3B 04        jrcm     $1854
1859: 78 5A 21     call     $5A21
185C: 3B 09        jrcm     $1854
185E: 10 C7 0E     lidp     $C70E
1861: 98           lp       $18
1862: 1B           exbd
1863: 2D 16        jrm      $184E
1865: 02 00        lia      $00
1867: 6B 02        test     $02
1869: 42           inca
186A: 6B 02        test     $02
186C: 39 04        jrzm     $1869
186E: A8           lp       $28
186F: 03 00        lib      $00
1871: 13 02        liq      $02
1873: 0A           mvb
1874: ED 3B        cal      $0D3B
1876: 10 F8 B0     lidp     $F8B0
1879: A8           lp       $28
187A: 00 07        lii      $07
187C: 18           mvwd
187D: A7           lp       $27
187E: 13 2F        liq      $2F
1880: 0E           adw
1881: 10 F8 B0     lidp     $F8B0
1884: A0           lp       $20
1885: 19           exwd
1886: F2 BD        cal      $12BD
1888: 78 7F 45     call     $7F45
188B: 37           rtn
188C: 10 F8 3C     lidp     $F83C
188F: D4 F3        anid     $F3
1891: 11 3D        lidl     $3D
1893: D5 04        orid     $04
1895: 37           rtn
1896: 95           lp       $15
1897: 61 20        orim     $20
1899: 37           rtn
189A: 96           lp       $16
189B: 61 04        orim     $04
189D: 37           rtn
189E: 96           lp       $16
189F: 60 FB        anim     $FB
18A1: 37           rtn
18A2: 24           ixl
18A3: 05           dx
18A4: 67 1D        cpia     $1D
18A6: 38 15        jrzp     $18BC
18A8: 67 00        cpia     $00
18AA: 38 11        jrzp     $18BC
18AC: F2 05        cal      $1205
18AE: 3A 10        jrcp     $18BF
18B0: F1 6E        cal      $116E
18B2: 3A 0D        jrcp     $18C0
18B4: FA CF        cal      $1ACF
18B6: 78 5B 39     call     $5B39
18B9: FA CF        cal      $1ACF
18BB: 37           rtn
18BC: 78 5C CF     call     $5CCF
18BF: 37           rtn
18C0: F7 27        cal      $1727
18C2: 37           rtn
18C3: 24           ixl
18C4: 05           dx
18C5: 67 1D        cpia     $1D
18C7: 38 05        jrzp     $18CD
18C9: 67 00        cpia     $00
18CB: 28 07        jrnzp    $18D3
18CD: 10 C6 D8     lidp     $C6D8
18D0: D5 04        orid     $04
18D2: 37           rtn
18D3: F2 05        cal      $1205
18D5: 3B 04        jrcm     $18D2
18D7: 92           lp       $12
18D8: 60 F0        anim     $F0
18DA: 93           lp       $13
18DB: 61 80        orim     $80
18DD: F7 37        cal      $1737
18DF: 3B 0E        jrcm     $18D2
18E1: 10 C6 D8     lidp     $C6D8
18E4: D4 FB        anid     $FB
18E6: 10 C6 E5     lidp     $C6E5
18E9: A8           lp       $28
18EA: 1B           exbd
18EB: 37           rtn
18EC: 93           lp       $13
18ED: 60 09        anim     $09
18EF: 78 59 EA     call     $59EA
18F2: 3A 71        jrcp     $1964
18F4: 10 C6 EB     lidp     $C6EB
18F7: 86           lp       $06
18F8: 1B           exbd
18F9: 11 ED        lidl     $ED
18FB: 93           lp       $13
18FC: 62 04        tsim     $04
18FE: 38 77        jrzp     $1976
1900: 62 12        tsim     $12
1902: 38 03        jrzp     $1906
1904: 02 00        lia      $00
1906: 52           std
1907: F1 C7        cal      $11C7
1909: 10 C7 0E     lidp     $C70E
190C: 84           lp       $04
190D: 1A           mvbd
190E: 10 C6 D8     lidp     $C6D8
1911: D6 02        tsid     $02
1913: 38 51        jrzp     $1965
1915: 24           ixl
1916: 67 12        cpia     $12
1918: 28 0F        jrnzp    $1928
191A: 24           ixl
191B: 67 00        cpia     $00
191D: 38 10        jrzp     $192E
191F: 67 12        cpia     $12
1921: 29 08        jrnzm    $191A
1923: 24           ixl
1924: 67 1D        cpia     $1D
1926: 38 02        jrzp     $1929
1928: 05           dx
1929: 24           ixl
192A: 67 CB        cpia     $CB
192C: 38 1F        jrzp     $194C
192E: 24           ixl
192F: 67 E0        cpia     $E0
1931: 3B 04        jrcm     $192E
1933: 67 FF        cpia     $FF
1935: 28 0D        jrnzp    $1943
1937: 85           lp       $05
1938: 63 40        cpim     $40
193A: 2A 0B        jrncp    $1946
193C: F1 8F        cal      $118F
193E: 24           ixl
193F: 67 FF        cpia     $FF
1941: 38 04        jrzp     $1946
1943: 04           ix
1944: 2D 30        jrm      $1915
1946: F7 17        cal      $1717
1948: F1 D2        cal      $11D2
194A: D0           sc
194B: 37           rtn
194C: 78 55 02     call     $5502
194F: 3B 08        jrcm     $1948
1951: 10 C7 0E     lidp     $C70E
1954: 84           lp       $04
1955: 1B           exbd
1956: 10 C6 D8     lidp     $C6D8
1959: D4 FD        anid     $FD
195B: F1 D2        cal      $11D2
195D: 24           ixl
195E: 67 1B        cpia     $1B
1960: 39 75        jrzm     $18EC
1962: 05           dx
1963: D1           rc
1964: 37           rtn
1965: 24           ixl
1966: 67 1B        cpia     $1B
1968: 39 1D        jrzm     $194C
196A: 67 1D        cpia     $1D
196C: 39 3F        jrzm     $192E
196E: 67 00        cpia     $00
1970: 39 43        jrzm     $192E
1972: F7 05        cal      $1705
1974: 2D 2D        jrm      $1948
1976: 02 88        lia      $88
1978: 2D 73        jrm      $1906
197A: F1 5E        cal      $115E
197C: D6 02        tsid     $02
197E: 28 04        jrnzp    $1983
1980: F7 27        cal      $1727
1982: 37           rtn
1983: 24           ixl
1984: 67 00        cpia     $00
1986: 05           dx
1987: 38 38        jrzp     $19C0
1989: F2 05        cal      $1205
198B: 3A 33        jrcp     $19BF
198D: 78 5A 21     call     $5A21
1990: 3A 2E        jrcp     $19BF
1992: 78 53 38     call     $5338
1995: FA CF        cal      $1ACF
1997: 10 C6 D8     lidp     $C6D8
199A: D4 F6        anid     $F6
199C: D5 06        orid     $06
199E: 11 D7        lidl     $D7
19A0: D4 F7        anid     $F7
19A2: 11 D9        lidl     $D9
19A4: D4 79        anid     $79
19A6: 78 70 36     call     $7036
19A9: F1 89        cal      $1189
19AB: 04           ix
19AC: 04           ix
19AD: 10 C7 0E     lidp     $C70E
19B0: 84           lp       $04
19B1: 1B           exbd
19B2: 02 CF        lia      $CF
19B4: 03 C5        lib      $C5
19B6: F1 EE        cal      $11EE
19B8: 06           iy
19B9: 78 51 A4     call     $51A4
19BC: FA CF        cal      $1ACF
19BE: D1           rc
19BF: 37           rtn
19C0: FA CF        cal      $1ACF
19C2: F1 89        cal      $1189
19C4: 24           ixl
19C5: 67 FF        cpia     $FF
19C7: 39 0C        jrzm     $19BC
19C9: 9A           lp       $1A
19CA: 1A           mvbd
19CB: 04           ix
19CC: 98           lp       $18
19CD: 13 04        liq      $04
19CF: 0A           mvb
19D0: FA CF        cal      $1ACF
19D2: 2D 41        jrm      $1992
19D4: 02 F4        lia      $F4
19D6: 03 FF        lib      $FF
19D8: 88           lp       $08
19D9: 13 02        liq      $02
19DB: 0A           mvb
19DC: 78 5C 7D     call     $5C7D
19DF: 37           rtn
19E0: 02 DB        lia      $DB
19E2: 03 C6        lib      $C6
19E4: F1 F5        cal      $11F5
19E6: 02 79        lia      $79
19E8: 26           iys
19E9: 37           rtn
19EA: F6 C0        cal      $16C0
19EC: 3A 03        jrcp     $19F0
19EE: FA 0E        cal      $1A0E
19F0: 37           rtn
19F1: 59           ldm
19F2: 03 00        lib      $00
19F4: 42           inca
19F5: DA           exab
19F6: 5A           sl
19F7: DA           exab
19F8: 37           rtn
19F9: 02 00        lia      $00
19FB: 03 00        lib      $00
19FD: 82           lp       $02
19FE: 13 08        liq      $08
1A00: 0B           exb
1A01: 88           lp       $08
1A02: 15           sbb
1A03: 02 00        lia      $00
1A05: 26           iys
1A06: 48           inck
1A07: 2B 03        jrncm    $1A05
1A09: C8           incl
1A0A: 2B 06        jrncm    $1A05
1A0C: 37           rtn
1A0D: 10 C6 F3     lidp     $C6F3
1A10: 57           ldd
1A11: 03 C7        lib      $C7
1A13: F1 F5        cal      $11F5
1A15: 37           rtn
1A16: 92           lp       $12
1A17: 60 F0        anim     $F0
1A19: 61 02        orim     $02
1A1B: 93           lp       $13
1A1C: 61 80        orim     $80
1A1E: F7 37        cal      $1737
1A20: 37           rtn
1A21: FA CF        cal      $1ACF
1A23: 78 5D FB     call     $5DFB
1A26: FA CF        cal      $1ACF
1A28: 3A 07        jrcp     $1A30
1A2A: 02 01        lia      $01
1A2C: 03 00        lib      $00
1A2E: 98           lp       $18
1A2F: 14           adb
1A30: 37           rtn
1A31: 02 10        lia      $10
1A33: 03 80        lib      $80
1A35: 10 C6 F3     lidp     $C6F3
1A38: 82           lp       $02
1A39: 1B           exbd
1A3A: 37           rtn
1A3B: F2 00        cal      $1200
1A3D: 24           ixl
1A3E: 67 1D        cpia     $1D
1A40: 38 13        jrzp     $1A54
1A42: 67 00        cpia     $00
1A44: 28 0C        jrnzp    $1A51
1A46: 04           ix
1A47: 8A           lp       $0A
1A48: 1A           mvbd
1A49: 04           ix
1A4A: 06           iy
1A4B: 84           lp       $04
1A4C: 1B           exbd
1A4D: 06           iy
1A4E: 06           iy
1A4F: 8A           lp       $0A
1A50: 1B           exbd
1A51: FA CF        cal      $1ACF
1A53: 37           rtn
1A54: 06           iy
1A55: 84           lp       $04
1A56: 1B           exbd
1A57: 9E           lp       $1E
1A58: 06           iy
1A59: 06           iy
1A5A: 1B           exbd
1A5B: 9E           lp       $1E
1A5C: 06           iy
1A5D: 07           dy
1A5E: 1A           mvbd
1A5F: 2D 0F        jrm      $1A51
1A61: 24           ixl
1A62: 67 00        cpia     $00
1A64: 28 03        jrnzp    $1A68
1A66: 05           dx
1A67: 37           rtn
1A68: F7 05        cal      $1705
1A6A: 37           rtn
1A6B: 10 C6 F1     lidp     $C6F1
1A6E: 86           lp       $06
1A6F: 53           mvdm
1A70: 37           rtn
1A71: 24           ixl
1A72: 67 00        cpia     $00
1A74: 29 04        jrnzm    $1A71
1A76: 05           dx
1A77: 37           rtn
1A78: 10 C6 E7     lidp     $C6E7
1A7B: D4 00        anid     $00
1A7D: 93           lp       $13
1A7E: 02 04        lia      $04
1A80: DB           exam
1A81: 10 C7 B0     lidp     $C7B0
1A84: 02 11        lia      $11
1A86: 00 4F        lii      $4F
1A88: 1F           fild
1A89: 24           ixl
1A8A: 67 DD        cpia     $DD
1A8C: 38 81        jrzp     $1B0E
1A8E: 05           dx
1A8F: 93           lp       $13
1A90: 59           ldm
1A91: 34           push
1A92: 10 C6 E7     lidp     $C6E7
1A95: 57           ldd
1A96: 11 A2        lidl     $A2
1A98: 52           std
1A99: F2 05        cal      $1205
1A9B: 10 C6 A2     lidp     $C6A2
1A9E: 57           ldd
1A9F: 11 E7        lidl     $E7
1AA1: 52           std
1AA2: 5B           pop
1AA3: 3A 30        jrcp     $1AD4
1AA5: 93           lp       $13
1AA6: DB           exam
1AA7: 24           ixl
1AA8: 67 00        cpia     $00
1AAA: 38 05        jrzp     $1AB0
1AAC: 67 1D        cpia     $1D
1AAE: 28 26        jrnzp    $1AD5
1AB0: 62 02        tsim     $02
1AB2: 28 04        jrnzp    $1AB7
1AB4: 78 5C 70     call     $5C70
1AB7: 93           lp       $13
1AB8: 62 01        tsim     $01
1ABA: 38 07        jrzp     $1AC2
1ABC: 10 C6 E7     lidp     $C6E7
1ABF: 02 0C        lia      $0C
1AC1: 52           std
1AC2: 78 68 B5     call     $68B5
1AC5: 3A 0E        jrcp     $1AD4
1AC7: 05           dx
1AC8: FA CF        cal      $1ACF
1ACA: 88           lp       $08
1ACB: 02 20        lia      $20
1ACD: DB           exam
1ACE: 02 B0        lia      $B0
1AD0: 03 C7        lib      $C7
1AD2: F1 F1        cal      $11F1
1AD4: 37           rtn
1AD5: 67 1B        cpia     $1B
1AD7: 28 20        jrnzp    $1AF8
1AD9: 62 03        tsim     $03
1ADB: 28 16        jrnzp    $1AF2
1ADD: 78 5C 70     call     $5C70
1AE0: 93           lp       $13
1AE1: 61 01        orim     $01
1AE3: 78 68 B5     call     $68B5
1AE6: 3B 13        jrcm     $1AD4
1AE8: 24           ixl
1AE9: 05           dx
1AEA: 67 00        cpia     $00
1AEC: 38 05        jrzp     $1AF2
1AEE: 67 1D        cpia     $1D
1AF0: 29 68        jrnzm    $1A89
1AF2: F7 05        cal      $1705
1AF4: 37           rtn
1AF5: F7 27        cal      $1727
1AF7: 37           rtn
1AF8: 67 1C        cpia     $1C
1AFA: 29 09        jrnzm    $1AF2
1AFC: 62 01        tsim     $01
1AFE: 29 0D        jrnzm    $1AF2
1B00: 62 04        tsim     $04
1B02: 38 07        jrzp     $1B0A
1B04: 60 FB        anim     $FB
1B06: 78 5C 70     call     $5C70
1B09: 93           lp       $13
1B0A: 61 02        orim     $02
1B0C: 2D 2A        jrm      $1AE3
1B0E: 24           ixl
1B0F: 67 1C        cpia     $1C
1B11: 38 22        jrzp     $1B34
1B13: 05           dx
1B14: 93           lp       $13
1B15: 59           ldm
1B16: 34           push
1B17: F2 05        cal      $1205
1B19: 5B           pop
1B1A: 3B 47        jrcm     $1AD4
1B1C: F1 6E        cal      $116E
1B1E: 3B 2A        jrcm     $1AF5
1B20: 34           push
1B21: FA CF        cal      $1ACF
1B23: 78 5B 39     call     $5B39
1B26: 5B           pop
1B27: 93           lp       $13
1B28: DB           exam
1B29: FA CF        cal      $1ACF
1B2B: 3B 58        jrcm     $1AD4
1B2D: 24           ixl
1B2E: 67 1C        cpia     $1C
1B30: 29 3F        jrnzm    $1AF2
1B32: 2D A4        jrm      $1A8F
1B34: 78 5C CF     call     $5CCF
1B37: 2D A9        jrm      $1A8F
1B39: 84           lp       $04
1B3A: 13 25        liq      $25
1B3C: 0A           mvb
1B3D: A7           lp       $27
1B3E: 59           ldm
1B3F: 88           lp       $08
1B40: DB           exam
1B41: 93           lp       $13
1B42: 60 E0        anim     $E0
1B44: 61 08        orim     $08
1B46: 02 00        lia      $00
1B48: 89           lp       $09
1B49: DB           exam
1B4A: 59           ldm
1B4B: 8E           lp       $0E
1B4C: 00 03        lii      $03
1B4E: 1E           film
1B4F: 88           lp       $08
1B50: 63 00        cpim     $00
1B52: 38 5B        jrzp     $1BAE
1B54: 05           dx
1B55: 24           ixl
1B56: 93           lp       $13
1B57: 7A 04 5B 6A  dtj      $04, $5B6A
1B5B: 69           ptj
1B5C: 15 5B C4     .case    $15, $5BC4
1B5F: 1F 5B ED     .case    $1F, $5BED
1B62: 39 5C 22     .case    $39, $5C22
1B65: 4A 5C 5B     .case    $4A, $5C5B
1B68: 17 05        .default $1705
1B6A: 3A 42        jrcp     $1BAD
1B6C: 49           deck
1B6D: 29 19        jrnzm    $1B55
1B6F: 89           lp       $09
1B70: 59           ldm
1B71: 93           lp       $13
1B72: 62 04        tsim     $04
1B74: 38 4C        jrzp     $1BC1
1B76: 62 02        tsim     $02
1B78: 38 45        jrzp     $1BBE
1B7A: 90           lp       $10
1B7B: DB           exam
1B7C: 02 02        lia      $02
1B7E: 8E           lp       $0E
1B7F: 62 08        tsim     $08
1B81: 8F           lp       $0F
1B82: 28 07        jrnzp    $1B8A
1B84: 63 0C        cpim     $0C
1B86: 3A 04        jrcp     $1B8B
1B88: 02 0B        lia      $0B
1B8A: DB           exam
1B8B: 90           lp       $10
1B8C: 63 0A        cpim     $0A
1B8E: 3A 0A        jrcp     $1B99
1B90: 8E           lp       $0E
1B91: 62 08        tsim     $08
1B93: 90           lp       $10
1B94: 38 21        jrzp     $1BB6
1B96: 02 0A        lia      $0A
1B98: DB           exam
1B99: 10 C6 F8     lidp     $C6F8
1B9C: 8F           lp       $0F
1B9D: 63 00        cpim     $00
1B9F: 38 05        jrzp     $1BA5
1BA1: 00 02        lii      $02
1BA3: 8E           lp       $0E
1BA4: 19           exwd
1BA5: 91           lp       $11
1BA6: 63 00        cpim     $00
1BA8: 38 04        jrzp     $1BAD
1BAA: 11 FB        lidl     $FB
1BAC: 53           mvdm
1BAD: 37           rtn
1BAE: 10 C6 F8     lidp     $C6F8
1BB1: 8E           lp       $0E
1BB2: 00 03        lii      $03
1BB4: 19           exwd
1BB5: 37           rtn
1BB6: 63 0E        cpim     $0E
1BB8: 3B 20        jrcm     $1B99
1BBA: 02 0D        lia      $0D
1BBC: 2D 25        jrm      $1B98
1BBE: 8F           lp       $0F
1BBF: 2D 45        jrm      $1B7B
1BC1: 91           lp       $11
1BC2: 2D 48        jrm      $1B7B
1BC4: 93           lp       $13
1BC5: 62 08        tsim     $08
1BC7: 38 07        jrzp     $1BCF
1BC9: 60 F7        anim     $F7
1BCB: 61 04        orim     $04
1BCD: C8           incl
1BCE: 37           rtn
1BCF: 62 01        tsim     $01
1BD1: 28 15        jrnzp    $1BE7
1BD3: 62 04        tsim     $04
1BD5: 38 08        jrzp     $1BDE
1BD7: 62 10        tsim     $10
1BD9: 39 0D        jrzm     $1BCD
1BDB: F7 05        cal      $1705
1BDD: 37           rtn
1BDE: 61 05        orim     $05
1BE0: 89           lp       $09
1BE1: 02 01        lia      $01
1BE3: DB           exam
1BE4: 91           lp       $11
1BE5: DB           exam
1BE6: 37           rtn
1BE7: 62 04        tsim     $04
1BE9: 39 0F        jrzm     $1BDB
1BEB: 2D 15        jrm      $1BD7
1BED: 62 08        tsim     $08
1BEF: 38 05        jrzp     $1BF5
1BF1: 60 F3        anim     $F3
1BF3: C8           incl
1BF4: 37           rtn
1BF5: 62 01        tsim     $01
1BF7: 28 1F        jrnzp    $1C17
1BF9: 62 04        tsim     $04
1BFB: 39 2F        jrzm     $1BCD
1BFD: 60 FB        anim     $FB
1BFF: 61 01        orim     $01
1C01: 62 10        tsim     $10
1C03: 28 19        jrnzp    $1C1D
1C05: 62 02        tsim     $02
1C07: 38 08        jrzp     $1C10
1C09: 89           lp       $09
1C0A: 02 01        lia      $01
1C0C: DB           exam
1C0D: 90           lp       $10
1C0E: DB           exam
1C0F: 37           rtn
1C10: 89           lp       $09
1C11: 02 01        lia      $01
1C13: DB           exam
1C14: 8F           lp       $0F
1C15: DB           exam
1C16: 37           rtn
1C17: 62 04        tsim     $04
1C19: 39 4D        jrzm     $1BCD
1C1B: 2D 41        jrm      $1BDB
1C1D: 02 01        lia      $01
1C1F: 89           lp       $09
1C20: DB           exam
1C21: 37           rtn
1C22: 8E           lp       $0E
1C23: 61 08        orim     $08
1C25: 93           lp       $13
1C26: 62 08        tsim     $08
1C28: 38 09        jrzp     $1C32
1C2A: 60 F7        anim     $F7
1C2C: 61 14        orim     $14
1C2E: 02 02        lia      $02
1C30: 2D 12        jrm      $1C1F
1C32: 62 01        tsim     $01
1C34: 28 20        jrnzp    $1C55
1C36: 62 04        tsim     $04
1C38: 38 14        jrzp     $1C4D
1C3A: 62 10        tsim     $10
1C3C: 38 02        jrzp     $1C3F
1C3E: 37           rtn
1C3F: 61 10        orim     $10
1C41: 62 02        tsim     $02
1C43: 89           lp       $09
1C44: 59           ldm
1C45: 38 04        jrzp     $1C4A
1C47: 90           lp       $10
1C48: DB           exam
1C49: 37           rtn
1C4A: 8F           lp       $0F
1C4B: DB           exam
1C4C: 37           rtn
1C4D: 61 15        orim     $15
1C4F: 02 00        lia      $00
1C51: 89           lp       $09
1C52: DB           exam
1C53: 2D 70        jrm      $1BE4
1C55: 62 04        tsim     $04
1C57: 39 7D        jrzm     $1BDB
1C59: 2D 20        jrm      $1C3A
1C5B: 62 0A        tsim     $0A
1C5D: 29 83        jrnzm    $1BDB
1C5F: 61 02        orim     $02
1C61: 62 04        tsim     $04
1C63: 39 89        jrzm     $1BDB
1C65: 62 10        tsim     $10
1C67: 29 8D        jrnzm    $1BDB
1C69: 89           lp       $09
1C6A: 63 00        cpim     $00
1C6C: 39 92        jrzm     $1BDB
1C6E: 2D 5F        jrm      $1C10
1C70: E2 2A        cal      $022A
1C72: A8           lp       $28
1C73: 10 C6 C6     lidp     $C6C6
1C76: 19           exwd
1C77: 37           rtn
1C78: A0           lp       $20
1C79: 00 07        lii      $07
1C7B: 2D 09        jrm      $1C73
1C7D: 03 19        lib      $19
1C7F: 4E 5F        wait     $5F
1C81: 6B 08        test     $08
1C83: 28 0B        jrnzp    $1C8F
1C85: C3           decb
1C86: 29 08        jrnzm    $1C7F
1C88: 48           inck
1C89: 2B 0D        jrncm    $1C7D
1C8B: C8           incl
1C8C: 2B 10        jrncm    $1C7D
1C8E: 37           rtn
1C8F: 95           lp       $15
1C90: 61 20        orim     $20
1C92: 37           rtn
1C93: 78 5A 31     call     $5A31
1C96: 10 C6 D8     lidp     $C6D8
1C99: D5 02        orid     $02
1C9B: 78 47 12     call     $4712
1C9E: F1 6E        cal      $116E
1CA0: 3A 0F        jrcp     $1CB0
1CA2: 78 5A 21     call     $5A21
1CA5: 3A 09        jrcp     $1CAF
1CA7: 9C           lp       $1C
1CA8: 13 18        liq      $18
1CAA: 00 03        lii      $03
1CAC: 08           mvw
1CAD: F8 99        cal      $1899
1CAF: 37           rtn
1CB0: A2           lp       $22
1CB1: 63 00        cpim     $00
1CB3: 28 0A        jrnzp    $1CBE
1CB5: F1 8F        cal      $118F
1CB7: 04           ix
1CB8: 9E           lp       $1E
1CB9: 1A           mvbd
1CBA: 04           ix
1CBB: F2 00        cal      $1200
1CBD: 37           rtn
1CBE: 78 5E E9     call     $5EE9
1CC1: 3B 13        jrcm     $1CAF
1CC3: F1 8F        cal      $118F
1CC5: 78 5E 77     call     $5E77
1CC8: 3B 1A        jrcm     $1CAF
1CCA: 78 5A 2A     call     $5A2A
1CCD: 2D 27        jrm      $1CA7
1CCF: 00 03        lii      $03
1CD1: 8E           lp       $0E
1CD2: 02 00        lia      $00
1CD4: 1E           film
1CD5: 8E           lp       $0E
1CD6: 10 C6 F8     lidp     $C6F8
1CD9: 19           exwd
1CDA: 11 D2        lidl     $D2
1CDC: 8E           lp       $0E
1CDD: 19           exwd
1CDE: 37           rtn
1CDF: 24           ixl
1CE0: DB           exam
1CE1: 50           incp
1CE2: C3           decb
1CE3: 29 05        jrnzm    $1CDF
1CE5: 37           rtn
1CE6: E2 2A        cal      $022A
1CE8: A8           lp       $28
1CE9: 00 01        lii      $01
1CEB: 63 90        cpim     $90
1CED: 3A 23        jrcp     $1D11
1CEF: A9           lp       $29
1CF0: 61 04        orim     $04
1CF2: 1D           slw
1CF3: 50           incp
1CF4: 02 00        lia      $00
1CF6: 00 00        lii      $00
1CF8: DB           exam
1CF9: 0D           sbn
1CFA: A8           lp       $28
1CFB: 59           ldm
1CFC: 34           push
1CFD: 83           lp       $03
1CFE: 58           swp
1CFF: 64 0F        ania     $0F
1D01: D1           rc
1D02: 5A           sl
1D03: DA           exab
1D04: 59           ldm
1D05: 5A           sl
1D06: 5A           sl
1D07: 44           adm
1D08: 5B           pop
1D09: 64 0F        ania     $0F
1D0B: 44           adm
1D0C: 59           ldm
1D0D: 8D           lp       $0D
1D0E: DB           exam
1D0F: 59           ldm
1D10: 37           rtn
1D11: 50           incp
1D12: 1D           slw
1D13: 2D 1A        jrm      $1CFA
1D15: 1D           slw
1D16: 50           incp
1D17: 02 00        lia      $00
1D19: DB           exam
1D1A: 65 40        oria     $40
1D1C: 26           iys
1D1D: C3           decb
1D1E: 37           rtn
1D1F: 8A           lp       $0A
1D20: 59           ldm
1D21: 84           lp       $04
1D22: DB           exam
1D23: 02 F8        lia      $F8
1D25: 85           lp       $05
1D26: DB           exam
1D27: 93           lp       $13
1D28: 62 01        tsim     $01
1D2A: 10 C6 E7     lidp     $C6E7
1D2D: 38 10        jrzp     $1D3E
1D2F: 57           ldd
1D30: 74 0C        adia     $0C
1D32: 83           lp       $03
1D33: DA           exab
1D34: 45           sbm
1D35: DA           exab
1D36: 52           std
1D37: 78 69 6F     call     $696F
1D3A: 2A 11        jrncp    $1D4C
1D3C: D1           rc
1D3D: 37           rtn
1D3E: 62 02        tsim     $02
1D40: 29 0A        jrnzm    $1D37
1D42: 02 18        lia      $18
1D44: 83           lp       $03
1D45: DA           exab
1D46: 45           sbm
1D47: 2B 13        jrncm    $1D35
1D49: F7 1F        cal      $171F
1D4B: 37           rtn
1D4C: F7 1B        cal      $171B
1D4E: 37           rtn
1D4F: A9           lp       $29
1D50: 02 00        lia      $00
1D52: DB           exam
1D53: 88           lp       $08
1D54: DB           exam
1D55: 37           rtn
1D56: 86           lp       $06
1D57: 59           ldm
1D58: 8B           lp       $0B
1D59: DB           exam
1D5A: 59           ldm
1D5B: 37           rtn
1D5C: DA           exab
1D5D: 8A           lp       $0A
1D5E: 59           ldm
1D5F: 83           lp       $03
1D60: 45           sbm
1D61: 37           rtn
1D62: 8F           lp       $0F
1D63: 63 02        cpim     $02
1D65: 2A 7F        jrncp    $1DE5
1D67: 02 0C        lia      $0C
1D69: 03 F8        lib      $F8
1D6B: F1 F5        cal      $11F5
1D6D: 78 6B 61     call     $6B61
1D70: 78 6B 35     call     $6B35
1D73: 78 5D 4F     call     $5D4F
1D76: 03 01        lib      $01
1D78: 78 6B 66     call     $6B66
1D7B: 8F           lp       $0F
1D7C: 63 00        cpim     $00
1D7E: 38 53        jrzp     $1DD2
1D80: 50           incp
1D81: 63 00        cpim     $00
1D83: 38 0A        jrzp     $1D8E
1D85: 06           iy
1D86: 59           ldm
1D87: 43           deca
1D88: 38 05        jrzp     $1D8E
1D8A: DA           exab
1D8B: 78 6B 66     call     $6B66
1D8E: 93           lp       $13
1D8F: 62 01        tsim     $01
1D91: 38 19        jrzp     $1DAB
1D93: 86           lp       $06
1D94: 59           ldm
1D95: DA           exab
1D96: 8A           lp       $0A
1D97: 59           ldm
1D98: 83           lp       $03
1D99: 45           sbm
1D9A: 63 09        cpim     $09
1D9C: 3A 0E        jrcp     $1DAB
1D9E: 02 0C        lia      $0C
1DA0: 03 F8        lib      $F8
1DA2: F1 F5        cal      $11F5
1DA4: 78 6B 61     call     $6B61
1DA7: 02 08        lia      $08
1DA9: 86           lp       $06
1DAA: 44           adm
1DAB: 02 4B        lia      $4B
1DAD: 26           iys
1DAE: 88           lp       $08
1DAF: 62 40        tsim     $40
1DB1: 02 11        lia      $11
1DB3: 38 03        jrzp     $1DB7
1DB5: 02 36        lia      $36
1DB7: 26           iys
1DB8: 2C 01        jrp      $1DBA
1DBA: 02 00        lia      $00
1DBC: A7           lp       $27
1DBD: DB           exam
1DBE: 00 01        lii      $01
1DC0: 03 02        lib      $02
1DC2: A8           lp       $28
1DC3: 78 5D 15     call     $5D15
1DC6: 29 05        jrnzm    $1DC2
1DC8: 78 5D 56     call     $5D56
1DCB: 78 5D 5C     call     $5D5C
1DCE: 78 5D 1F     call     $5D1F
1DD1: 37           rtn
1DD2: 06           iy
1DD3: 03 09        lib      $09
1DD5: 78 6B 66     call     $6B66
1DD8: F1 72        cal      $1172
1DDA: 67 40        cpia     $40
1DDC: 28 04        jrnzp    $1DE1
1DDE: 25           dxl
1DDF: 39 06        jrzm     $1DDA
1DE1: F1 77        cal      $1177
1DE3: 2D 56        jrm      $1D8E
1DE5: 03 0E        lib      $0E
1DE7: 8F           lp       $0F
1DE8: 59           ldm
1DE9: 83           lp       $03
1DEA: 45           sbm
1DEB: DA           exab
1DEC: 03 F8        lib      $F8
1DEE: F1 F5        cal      $11F5
1DF0: 78 6B 61     call     $6B61
1DF3: 02 0C        lia      $0C
1DF5: 03 F8        lib      $F8
1DF7: F1 F5        cal      $11F5
1DF9: 2D 8A        jrm      $1D70
1DFB: F1 6E        cal      $116E
1DFD: 3A 6D        jrcp     $1E6B
1DFF: E1 FF        cal      $01FF
1E01: F1 89        cal      $1189
1E03: 24           ixl
1E04: 67 FF        cpia     $FF
1E06: 38 5B        jrzp     $1E62
1E08: 04           ix
1E09: 24           ixl
1E0A: 67 12        cpia     $12
1E0C: 38 08        jrzp     $1E15
1E0E: 24           ixl
1E0F: 67 00        cpia     $00
1E11: 29 04        jrnzm    $1E0E
1E13: 2D 11        jrm      $1E03
1E15: 02 43        lia      $43
1E17: 03 F8        lib      $F8
1E19: F1 EE        cal      $11EE
1E1B: 02 D0        lia      $D0
1E1D: 26           iys
1E1E: 04           ix
1E1F: 84           lp       $04
1E20: 59           ldm
1E21: 26           iys
1E22: 85           lp       $05
1E23: 59           ldm
1E24: 26           iys
1E25: 05           dx
1E26: 88           lp       $08
1E27: 02 00        lia      $00
1E29: DB           exam
1E2A: 24           ixl
1E2B: 67 12        cpia     $12
1E2D: 38 08        jrzp     $1E36
1E2F: 67 00        cpia     $00
1E31: 38 04        jrzp     $1E36
1E33: 48           inck
1E34: 2B 0B        jrncm    $1E2A
1E36: 88           lp       $08
1E37: 59           ldm
1E38: 26           iys
1E39: 06           iy
1E3A: 86           lp       $06
1E3B: 10 C6 F5     lidp     $C6F5
1E3E: 53           mvdm
1E3F: F1 C7        cal      $11C7
1E41: EB DC        cal      $0BDC
1E43: F1 D2        cal      $11D2
1E45: A2           lp       $22
1E46: 63 10        cpim     $10
1E48: 38 0B        jrzp     $1E54
1E4A: E2 0F        cal      $020F
1E4C: 05           dx
1E4D: 24           ixl
1E4E: 67 00        cpia     $00
1E50: 29 43        jrnzm    $1E0E
1E52: 2D 50        jrm      $1E03
1E54: 25           dxl
1E55: 67 12        cpia     $12
1E57: 29 04        jrnzm    $1E54
1E59: 9A           lp       $1A
1E5A: 05           dx
1E5B: 05           dx
1E5C: 1A           mvbd
1E5D: 98           lp       $18
1E5E: 13 04        liq      $04
1E60: 0A           mvb
1E61: 37           rtn
1E62: 85           lp       $05
1E63: 63 40        cpim     $40
1E65: 2A 4A        jrncp    $1EB0
1E67: F1 8F        cal      $118F
1E69: 2D 67        jrm      $1E03
1E6B: 78 5E E9     call     $5EE9
1E6E: 3A 41        jrcp     $1EB0
1E70: 96           lp       $16
1E71: 62 02        tsim     $02
1E73: 38 42        jrzp     $1EB6
1E75: F1 89        cal      $1189
1E77: 24           ixl
1E78: 67 FF        cpia     $FF
1E7A: 38 35        jrzp     $1EB0
1E7C: 78 5F 15     call     $5F15
1E7F: 2A 24        jrncp    $1EA4
1E81: 24           ixl
1E82: 67 E0        cpia     $E0
1E84: 3B 04        jrcm     $1E81
1E86: 67 FF        cpia     $FF
1E88: 38 27        jrzp     $1EB0
1E8A: 82           lp       $02
1E8B: 1A           mvbd
1E8C: 9B           lp       $1B
1E8D: 13 03        liq      $03
1E8F: 0F           sbw
1E90: 2A 1F        jrncp    $1EB0
1E92: 78 5F 26     call     $5F26
1E95: 3B 15        jrcm     $1E81
1E97: 2A 0C        jrncp    $1EA4
1E99: 2C 16        jrp      $1EB0
1E9B: 9A           lp       $1A
1E9C: 1A           mvbd
1E9D: 98           lp       $18
1E9E: 13 04        liq      $04
1EA0: 0A           mvb
1EA1: F7 13        cal      $1713
1EA3: 37           rtn
1EA4: 28 06        jrnzp    $1EAB
1EA6: 98           lp       $18
1EA7: 13 04        liq      $04
1EA9: 0A           mvb
1EAA: 37           rtn
1EAB: 78 5E A6     call     $5EA6
1EAE: 2D 0E        jrm      $1EA1
1EB0: 02 00        lia      $00
1EB2: 9A           lp       $1A
1EB3: DB           exam
1EB4: 2D 14        jrm      $1EA1
1EB6: 84           lp       $04
1EB7: 13 1C        liq      $1C
1EB9: 0A           mvb
1EBA: 25           dxl
1EBB: 67 E0        cpia     $E0
1EBD: 3B 04        jrcm     $1EBA
1EBF: 78 5F 15     call     $5F15
1EC2: 3B 42        jrcm     $1E81
1EC4: 39 1F        jrzm     $1EA6
1EC6: 25           dxl
1EC7: 67 E0        cpia     $E0
1EC9: 3B 04        jrcm     $1EC6
1ECB: 67 FF        cpia     $FF
1ECD: 38 14        jrzp     $1EE2
1ECF: 82           lp       $02
1ED0: 1A           mvbd
1ED1: 9B           lp       $1B
1ED2: 13 03        liq      $03
1ED4: 0F           sbw
1ED5: 3A 0C        jrcp     $1EE2
1ED7: 38 0A        jrzp     $1EE2
1ED9: 78 5F 26     call     $5F26
1EDC: 39 37        jrzm     $1EA6
1EDE: 2B 19        jrncm    $1EC6
1EE0: 3B 60        jrcm     $1E81
1EE2: 24           ixl
1EE3: 67 E0        cpia     $E0
1EE5: 3B 04        jrcm     $1EE2
1EE7: 2D 4D        jrm      $1E9B
1EE9: A8           lp       $28
1EEA: 00 01        lii      $01
1EEC: 02 00        lia      $00
1EEE: 1E           film
1EEF: A0           lp       $20
1EF0: 63 90        cpim     $90
1EF2: 2A 21        jrncp    $1F14
1EF4: 63 00        cpim     $00
1EF6: 28 1C        jrnzp    $1F13
1EF8: A1           lp       $21
1EF9: 62 08        tsim     $08
1EFB: 28 17        jrnzp    $1F13
1EFD: 59           ldm
1EFE: 58           swp
1EFF: 67 03        cpia     $03
1F01: 2A 11        jrncp    $1F13
1F03: A8           lp       $28
1F04: 13 22        liq      $22
1F06: 0A           mvb
1F07: 75 03        sbia     $03
1F09: A8           lp       $28
1F0A: 1C           srw
1F0B: 42           inca
1F0C: 2B 04        jrncm    $1F09
1F0E: A8           lp       $28
1F0F: D1           rc
1F10: 61 E0        orim     $E0
1F12: 37           rtn
1F13: D0           sc
1F14: 37           rtn
1F15: 9A           lp       $1A
1F16: 1A           mvbd
1F17: 82           lp       $02
1F18: 13 1A        liq      $1A
1F1A: 0A           mvb
1F1B: 8C           lp       $0C
1F1C: 13 28        liq      $28
1F1E: 0A           mvb
1F1F: 00 01        lii      $01
1F21: 83           lp       $03
1F22: 13 0D        liq      $0D
1F24: 0F           sbw
1F25: 37           rtn
1F26: 9A           lp       $1A
1F27: 13 02        liq      $02
1F29: 0A           mvb
1F2A: 2D 0A        jrm      $1F21
1F2C: 78 5D 4F     call     $5D4F
1F2F: 8F           lp       $0F
1F30: 63 00        cpim     $00
1F32: 38 7C        jrzp     $1FAF
1F34: 63 01        cpim     $01
1F36: 28 57        jrnzp    $1F8E
1F38: F7 1F        cal      $171F
1F3A: 37           rtn
1F3B: F7 1F        cal      $171F
1F3D: 37           rtn
1F3E: 78 6B 4D     call     $6B4D
1F41: 90           lp       $10
1F42: 63 00        cpim     $00
1F44: 38 22        jrzp     $1F67
1F46: 59           ldm
1F47: 43           deca
1F48: 38 05        jrzp     $1F4E
1F4A: DA           exab
1F4B: 78 6B 66     call     $6B66
1F4E: 78 5D 56     call     $5D56
1F51: 78 5D 5C     call     $5D5C
1F54: 93           lp       $13
1F55: 62 01        tsim     $01
1F57: 38 96        jrzp     $1FEE
1F59: 83           lp       $03
1F5A: 63 0D        cpim     $0D
1F5C: 3A 91        jrcp     $1FEE
1F5E: 8A           lp       $0A
1F5F: 59           ldm
1F60: 74 0C        adia     $0C
1F62: 8B           lp       $0B
1F63: DB           exam
1F64: 59           ldm
1F65: 2D 15        jrm      $1F51
1F67: 07           dy
1F68: 2D 1B        jrm      $1F4E
1F6A: 02 0C        lia      $0C
1F6C: 03 F8        lib      $F8
1F6E: F1 F5        cal      $11F5
1F70: 8D           lp       $0D
1F71: 59           ldm
1F72: 88           lp       $08
1F73: DB           exam
1F74: 78 6B 35     call     $6B35
1F77: 90           lp       $10
1F78: 59           ldm
1F79: DA           exab
1F7A: C2           incb
1F7B: 02 40        lia      $40
1F7D: 26           iys
1F7E: C3           decb
1F7F: 39 32        jrzm     $1F4E
1F81: 06           iy
1F82: C3           decb
1F83: 39 36        jrzm     $1F4E
1F85: 49           deck
1F86: 39 3C        jrzm     $1F4B
1F88: C3           decb
1F89: 39 3C        jrzm     $1F4E
1F8B: 26           iys
1F8C: 2D 08        jrm      $1F85
1F8E: 02 0D        lia      $0D
1F90: DA           exab
1F91: 8F           lp       $0F
1F92: 59           ldm
1F93: 83           lp       $03
1F94: 45           sbm
1F95: DA           exab
1F96: 8A           lp       $0A
1F97: DB           exam
1F98: 88           lp       $08
1F99: 62 40        tsim     $40
1F9B: 29 32        jrnzm    $1F6A
1F9D: F1 7C        cal      $117C
1F9F: 05           dx
1FA0: 8A           lp       $0A
1FA1: 59           ldm
1FA2: 84           lp       $04
1FA3: C7           cpma
1FA4: 3B 6A        jrcm     $1F3B
1FA6: F1 77        cal      $1177
1FA8: 78 6B 35     call     $6B35
1FAB: 04           ix
1FAC: 04           ix
1FAD: 2D 70        jrm      $1F3E
1FAF: 88           lp       $08
1FB0: 62 40        tsim     $40
1FB2: 28 3F        jrnzp    $1FF2
1FB4: F1 7C        cal      $117C
1FB6: 05           dx
1FB7: F1 77        cal      $1177
1FB9: 78 6B 61     call     $6B61
1FBC: 78 6B 35     call     $6B35
1FBF: 04           ix
1FC0: 04           ix
1FC1: 78 6B 4D     call     $6B4D
1FC4: 03 09        lib      $09
1FC6: 78 6B 66     call     $6B66
1FC9: F1 72        cal      $1172
1FCB: 67 40        cpia     $40
1FCD: 28 04        jrnzp    $1FD2
1FCF: 25           dxl
1FD0: 2D 06        jrm      $1FCB
1FD2: F1 77        cal      $1177
1FD4: 78 5D 56     call     $5D56
1FD7: 78 5D 5C     call     $5D5C
1FDA: 93           lp       $13
1FDB: 62 01        tsim     $01
1FDD: 38 10        jrzp     $1FEE
1FDF: 83           lp       $03
1FE0: 63 0D        cpim     $0D
1FE2: 3A 0B        jrcp     $1FEE
1FE4: 8A           lp       $0A
1FE5: 59           ldm
1FE6: 74 0C        adia     $0C
1FE8: 67 0E        cpia     $0E
1FEA: 3B B0        jrcm     $1F3B
1FEC: 03 0C        lib      $0C
1FEE: 78 5D 1F     call     $5D1F
1FF1: 37           rtn
1FF2: 02 0C        lia      $0C
1FF4: 03 F8        lib      $F8
1FF6: F1 F5        cal      $11F5
1FF8: 78 6B 61     call     $6B61
1FFB: 78 6B 35     call     $6B35
1FFE: 8D           lp       $0D
1FFF: 59           ldm
2000: 88           lp       $08
2001: DB           exam
2002: 02 40        lia      $40
2004: 26           iys
2005: 03 09        lib      $09
2007: 06           iy
2008: 49           deck
2009: 39 44        jrzm     $1FC6
200B: 26           iys
200C: C3           decb
200D: 29 06        jrnzm    $2008
200F: 78 5C CF     call     $5CCF
2012: F1 6E        cal      $116E
2014: 2A 3B        jrncp    $2050
2016: 10 F8 20     lidp     $F820
2019: 02 11        lia      $11
201B: 00 17        lii      $17
201D: 1F           fild
201E: 93           lp       $13
201F: 60 FC        anim     $FC
2021: 61 80        orim     $80
2023: 10 C6 E7     lidp     $C6E7
2026: D4 00        anid     $00
2028: 78 68 B5     call     $68B5
202B: 10 F8 20     lidp     $F820
202E: A0           lp       $20
202F: 00 17        lii      $17
2031: 19           exwd
2032: 10 F8 3C     lidp     $F83C
2035: D6 02        tsid     $02
2037: 38 06        jrzp     $203E
2039: 78 7D 77     call     $7D77
203C: 3A 0F        jrcp     $204C
203E: F1 6A        cal      $116A
2040: D6 01        tsid     $01
2042: 38 09        jrzp     $204C
2044: F2 00        cal      $1200
2046: 78 69 F9     call     $69F9
2049: D1           rc
204A: F8 99        cal      $1899
204C: 78 62 F1     call     $62F1
204F: 37           rtn
2050: F2 00        cal      $1200
2052: 78 60 AA     call     $60AA
2055: 24           ixl
2056: 34           push
2057: 02 00        lia      $00
2059: 52           std
205A: 10 F8 3C     lidp     $F83C
205D: D6 02        tsid     $02
205F: 38 12        jrzp     $2072
2061: 02 20        lia      $20
2063: 88           lp       $08
2064: DB           exam
2065: 78 60 A3     call     $60A3
2068: 78 6A 82     call     $6A82
206B: 3A 1E        jrcp     $208A
206D: 95           lp       $15
206E: 62 20        tsim     $20
2070: 28 11        jrnzp    $2082
2072: F1 6A        cal      $116A
2074: D6 01        tsid     $01
2076: 38 0B        jrzp     $2082
2078: 02 20        lia      $20
207A: 88           lp       $08
207B: DB           exam
207C: 78 60 A3     call     $60A3
207F: 78 69 C7     call     $69C7
2082: 78 60 AA     call     $60AA
2085: 5B           pop
2086: 04           ix
2087: 52           std
2088: 2D 3F        jrm      $204A
208A: 78 60 AA     call     $60AA
208D: 5B           pop
208E: 04           ix
208F: 52           std
2090: D0           sc
2091: 2D 49        jrm      $2049
2093: 88           lp       $08
2094: 59           ldm
2095: 8A           lp       $0A
2096: C7           cpma
2097: 28 06        jrnzp    $209E
2099: 86           lp       $06
209A: 10 C6 E9     lidp     $C6E9
209D: 53           mvdm
209E: 30           stp
209F: 59           ldm
20A0: FF BC        cal      $1FBC
20A2: 37           rtn
20A3: 84           lp       $04
20A4: 10 C6 CB     lidp     $C6CB
20A7: 1A           mvbd
20A8: 05           dx
20A9: 37           rtn
20AA: 78 60 A3     call     $60A3
20AD: 10 C6 CD     lidp     $C6CD
20B0: 57           ldd
20B1: 84           lp       $04
20B2: 44           adm
20B3: 50           incp
20B4: 02 00        lia      $00
20B6: C4           adcm
20B7: 37           rtn
20B8: 78 6A D3     call     $6AD3
20BB: 93           lp       $13
20BC: 60 FC        anim     $FC
20BE: 04           ix
20BF: 10 C6 F1     lidp     $C6F1
20C2: 84           lp       $04
20C3: 53           mvdm
20C4: 05           dx
20C5: 24           ixl
20C6: 93           lp       $13
20C7: 67 00        cpia     $00
20C9: 38 F7        jrzp     $21C1
20CB: 67 12        cpia     $12
20CD: 38 E1        jrzp     $21AF
20CF: 62 01        tsim     $01
20D1: 28 D7        jrnzp    $21A9
20D3: 62 02        tsim     $02
20D5: 28 D3        jrnzp    $21A9
20D7: 67 51        cpia     $51
20D9: 3A B8        jrcp     $2192
20DB: 67 6B        cpia     $6B
20DD: 2A B4        jrncp    $2192
20DF: 8E           lp       $0E
20E0: 13 04        liq      $04
20E2: 0A           mvb
20E3: 8A           lp       $0A
20E4: DB           exam
20E5: 59           ldm
20E6: F1 95        cal      $1195
20E8: 75 51        sbia     $51
20EA: 5A           sl
20EB: 34           push
20EC: 95           lp       $15
20ED: 62 80        tsim     $80
20EF: 38 DF        jrzp     $21CF
20F1: 10 C6 D6     lidp     $C6D6
20F4: 57           ldd
20F5: 85           lp       $05
20F6: DB           exam
20F7: 02 2F        lia      $2F
20F9: 84           lp       $04
20FA: DB           exam
20FB: 5B           pop
20FC: 44           adm
20FD: 24           ixl
20FE: 67 00        cpia     $00
2100: 38 3A        jrzp     $213B
2102: 78 61 F1     call     $61F1
2105: F1 95        cal      $1195
2107: 24           ixl
2108: 67 4A        cpia     $4A
210A: 38 73        jrzp     $217E
210C: 67 11        cpia     $11
210E: 39 08        jrzm     $2107
2110: 67 10        cpia     $10
2112: 39 0C        jrzm     $2107
2114: F1 95        cal      $1195
2116: DA           exab
2117: 83           lp       $03
2118: 24           ixl
2119: C7           cpma
211A: 39 16        jrzm     $2105
211C: 67 6B        cpia     $6B
211E: 2A 16        jrncp    $2135
2120: 24           ixl
2121: 67 6B        cpia     $6B
2123: 3B 04        jrcm     $2120
2125: 04           ix
2126: 04           ix
2127: 24           ixl
2128: 66 10        tsia     $10
212A: 28 10        jrnzp    $213B
212C: 04           ix
212D: F1 95        cal      $1195
212F: 84           lp       $04
2130: 13 0E        liq      $0E
2132: 0A           mvb
2133: 2D 2D        jrm      $2107
2135: 26           iys
2136: F1 95        cal      $1195
2138: 05           dx
2139: 2C 4F        jrp      $2189
213B: 85           lp       $05
213C: 63 40        cpim     $40
213E: 2A 2C        jrncp    $216B
2140: 02 00        lia      $00
2142: 84           lp       $04
2143: DB           exam
2144: 85           lp       $05
2145: 70 08        adim     $08
2147: 63 40        cpim     $40
2149: 05           dx
214A: 2A 09        jrncp    $2154
214C: 78 68 7D     call     $687D
214F: 2A 08        jrncp    $2158
2151: 04           ix
2152: 2D 13        jrm      $2140
2154: 02 40        lia      $40
2156: 85           lp       $05
2157: DB           exam
2158: 8A           lp       $0A
2159: 59           ldm
215A: 75 51        sbia     $51
215C: 5A           sl
215D: 74 2F        adia     $2F
215F: 84           lp       $04
2160: DB           exam
2161: 24           ixl
2162: 67 00        cpia     $00
2164: 39 2A        jrzm     $213B
2166: 78 61 F1     call     $61F1
2169: 2D 3D        jrm      $212D
216B: 8A           lp       $0A
216C: 59           ldm
216D: 26           iys
216E: 84           lp       $04
216F: 13 0E        liq      $0E
2171: 0A           mvb
2172: 2D AE        jrm      $20C5
2174: 24           ixl
2175: 67 6B        cpia     $6B
2177: 3B 04        jrcm     $2174
2179: 26           iys
217A: F1 95        cal      $1195
217C: 2C 0C        jrp      $2189
217E: F1 95        cal      $1195
2180: 24           ixl
2181: 67 6B        cpia     $6B
2183: 3B 10        jrcm     $2174
2185: 26           iys
2186: F1 95        cal      $1195
2188: 05           dx
2189: 67 D3        cpia     $D3
218B: 29 C7        jrnzm    $20C5
218D: 93           lp       $13
218E: 61 02        orim     $02
2190: 2D CC        jrm      $20C5
2192: 67 11        cpia     $11
2194: 39 D0        jrzm     $20C5
2196: 67 10        cpia     $10
2198: 39 D4        jrzm     $20C5
219A: 67 32        cpia     $32
219C: 38 36        jrzp     $21D3
219E: 67 33        cpia     $33
21A0: 38 3A        jrzp     $21DB
21A2: 26           iys
21A3: 67 D3        cpia     $D3
21A5: 39 19        jrzm     $218D
21A7: 2D E3        jrm      $20C5
21A9: 67 10        cpia     $10
21AB: 39 E7        jrzm     $20C5
21AD: 2D 0C        jrm      $21A2
21AF: 62 02        tsim     $02
21B1: 38 03        jrzp     $21B5
21B3: 2D 12        jrm      $21A2
21B5: 62 01        tsim     $01
21B7: 38 05        jrzp     $21BD
21B9: 60 FE        anim     $FE
21BB: 2D 1A        jrm      $21A2
21BD: 61 01        orim     $01
21BF: 2D 1E        jrm      $21A2
21C1: 26           iys
21C2: 10 C6 F1     lidp     $C6F1
21C5: 57           ldd
21C6: 86           lp       $06
21C7: C7           cpma
21C8: 28 05        jrnzp    $21CE
21CA: 11 DA        lidl     $DA
21CC: D4 DF        anid     $DF
21CE: 37           rtn
21CF: 02 40        lia      $40
21D1: 2D DD        jrm      $20F5
21D3: 24           ixl
21D4: 67 34        cpia     $34
21D6: 38 11        jrzp     $21E8
21D8: 25           dxl
21D9: 2D 38        jrm      $21A2
21DB: 24           ixl
21DC: 67 34        cpia     $34
21DE: 38 0D        jrzp     $21EC
21E0: 67 32        cpia     $32
21E2: 29 0B        jrnzm    $21D8
21E4: 02 84        lia      $84
21E6: 2D 45        jrm      $21A2
21E8: 02 82        lia      $82
21EA: 2D 49        jrm      $21A2
21EC: 02 83        lia      $83
21EE: 2D 4D        jrm      $21A2
21F0: 24           ixl
21F1: DA           exab
21F2: 24           ixl
21F3: 84           lp       $04
21F4: 13 02        liq      $02
21F6: 0A           mvb
21F7: 37           rtn
21F8: 84           lp       $04
21F9: 13 18        liq      $18
21FB: 0A           mvb
21FC: 05           dx
21FD: 78 63 45     call     $6345
2200: 24           ixl
2201: 67 00        cpia     $00
2203: 38 04        jrzp     $2208
2205: 26           iys
2206: 29 07        jrnzm    $2200
2208: 26           iys
2209: F1 9A        cal      $119A
220B: 24           ixl
220C: 05           dx
220D: 67 40        cpia     $40
220F: 3A 05        jrcp     $2215
2211: 67 4A        cpia     $4A
2213: 3A 04        jrcp     $2218
2215: F1 A1        cal      $11A1
2217: 37           rtn
2218: 78 62 72     call     $6272
221B: 02 20        lia      $20
221D: 88           lp       $08
221E: DB           exam
221F: 89           lp       $09
2220: 02 05        lia      $05
2222: DB           exam
2223: 10 C6 EA     lidp     $C6EA
2226: 57           ldd
2227: 43           deca
2228: DA           exab
2229: DA           exab
222A: 84           lp       $04
222B: C7           cpma
222C: DA           exab
222D: 88           lp       $08
222E: 59           ldm
222F: 28 05        jrnzp    $2235
2231: 10 C6 E9     lidp     $C6E9
2234: 52           std
2235: 30           stp
2236: 24           ixl
2237: 67 40        cpia     $40
2239: 3A 0C        jrcp     $2246
223B: 67 4A        cpia     $4A
223D: 2A 08        jrncp    $2246
223F: DB           exam
2240: 48           inck
2241: C9           decl
2242: 29 1A        jrnzm    $2229
2244: 50           incp
2245: 04           ix
2246: 10 C6 D9     lidp     $C6D9
2249: D6 08        tsid     $08
224B: 02 1D        lia      $1D
224D: 28 03        jrnzp    $2251
224F: 02 11        lia      $11
2251: DB           exam
2252: 89           lp       $09
2253: 70 12        adim     $12
2255: 48           inck
2256: 05           dx
2257: 10 C6 D7     lidp     $C6D7
225A: D6 04        tsid     $04
225C: 28 0F        jrnzp    $226C
225E: F1 6A        cal      $116A
2260: D6 20        tsid     $20
2262: 38 05        jrzp     $2268
2264: 78 62 79     call     $6279
2267: 37           rtn
2268: 78 69 C7     call     $69C7
226B: 37           rtn
226C: D5 10        orid     $10
226E: 78 6A 6B     call     $6A6B
2271: 37           rtn
2272: 02 11        lia      $11
2274: 00 17        lii      $17
2276: A0           lp       $20
2277: 1E           film
2278: 37           rtn
2279: 78 6A D3     call     $6AD3
227C: 93           lp       $13
227D: 61 01        orim     $01
227F: 10 C6 EA     lidp     $C6EA
2282: 57           ldd
2283: 43           deca
2284: 84           lp       $04
2285: C7           cpma
2286: 2A 38        jrncp    $22BF
2288: 8C           lp       $0C
2289: 13 04        liq      $04
228B: 0A           mvb
228C: 84           lp       $04
228D: DB           exam
228E: 04           ix
228F: 04           ix
2290: 25           dxl
2291: 67 6B        cpia     $6B
2293: 3A 33        jrcp     $22C7
2295: 8B           lp       $0B
2296: DB           exam
2297: 59           ldm
2298: 67 82        cpia     $82
229A: 3A 05        jrcp     $22A0
229C: 67 85        cpia     $85
229E: 3A 34        jrcp     $22D3
22A0: F1 77        cal      $1177
22A2: 93           lp       $13
22A3: 60 FE        anim     $FE
22A5: 78 68 4B     call     $684B
22A8: F1 72        cal      $1172
22AA: 3A 18        jrcp     $22C3
22AC: 80           lp       $00
22AD: DB           exam
22AE: 40           inci
22AF: 80           lp       $00
22B0: 59           ldm
22B1: 89           lp       $09
22B2: 45           sbm
22B3: 2A 03        jrncp    $22B7
22B5: 2C 09        jrp      $22BF
22B7: 38 06        jrzp     $22BE
22B9: 78 62 D7     call     $62D7
22BC: 29 2D        jrnzm    $2290
22BE: 05           dx
22BF: 78 69 C7     call     $69C7
22C2: 37           rtn
22C3: 02 02        lia      $02
22C5: 2D 15        jrm      $22B1
22C7: 02 01        lia      $01
22C9: 93           lp       $13
22CA: 62 01        tsim     $01
22CC: 29 1C        jrnzm    $22B1
22CE: 61 01        orim     $01
22D0: 42           inca
22D1: 2D 21        jrm      $22B1
22D3: 02 02        lia      $02
22D5: 2D 0D        jrm      $22C9
22D7: 8C           lp       $0C
22D8: 59           ldm
22D9: 42           inca
22DA: 84           lp       $04
22DB: C7           cpma
22DC: 37           rtn
22DD: 78 5C CF     call     $5CCF
22E0: 93           lp       $13
22E1: 60 7E        anim     $7E
22E3: 61 02        orim     $02
22E5: 10 C6 E7     lidp     $C6E7
22E8: D4 00        anid     $00
22EA: 78 68 B5     call     $68B5
22ED: 78 62 F1     call     $62F1
22F0: 37           rtn
22F1: 10 C6 D2     lidp     $C6D2
22F4: 8E           lp       $0E
22F5: 00 03        lii      $03
22F7: 18           mvwd
22F8: 10 C6 F8     lidp     $C6F8
22FB: 8E           lp       $0E
22FC: 19           exwd
22FD: 37           rtn
22FE: 78 63 17     call     $6317
2301: 10 C6 D7     lidp     $C6D7
2304: D4 EF        anid     $EF
2306: 11 D9        lidl     $D9
2308: D4 7D        anid     $7D
230A: 11 D8        lidl     $D8
230C: D4 FE        anid     $FE
230E: 95           lp       $15
230F: 60 D0        anim     $D0
2311: 61 10        orim     $10
2313: 96           lp       $16
2314: 60 14        anim     $14
2316: 37           rtn
2317: F1 6A        cal      $116A
2319: D4 C0        anid     $C0
231B: 37           rtn
231C: 78 62 FE     call     $62FE
231F: 9C           lp       $1C
2320: 13 18        liq      $18
2322: 0A           mvb
2323: 13 1A        liq      $1A
2325: 0A           mvb
2326: 02 00        lia      $00
2328: FF B1        cal      $1FB1
232A: FA CF        cal      $1ACF
232C: 37           rtn
232D: 10 C6 EB     lidp     $C6EB
2330: 86           lp       $06
2331: 1B           exbd
2332: 11 ED        lidl     $ED
2334: 93           lp       $13
2335: 62 04        tsim     $04
2337: 28 05        jrnzp    $233D
2339: 02 88        lia      $88
233B: 52           std
233C: 37           rtn
233D: 62 12        tsim     $12
233F: 39 05        jrzm     $233B
2341: 02 00        lia      $00
2343: 2D 09        jrm      $233B
2345: 78 68 8E     call     $688E
2348: F1 F9        cal      $11F9
234A: 24           ixl
234B: 64 0F        ania     $0F
234D: 38 13        jrzp     $2361
234F: 65 40        oria     $40
2351: 26           iys
2352: 24           ixl
2353: 34           push
2354: 58           swp
2355: 64 0F        ania     $0F
2357: 65 40        oria     $40
2359: 26           iys
235A: 5B           pop
235B: 64 0F        ania     $0F
235D: 65 40        oria     $40
235F: 26           iys
2360: 37           rtn
2361: 24           ixl
2362: 34           push
2363: 64 F0        ania     $F0
2365: 39 0C        jrzm     $235A
2367: 2D 14        jrm      $2354
2369: 10 C6 C4     lidp     $C6C4
236C: 84           lp       $04
236D: 1A           mvbd
236E: 8A           lp       $0A
236F: 24           ixl
2370: C7           cpma
2371: 38 0A        jrzp     $237C
2373: 67 00        cpia     $00
2375: 38 05        jrzp     $237B
2377: 67 FF        cpia     $FF
2379: 29 0B        jrnzm    $236F
237B: D0           sc
237C: 37           rtn
237D: 10 C6 FE     lidp     $C6FE
2380: 98           lp       $18
2381: 1A           mvbd
2382: 99           lp       $19
2383: 63 40        cpim     $40
2385: 2A 09        jrncp    $238F
2387: 10 20 07     lidp     $2007
238A: 57           ldd
238B: 67 00        cpia     $00
238D: 28 39        jrnzp    $23C7
238F: 10 C6 D9     lidp     $C6D9
2392: D5 08        orid     $08
2394: 11 DA        lidl     $DA
2396: D4 C0        anid     $C0
2398: D5 24        orid     $24
239A: F1 62        cal      $1162
239C: D5 02        orid     $02
239E: 78 63 CA     call     $63CA
23A1: 84           lp       $04
23A2: 13 18        liq      $18
23A4: 0A           mvb
23A5: 25           dxl
23A6: 67 E0        cpia     $E0
23A8: 3B 04        jrcm     $23A5
23AA: 05           dx
23AB: 78 63 45     call     $6345
23AE: 82           lp       $02
23AF: 13 04        liq      $04
23B1: 0A           mvb
23B2: 98           lp       $18
23B3: 15           sbb
23B4: 86           lp       $06
23B5: 59           ldm
23B6: 98           lp       $18
23B7: 44           adm
23B8: 59           ldm
23B9: 10 C6 EA     lidp     $C6EA
23BC: 52           std
23BD: 05           dx
23BE: 98           lp       $18
23BF: 13 04        liq      $04
23C1: 0A           mvb
23C2: 04           ix
23C3: 78 62 00     call     $6200
23C6: 37           rtn
23C7: F8 C5        cal      $18C5
23C9: 37           rtn
23CA: 02 CE        lia      $CE
23CC: 03 FF        lib      $FF
23CE: 10 F8 B8     lidp     $F8B8
23D1: 82           lp       $02
23D2: 1B           exbd
23D3: 37           rtn
23D4: 02 FC        lia      $FC
23D6: 03 FF        lib      $FF
23D8: 2D 0B        jrm      $23CE
23DA: 84           lp       $04
23DB: 13 18        liq      $18
23DD: 0A           mvb
23DE: 24           ixl
23DF: 67 E0        cpia     $E0
23E1: 3B 04        jrcm     $23DE
23E3: 67 FF        cpia     $FF
23E5: 38 16        jrzp     $23FC
23E7: 98           lp       $18
23E8: 13 04        liq      $04
23EA: 0A           mvb
23EB: 10 C6 D9     lidp     $C6D9
23EE: D5 08        orid     $08
23F0: F1 6A        cal      $116A
23F2: D4 DF        anid     $DF
23F4: F1 62        cal      $1162
23F6: D5 02        orid     $02
23F8: 78 61 F8     call     $61F8
23FB: 37           rtn
23FC: 85           lp       $05
23FD: 63 80        cpim     $80
23FF: 2A 08        jrncp    $2408
2401: F1 8F        cal      $118F
2403: 24           ixl
2404: 67 FF        cpia     $FF
2406: 29 20        jrnzm    $23E7
2408: F1 62        cal      $1162
240A: D4 FD        anid     $FD
240C: 37           rtn
240D: 84           lp       $04
240E: 13 18        liq      $18
2410: 0A           mvb
2411: 25           dxl
2412: 67 E0        cpia     $E0
2414: 3B 04        jrcm     $2411
2416: 67 FF        cpia     $FF
2418: 29 32        jrnzm    $23E7
241A: 85           lp       $05
241B: 63 80        cpim     $80
241D: 3B 16        jrcm     $2408
241F: 78 6A 51     call     $6A51
2422: 3B 1B        jrcm     $2408
2424: 10 20 07     lidp     $2007
2427: D6 FF        tsid     $FF
2429: 29 22        jrnzm    $2408
242B: 10 20 08     lidp     $2008
242E: 84           lp       $04
242F: 1A           mvbd
2430: 2D 20        jrm      $2411
2432: 96           lp       $16
2433: 62 02        tsim     $02
2435: 28 1A        jrnzp    $2450
2437: 24           ixl
2438: 67 12        cpia     $12
243A: 28 11        jrnzp    $244C
243C: 24           ixl
243D: 67 00        cpia     $00
243F: 38 0C        jrzp     $244C
2441: 67 12        cpia     $12
2443: 29 08        jrnzm    $243C
2445: 24           ixl
2446: 67 1D        cpia     $1D
2448: 38 07        jrzp     $2450
244A: 67 00        cpia     $00
244C: 05           dx
244D: 7E 65 AF     jpz      $65AF
2450: 24           ixl
2451: 05           dx
2452: 67 FF        cpia     $FF
2454: 7E 66 74     jpz      $6674
2457: 67 00        cpia     $00
2459: 7E 66 74     jpz      $6674
245C: 67 6B        cpia     $6B
245E: 7F 66 ED     jpc      $66ED
2461: 67 90        cpia     $90
2463: 2A FC        jrncp    $2560
2465: 67 76        cpia     $76
2467: 7F 65 69     jpc      $6569
246A: 96           lp       $16
246B: 62 02        tsim     $02
246D: 38 32        jrzp     $24A0
246F: 10 F8 3C     lidp     $F83C
2472: D6 02        tsid     $02
2474: 38 29        jrzp     $249E
2476: 78 6B 6F     call     $6B6F
2479: 38 1F        jrzp     $2499
247B: 78 6A 82     call     $6A82
247E: 7F 67 35     jpc      $6735
2481: 95           lp       $15
2482: 62 20        tsim     $20
2484: 38 19        jrzp     $249E
2486: 60 DF        anim     $DF
2488: 78 67 92     call     $6792
248B: F8 C5        cal      $18C5
248D: D0           sc
248E: F1 E0        cal      $11E0
2490: 37           rtn
2491: F1 6A        cal      $116A
2493: D6 04        tsid     $04
2495: 39 0B        jrzm     $248B
2497: 2D 0B        jrm      $248D
2499: 10 F8 3C     lidp     $F83C
249C: D4 FD        anid     $FD
249E: F1 9A        cal      $119A
24A0: 96           lp       $16
24A1: 62 02        tsim     $02
24A3: 7E 67 3A     jpz      $673A
24A6: 78 67 63     call     $6763
24A9: F2 05        cal      $1205
24AB: 7F 66 7B     jpc      $667B
24AE: 78 67 77     call     $6777
24B1: 78 5C 70     call     $5C70
24B4: 24           ixl
24B5: 67 00        cpia     $00
24B7: 28 1D        jrnzp    $24D5
24B9: F1 6A        cal      $116A
24BB: D5 01        orid     $01
24BD: 78 60 0F     call     $600F
24C0: 7F 67 35     jpc      $6735
24C3: 95           lp       $15
24C4: 62 20        tsim     $20
24C6: 7C 67 12     jpnz     $6712
24C9: F2 00        cal      $1200
24CB: F1 E0        cal      $11E0
24CD: 37           rtn
24CE: 10 F8 3C     lidp     $F83C
24D1: D4 FD        anid     $FD
24D3: 2C 1E        jrp      $24F2
24D5: 67 1B        cpia     $1B
24D7: 7C 67 33     jpnz     $6733
24DA: 10 F8 3C     lidp     $F83C
24DD: D6 02        tsid     $02
24DF: 38 12        jrzp     $24F2
24E1: 78 6B 6F     call     $6B6F
24E4: 39 17        jrzm     $24CE
24E6: 78 60 0F     call     $600F
24E9: 7F 67 35     jpc      $6735
24EC: 95           lp       $15
24ED: 62 20        tsim     $20
24EF: 7C 67 12     jpnz     $6712
24F2: 24           ixl
24F3: 05           dx
24F4: 67 6B        cpia     $6B
24F6: 3A 30        jrcp     $2527
24F8: 67 90        cpia     $90
24FA: 2A 08        jrncp    $2503
24FC: 67 76        cpia     $76
24FE: 2B 5F        jrncm    $24A0
2500: 79 67 33     jp       $6733
2503: 67 A0        cpia     $A0
2505: 7F 67 33     jpc      $6733
2508: 67 B0        cpia     $B0
250A: 3B 6B        jrcm     $24A0
250C: 67 B2        cpia     $B2
250E: 39 6F        jrzm     $24A0
2510: 67 BD        cpia     $BD
2512: 39 73        jrzm     $24A0
2514: 67 BF        cpia     $BF
2516: 39 77        jrzm     $24A0
2518: 79 67 33     jp       $6733
251B: 78 67 77     call     $6777
251E: 79 67 3F     jp       $673F
2521: 78 67 77     call     $6777
2524: 79 66 6B     jp       $666B
2527: 67 51        cpia     $51
2529: 3B 8A        jrcm     $24A0
252B: 78 67 87     call     $6787
252E: 93           lp       $13
252F: 60 9F        anim     $9F
2531: 78 67 63     call     $6763
2534: 78 59 EA     call     $59EA
2537: 3B 1D        jrcm     $251B
2539: 78 67 77     call     $6777
253C: 34           push
253D: 24           ixl
253E: 67 34        cpia     $34
2540: 5B           pop
2541: 38 06        jrzp     $2548
2543: 78 67 8C     call     $678C
2546: 2D A7        jrm      $24A0
2548: 78 67 63     call     $6763
254B: 78 54 FF     call     $54FF
254E: 3B 34        jrcm     $251B
2550: 78 67 77     call     $6777
2553: 96           lp       $16
2554: 62 02        tsim     $02
2556: 29 A3        jrnzm    $24B4
2558: 24           ixl
2559: 67 1B        cpia     $1B
255B: 39 31        jrzm     $252B
255D: 05           dx
255E: 2C 50        jrp      $25AF
2560: 67 B0        cpia     $B0
2562: 7D 67 4B     jpnc     $674B
2565: 67 A0        cpia     $A0
2567: 2B FE        jrncm    $246A
2569: 8B           lp       $0B
256A: DB           exam
256B: 04           ix
256C: FA CF        cal      $1ACF
256E: 78 6A D3     call     $6AD3
2571: 78 68 4B     call     $684B
2574: 7F 66 D8     jpc      $66D8
2577: 03 00        lib      $00
2579: 84           lp       $04
257A: 14           adb
257B: 04           ix
257C: 78 59 E0     call     $59E0
257F: 24           ixl
2580: 26           iys
2581: 24           ixl
2582: 26           iys
2583: 04           ix
2584: 96           lp       $16
2585: 62 02        tsim     $02
2587: FA CF        cal      $1ACF
2589: 28 F6        jrnzp    $2680
258B: D6 20        tsid     $20
258D: 38 E6        jrzp     $2674
258F: 78 67 63     call     $6763
2592: 78 C6 DB     call     $C6DB
2595: 3B 75        jrcm     $2521
2597: 78 67 77     call     $6777
259A: 3A D0        jrcp     $266B
259C: 10 C6 D8     lidp     $C6D8
259F: D6 01        tsid     $01
25A1: 95           lp       $15
25A2: 7C 67 1A     jpnz     $671A
25A5: 62 2E        tsim     $2E
25A7: 7C 67 27     jpnz     $6727
25AA: 96           lp       $16
25AB: 62 60        tsim     $60
25AD: 28 B3        jrnzp    $2661
25AF: 78 68 A3     call     $68A3
25B2: 24           ixl
25B3: 67 1D        cpia     $1D
25B5: 96           lp       $16
25B6: 38 84        jrzp     $263B
25B8: 67 00        cpia     $00
25BA: 28 B9        jrnzp    $2674
25BC: 62 08        tsim     $08
25BE: 38 67        jrzp     $2626
25C0: 9C           lp       $1C
25C1: 13 18        liq      $18
25C3: 0A           mvb
25C4: 13 1A        liq      $1A
25C6: 0A           mvb
25C7: F8 99        cal      $1899
25C9: 95           lp       $15
25CA: 62 20        tsim     $20
25CC: 28 23        jrnzp    $25F0
25CE: 96           lp       $16
25CF: 60 F7        anim     $F7
25D1: 62 05        tsim     $05
25D3: 28 31        jrnzp    $2605
25D5: 6B 08        test     $08
25D7: 28 1A        jrnzp    $25F2
25D9: 12 5D        lip      $5D
25DB: 60 F0        anim     $F0
25DD: 61 08        orim     $08
25DF: DD           outb
25E0: 4E 0F        wait     $0F
25E2: CC           inb
25E3: 66 07        tsia     $07
25E5: 28 0C        jrnzp    $25F2
25E7: 9E           lp       $1E
25E8: 63 FF        cpim     $FF
25EA: 7C 64 37     jpnz     $6437
25ED: 79 67 5D     jp       $675D
25F0: 60 DF        anim     $DF
25F2: 78 67 92     call     $6792
25F5: 10 C7 02     lidp     $C702
25F8: 84           lp       $04
25F9: 1B           exbd
25FA: 9E           lp       $1E
25FB: 11 04        lidl     $04
25FD: 1B           exbd
25FE: 78 4E 35     call     $4E35
2601: F1 E0        cal      $11E0
2603: D0           sc
2604: 37           rtn
2605: 60 FE        anim     $FE
2607: 95           lp       $15
2608: 61 01        orim     $01
260A: 10 C7 02     lidp     $C702
260D: 84           lp       $04
260E: 1B           exbd
260F: 9E           lp       $1E
2610: 11 04        lidl     $04
2612: 1B           exbd
2613: 02 B0        lia      $B0
2615: 03 C7        lib      $C7
2617: 78 68 97     call     $6897
261A: 02 1D        lia      $1D
261C: 26           iys
261D: 02 00        lia      $00
261F: 26           iys
2620: F1 AF        cal      $11AF
2622: F1 E0        cal      $11E0
2624: D1           rc
2625: 37           rtn
2626: 04           ix
2627: 9E           lp       $1E
2628: 1A           mvbd
2629: 82           lp       $02
262A: 13 1E        liq      $1E
262C: 0A           mvb
262D: 00 01        lii      $01
262F: 8B           lp       $0B
2630: 13 03        liq      $03
2632: 0F           sbw
2633: 3A 04        jrcp     $2638
2635: 9E           lp       $1E
2636: 61 FF        orim     $FF
2638: 04           ix
2639: 2D 71        jrm      $25C9
263B: 62 08        tsim     $08
263D: 29 7E        jrnzm    $25C0
263F: 95           lp       $15
2640: 62 20        tsim     $20
2642: 29 53        jrnzm    $25F0
2644: 2D 70        jrm      $25D5
2646: 10 C7 02     lidp     $C702
2649: 84           lp       $04
264A: 1B           exbd
264B: 11 04        lidl     $04
264D: 9E           lp       $1E
264E: 1B           exbd
264F: 11 02        lidl     $02
2651: 8A           lp       $0A
2652: 00 03        lii      $03
2654: 18           mvwd
2655: 10 C6 FE     lidp     $C6FE
2658: 8A           lp       $0A
2659: 19           exwd
265A: 96           lp       $16
265B: 60 FE        anim     $FE
265D: F1 E0        cal      $11E0
265F: D0           sc
2660: 37           rtn
2661: 62 20        tsim     $20
2663: 7C 64 8B     jpnz     $648B
2666: 60 BF        anim     $BF
2668: 79 64 50     jp       $6450
266B: 10 C6 D8     lidp     $C6D8
266E: D6 01        tsid     $01
2670: 28 D5        jrnzp    $2746
2672: 2C 03        jrp      $2676
2674: F7 05        cal      $1705
2676: 78 48 3D     call     $483D
2679: D0           sc
267A: 37           rtn
267B: 78 67 77     call     $6777
267E: 2C B6        jrp      $2735
2680: D6 40        tsid     $40
2682: 38 B0        jrzp     $2733
2684: 78 67 63     call     $6763
2687: 78 C6 DB     call     $C6DB
268A: 3B 10        jrcm     $267B
268C: 78 67 77     call     $6777
268F: 95           lp       $15
2690: 62 20        tsim     $20
2692: 28 7F        jrnzp    $2712
2694: 24           ixl
2695: 67 00        cpia     $00
2697: 28 9B        jrnzp    $2733
2699: 96           lp       $16
269A: 62 10        tsim     $10
269C: 7E 64 91     jpz      $6491
269F: 60 FD        anim     $FD
26A1: 95           lp       $15
26A2: 62 0E        tsim     $0E
26A4: 38 2E        jrzp     $26D3
26A6: 62 06        tsim     $06
26A8: 38 1D        jrzp     $26C6
26AA: A0           lp       $20
26AB: 02 13        lia      $13
26AD: DB           exam
26AE: A1           lp       $21
26AF: 02 11        lia      $11
26B1: 00 16        lii      $16
26B3: 1E           film
26B4: F1 62        cal      $1162
26B6: D4 E1        anid     $E1
26B8: 78 69 F9     call     $69F9
26BB: F1 6A        cal      $116A
26BD: D4 C0        anid     $C0
26BF: 11 F1        lidl     $F1
26C1: 02 B0        lia      $B0
26C3: 52           std
26C4: 2D 68        jrm      $265D
26C6: 60 F1        anim     $F1
26C8: F1 6A        cal      $116A
26CA: D4 C0        anid     $C0
26CC: F1 E5        cal      $11E5
26CE: F1 BD        cal      $11BD
26D0: 79 65 AF     jp       $65AF
26D3: 78 63 1C     call     $631C
26D6: 2D F0        jrm      $25E7
26D8: FA CF        cal      $1ACF
26DA: 78 51 26     call     $5126
26DD: 96           lp       $16
26DE: 62 02        tsim     $02
26E0: 29 4D        jrnzm    $2694
26E2: 79 65 9C     jp       $659C
26E5: 10 F8 3C     lidp     $F83C
26E8: D4 FD        anid     $FD
26EA: 79 65 2B     jp       $652B
26ED: 67 51        cpia     $51
26EF: 7F 64 6A     jpc      $646A
26F2: 96           lp       $16
26F3: 62 02        tsim     $02
26F5: 7E 65 2B     jpz      $652B
26F8: 10 F8 3C     lidp     $F83C
26FB: D6 02        tsid     $02
26FD: 7E 65 2B     jpz      $652B
2700: 78 6B 6F     call     $6B6F
2703: 39 1F        jrzm     $26E5
2705: 78 6A 82     call     $6A82
2708: 3A 2C        jrcp     $2735
270A: F1 9A        cal      $119A
270C: 95           lp       $15
270D: 62 20        tsim     $20
270F: 7E 65 2B     jpz      $652B
2712: 60 DF        anim     $DF
2714: 78 67 92     call     $6792
2717: 79 64 8B     jp       $648B
271A: D4 FE        anid     $FE
271C: 62 20        tsim     $20
271E: 7E 64 37     jpz      $6437
2721: 78 46 E7     call     $46E7
2724: 79 64 8B     jp       $648B
2727: 62 20        tsim     $20
2729: 28 03        jrnzp    $272D
272B: 2D E6        jrm      $2646
272D: 78 51 26     call     $5126
2730: 79 65 AF     jp       $65AF
2733: F7 05        cal      $1705
2735: 78 6A 29     call     $6A29
2738: D0           sc
2739: 37           rtn
273A: 04           ix
273B: F7 27        cal      $1727
273D: 2D C8        jrm      $2676
273F: 96           lp       $16
2740: 62 02        tsim     $02
2742: 39 D8        jrzm     $266B
2744: 2D 10        jrm      $2735
2746: 78 46 E7     call     $46E7
2749: 2D 15        jrm      $2735
274B: 67 B2        cpia     $B2
274D: 7E 64 6A     jpz      $646A
2750: 67 BD        cpia     $BD
2752: 7E 64 6A     jpz      $646A
2755: 67 BF        cpia     $BF
2757: 7E 64 6A     jpz      $646A
275A: 79 65 69     jp       $6569
275D: 95           lp       $15
275E: 60 EF        anim     $EF
2760: 79 64 8B     jp       $648B
2763: DA           exab
2764: 22           ldr
2765: 10 C6 A3     lidp     $C6A3
2768: 00 03        lii      $03
276A: 74 02        adia     $02
276C: 30           stp
276D: 19           exwd
276E: 22           ldr
276F: 31           stq
2770: 74 04        adia     $04
2772: 30           stp
2773: 0A           mvb
2774: 32           str
2775: DA           exab
2776: 37           rtn
2777: DA           exab
2778: 22           ldr
2779: 31           stq
277A: 75 04        sbia     $04
277C: 30           stp
277D: 0A           mvb
277E: 10 C6 A3     lidp     $C6A3
2781: 00 03        lii      $03
2783: 18           mvwd
2784: 32           str
2785: DA           exab
2786: 37           rtn
2787: 10 C6 B1     lidp     $C6B1
278A: 84           lp       $04
278B: 1B           exbd
278C: 10 C6 B1     lidp     $C6B1
278F: 84           lp       $04
2790: 1A           mvbd
2791: 37           rtn
2792: F1 62        cal      $1162
2794: D4 E0        anid     $E0
2796: D5 01        orid     $01
2798: 11 BF        lidl     $BF
279A: 02 07        lia      $07
279C: 52           std
279D: 37           rtn
279E: DA           exab
279F: 84           lp       $04
27A0: C7           cpma
27A1: 28 05        jrnzp    $27A7
27A3: 11 E9        lidl     $E9
27A5: 88           lp       $08
27A6: 53           mvdm
27A7: DA           exab
27A8: 37           rtn
27A9: 78 6A D3     call     $6AD3
27AC: 93           lp       $13
27AD: 61 01        orim     $01
27AF: 24           ixl
27B0: 84           lp       $04
27B1: 63 00        cpim     $00
27B3: 38 78        jrzp     $282C
27B5: DA           exab
27B6: 10 C6 EA     lidp     $C6EA
27B9: 57           ldd
27BA: DA           exab
27BB: 67 6B        cpia     $6B
27BD: 3A 65        jrcp     $2823
27BF: 67 82        cpia     $82
27C1: 3A 23        jrcp     $27E5
27C3: 67 85        cpia     $85
27C5: 2A 1F        jrncp    $27E5
27C7: 93           lp       $13
27C8: 60 FE        anim     $FE
27CA: 78 67 9E     call     $679E
27CD: DA           exab
27CE: 88           lp       $08
27CF: 59           ldm
27D0: 30           stp
27D1: DA           exab
27D2: 67 82        cpia     $82
27D4: 38 70        jrzp     $2845
27D6: DA           exab
27D7: 02 33        lia      $33
27D9: DB           exam
27DA: 50           incp
27DB: DA           exab
27DC: 67 83        cpia     $83
27DE: 38 61        jrzp     $2840
27E0: 02 32        lia      $32
27E2: DB           exam
27E3: 2C 2F        jrp      $2813
27E5: F1 77        cal      $1177
27E7: 8B           lp       $0B
27E8: DB           exam
27E9: 93           lp       $13
27EA: 62 01        tsim     $01
27EC: 28 08        jrnzp    $27F5
27EE: 88           lp       $08
27EF: 59           ldm
27F0: 30           stp
27F1: 02 11        lia      $11
27F3: DB           exam
27F4: 48           inck
27F5: 93           lp       $13
27F6: 61 01        orim     $01
27F8: 78 67 9E     call     $679E
27FB: 78 68 4B     call     $684B
27FE: 88           lp       $08
27FF: 59           ldm
2800: 30           stp
2801: 3A 1B        jrcp     $281D
2803: 24           ixl
2804: 67 6B        cpia     $6B
2806: 2A 05        jrncp    $280C
2808: DB           exam
2809: 50           incp
280A: 2D 08        jrm      $2803
280C: 02 11        lia      $11
280E: DB           exam
280F: 20           ldp
2810: F1 72        cal      $1172
2812: 30           stp
2813: 20           ldp
2814: 42           inca
2815: 67 38        cpia     $38
2817: 2A 27        jrncp    $283F
2819: 88           lp       $08
281A: DB           exam
281B: 2D 6D        jrm      $27AF
281D: 02 4D        lia      $4D
281F: DB           exam
2820: 50           incp
2821: 2D 16        jrm      $280C
2823: 93           lp       $13
2824: 60 FE        anim     $FE
2826: 78 67 9E     call     $679E
2829: 67 00        cpia     $00
282B: DA           exab
282C: 88           lp       $08
282D: 59           ldm
282E: 30           stp
282F: 38 05        jrzp     $2835
2831: DA           exab
2832: DB           exam
2833: 2D 21        jrm      $2813
2835: 02 4F        lia      $4F
2837: DB           exam
2838: 50           incp
2839: 20           ldp
283A: 67 38        cpia     $38
283C: 3B 08        jrcm     $2835
283E: 05           dx
283F: 37           rtn
2840: 02 34        lia      $34
2842: DB           exam
2843: 2D 31        jrm      $2813
2845: 02 32        lia      $32
2847: DB           exam
2848: 50           incp
2849: 2D 0A        jrm      $2840
284B: 78 6A F9     call     $6AF9
284E: 2A 1D        jrncp    $286C
2850: 8B           lp       $0B
2851: 59           ldm
2852: 75 7D        sbia     $7D
2854: 3A 17        jrcp     $286C
2856: 5A           sl
2857: 74 64        adia     $64
2859: 03 40        lib      $40
285B: 2A 02        jrncp    $285E
285D: C2           incb
285E: F1 F1        cal      $11F1
2860: 24           ixl
2861: 67 00        cpia     $00
2863: 38 09        jrzp     $286D
2865: DA           exab
2866: 24           ixl
2867: F1 F1        cal      $11F1
2869: 57           ldd
286A: 64 0F        ania     $0F
286C: 37           rtn
286D: D0           sc
286E: 37           rtn
286F: 85           lp       $05
2870: 59           ldm
2871: DA           exab
2872: 8B           lp       $0B
2873: 59           ldm
2874: 75 6B        sbia     $6B
2876: 3B 0B        jrcm     $286C
2878: 5A           sl
2879: 74 64        adia     $64
287B: 2D 21        jrm      $285B
287D: 00 04        lii      $04
287F: 03 50        lib      $50
2881: 83           lp       $03
2882: 24           ixl
2883: C7           cpma
2884: 38 03        jrzp     $2888
2886: D0           sc
2887: 37           rtn
2888: C2           incb
2889: 41           deci
288A: 29 09        jrnzm    $2882
288C: D1           rc
288D: 37           rtn
288E: 10 C7 B0     lidp     $C7B0
2891: 02 00        lia      $00
2893: 00 4F        lii      $4F
2895: 1F           fild
2896: 37           rtn
2897: F1 F5        cal      $11F5
2899: 02 00        lia      $00
289B: 03 C7        lib      $C7
289D: F1 F1        cal      $11F1
289F: 78 63 4A     call     $634A
28A2: 37           rtn
28A3: F2 00        cal      $1200
28A5: 8A           lp       $0A
28A6: 13 1E        liq      $1E
28A8: 0A           mvb
28A9: 10 C6 FE     lidp     $C6FE
28AC: 9C           lp       $1C
28AD: 00 03        lii      $03
28AF: 19           exwd
28B0: 9E           lp       $1E
28B1: 13 0A        liq      $0A
28B3: 0A           mvb
28B4: 37           rtn
28B5: 10 C6 F8     lidp     $C6F8
28B8: FA CF        cal      $1ACF
28BA: 8E           lp       $0E
28BB: 00 03        lii      $03
28BD: 18           mvwd
28BE: F1 6E        cal      $116E
28C0: 2A 55        jrncp    $2916
28C2: 10 F8 00     lidp     $F800
28C5: 02 11        lia      $11
28C7: 00 1B        lii      $1B
28C9: 1F           fild
28CA: 10 F8 0E     lidp     $F80E
28CD: 02 4A        lia      $4A
28CF: 52           std
28D0: 78 5C E6     call     $5CE6
28D3: 8F           lp       $0F
28D4: 63 00        cpim     $00
28D6: 28 2D        jrnzp    $2904
28D8: A9           lp       $29
28D9: 62 40        tsim     $40
28DB: 28 0B        jrnzp    $28E7
28DD: 67 0A        cpia     $0A
28DF: 3A 1F        jrcp     $28FF
28E1: 78 5D 62     call     $5D62
28E4: FA CF        cal      $1ACF
28E6: 37           rtn
28E7: B0           lp       $30
28E8: 00 05        lii      $05
28EA: 13 22        liq      $22
28EC: 08           mvw
28ED: 02 0A        lia      $0A
28EF: B0           lp       $30
28F0: 1C           srw
28F1: B5           lp       $35
28F2: 63 00        cpim     $00
28F4: 28 04        jrnzp    $28F9
28F6: 43           deca
28F7: 29 09        jrnzm    $28EF
28F9: 83           lp       $03
28FA: 44           adm
28FB: 63 0B        cpim     $0B
28FD: 2B 1D        jrncm    $28E1
28FF: 78 5F 2C     call     $5F2C
2902: 2D 1F        jrm      $28E4
2904: 8E           lp       $0E
2905: 62 08        tsim     $08
2907: 29 27        jrnzm    $28E1
2909: A9           lp       $29
290A: 62 40        tsim     $40
290C: 29 0E        jrnzm    $28FF
290E: 67 0A        cpia     $0A
2910: 3B 12        jrcm     $28FF
2912: F7 1F        cal      $171F
2914: 2D 31        jrm      $28E4
2916: A7           lp       $27
2917: 59           ldm
2918: DA           exab
2919: 84           lp       $04
291A: 13 25        liq      $25
291C: 0A           mvb
291D: 05           dx
291E: 93           lp       $13
291F: 62 01        tsim     $01
2921: 38 09        jrzp     $292B
2923: DA           exab
2924: 67 0D        cpia     $0D
2926: 3A 03        jrcp     $292A
2928: 02 0C        lia      $0C
292A: DA           exab
292B: 91           lp       $11
292C: 63 00        cpim     $00
292E: 28 0B        jrnzp    $293A
2930: 93           lp       $13
2931: 62 80        tsim     $80
2933: 29 50        jrnzm    $28E4
2935: 78 69 6F     call     $696F
2938: 2C 33        jrp      $296C
293A: DA           exab
293B: C7           cpma
293C: 3A 2A        jrcp     $2967
293E: DA           exab
293F: 78 69 6F     call     $696F
2942: 3A 03        jrcp     $2946
2944: 2D 61        jrm      $28E4
2946: 91           lp       $11
2947: 59           ldm
2948: DA           exab
2949: A7           lp       $27
294A: 59           ldm
294B: 83           lp       $03
294C: 45           sbm
294D: 39 6A        jrzm     $28E4
294F: 02 4F        lia      $4F
2951: 88           lp       $08
2952: DB           exam
2953: 45           sbm
2954: 39 71        jrzm     $28E4
2956: 02 11        lia      $11
2958: 26           iys
2959: C3           decb
295A: 38 09        jrzp     $2964
295C: 49           deck
295D: 29 06        jrnzm    $2958
295F: 78 69 BC     call     $69BC
2962: 2C 09        jrp      $296C
2964: 49           deck
2965: 2D 07        jrm      $295F
2967: 59           ldm
2968: DA           exab
2969: 78 69 6F     call     $696F
296C: D1           rc
296D: 2D 8A        jrm      $28E4
296F: 93           lp       $13
2970: 62 80        tsim     $80
2972: 38 17        jrzp     $298A
2974: 83           lp       $03
2975: 63 00        cpim     $00
2977: 38 10        jrzp     $2988
2979: 10 C6 E7     lidp     $C6E7
297C: 57           ldd
297D: 74 20        adia     $20
297F: 86           lp       $06
2980: DB           exam
2981: 87           lp       $07
2982: 02 F8        lia      $F8
2984: DB           exam
2985: 07           dy
2986: FF B6        cal      $1FB6
2988: D0           sc
2989: 37           rtn
298A: 10 C6 E7     lidp     $C6E7
298D: 57           ldd
298E: 67 4F        cpia     $4F
2990: 3A 02        jrcp     $2993
2992: 37           rtn
2993: 34           push
2994: DA           exab
2995: 8A           lp       $0A
2996: DB           exam
2997: F1 F9        cal      $11F9
2999: 03 00        lib      $00
299B: 5B           pop
299C: 86           lp       $06
299D: 14           adb
299E: DA           exab
299F: 02 4F        lia      $4F
29A1: 88           lp       $08
29A2: DB           exam
29A3: DA           exab
29A4: 45           sbm
29A5: 8A           lp       $0A
29A6: 59           ldm
29A7: 67 00        cpia     $00
29A9: 38 12        jrzp     $29BC
29AB: DA           exab
29AC: 24           ixl
29AD: 26           iys
29AE: C3           decb
29AF: 38 0B        jrzp     $29BB
29B1: 49           deck
29B2: 29 07        jrnzm    $29AC
29B4: 02 4F        lia      $4F
29B6: 10 C6 E7     lidp     $C6E7
29B9: 52           std
29BA: 37           rtn
29BB: 49           deck
29BC: 02 4F        lia      $4F
29BE: 88           lp       $08
29BF: DB           exam
29C0: 45           sbm
29C1: 10 C6 E7     lidp     $C6E7
29C4: 53           mvdm
29C5: D0           sc
29C6: 37           rtn
29C7: 78 67 A9     call     $67A9
29CA: F1 6A        cal      $116A
29CC: D6 01        tsid     $01
29CE: 28 05        jrnzp    $29D4
29D0: D6 20        tsid     $20
29D2: 28 07        jrnzp    $29DA
29D4: F1 62        cal      $1162
29D6: D4 FB        anid     $FB
29D8: 2C 20        jrp      $29F9
29DA: 11 E9        lidl     $E9
29DC: 57           ldd
29DD: 8A           lp       $0A
29DE: DB           exam
29DF: 59           ldm
29E0: 30           stp
29E1: F1 62        cal      $1162
29E3: D5 10        orid     $10
29E5: D4 FB        anid     $FB
29E7: 63 4F        cpim     $4F
29E9: 38 0C        jrzp     $29F6
29EB: D5 04        orid     $04
29ED: 10 C6 E8     lidp     $C6E8
29F0: 53           mvdm
29F1: 02 4C        lia      $4C
29F3: DB           exam
29F4: 2C 04        jrp      $29F9
29F6: 02 4E        lia      $4E
29F8: DB           exam
29F9: 02 00        lia      $00
29FB: 03 F8        lib      $F8
29FD: F1 F5        cal      $11F5
29FF: A0           lp       $20
2A00: 20           ldp
2A01: 88           lp       $08
2A02: DB           exam
2A03: 02 0C        lia      $0C
2A05: 89           lp       $09
2A06: DB           exam
2A07: 78 60 93     call     $6093
2A0A: 03 05        lib      $05
2A0C: FF B6        cal      $1FB6
2A0E: 48           inck
2A0F: C9           decl
2A10: 29 0A        jrnzm    $2A07
2A12: 02 7C        lia      $7C
2A14: 86           lp       $06
2A15: DB           exam
2A16: 02 0C        lia      $0C
2A18: 89           lp       $09
2A19: DB           exam
2A1A: 78 60 93     call     $6093
2A1D: 03 05        lib      $05
2A1F: 24           ixl
2A20: 27           dys
2A21: C3           decb
2A22: 29 04        jrnzm    $2A1F
2A24: 48           inck
2A25: C9           decl
2A26: 29 0D        jrnzm    $2A1A
2A28: 37           rtn
2A29: A0           lp       $20
2A2A: 00 17        lii      $17
2A2C: 02 11        lia      $11
2A2E: 1E           film
2A2F: F2 00        cal      $1200
2A31: 10 40 2B     lidp     $402B
2A34: A1           lp       $21
2A35: 00 04        lii      $04
2A37: 18           mvwd
2A38: 94           lp       $14
2A39: 60 7F        anim     $7F
2A3B: 61 40        orim     $40
2A3D: 59           ldm
2A3E: A7           lp       $27
2A3F: DB           exam
2A40: F1 62        cal      $1162
2A42: D4 E1        anid     $E1
2A44: 78 69 F9     call     $69F9
2A47: F1 6A        cal      $116A
2A49: D4 FA        anid     $FA
2A4B: D5 02        orid     $02
2A4D: 78 48 86     call     $4886
2A50: 37           rtn
2A51: 02 00        lia      $00
2A53: 03 20        lib      $20
2A55: F1 F1        cal      $11F1
2A57: 78 68 7D     call     $687D
2A5A: 3A 0F        jrcp     $2A6A
2A5C: 10 20 04     lidp     $2004
2A5F: D6 FF        tsid     $FF
2A61: 38 07        jrzp     $2A69
2A63: 10 20 05     lidp     $2005
2A66: 84           lp       $04
2A67: 1A           mvbd
2A68: 37           rtn
2A69: D0           sc
2A6A: 37           rtn
2A6B: 88           lp       $08
2A6C: 63 24        cpim     $24
2A6E: 38 26        jrzp     $2A95
2A70: 03 03        lib      $03
2A72: A2           lp       $22
2A73: 59           ldm
2A74: 50           incp
2A75: DB           exam
2A76: 51           decp
2A77: 51           decp
2A78: C3           decb
2A79: 29 07        jrnzm    $2A73
2A7B: 48           inck
2A7C: 50           incp
2A7D: 02 11        lia      $11
2A7F: DB           exam
2A80: 2D 16        jrm      $2A6B
2A82: 95           lp       $15
2A83: 60 DF        anim     $DF
2A85: 10 C6 D7     lidp     $C6D7
2A88: D6 10        tsid     $10
2A8A: A0           lp       $20
2A8B: 38 06        jrzp     $2A92
2A8D: 00 03        lii      $03
2A8F: 02 11        lia      $11
2A91: 1E           film
2A92: 20           ldp
2A93: 88           lp       $08
2A94: DB           exam
2A95: 78 67 A9     call     $67A9
2A98: 67 39        cpia     $39
2A9A: 3A 09        jrcp     $2AA4
2A9C: 28 28        jrnzp    $2AC5
2A9E: 43           deca
2A9F: 30           stp
2AA0: 63 11        cpim     $11
2AA2: 28 22        jrnzp    $2AC5
2AA4: 24           ixl
2AA5: 67 00        cpia     $00
2AA7: 38 14        jrzp     $2ABC
2AA9: 05           dx
2AAA: 78 7D 77     call     $7D77
2AAD: 3A 11        jrcp     $2ABF
2AAF: 95           lp       $15
2AB0: 62 20        tsim     $20
2AB2: 28 0C        jrnzp    $2ABF
2AB4: 6B 08        test     $08
2AB6: 39 32        jrzm     $2A85
2AB8: 61 20        orim     $20
2ABA: 2C 04        jrp      $2ABF
2ABC: 78 7D 77     call     $7D77
2ABF: 10 C6 D7     lidp     $C6D7
2AC2: D4 EF        anid     $EF
2AC4: 37           rtn
2AC5: 88           lp       $08
2AC6: 59           ldm
2AC7: 30           stp
2AC8: 02 4F        lia      $4F
2ACA: DB           exam
2ACB: 50           incp
2ACC: 20           ldp
2ACD: 67 38        cpia     $38
2ACF: 3B 08        jrcm     $2AC8
2AD1: 2D 29        jrm      $2AA9
2AD3: F1 C7        cal      $11C7
2AD5: 02 00        lia      $00
2AD7: 03 20        lib      $20
2AD9: F1 F1        cal      $11F1
2ADB: 78 68 7D     call     $687D
2ADE: 2A 07        jrncp    $2AE6
2AE0: 95           lp       $15
2AE1: 60 7F        anim     $7F
2AE3: F1 D2        cal      $11D2
2AE5: 37           rtn
2AE6: 84           lp       $04
2AE7: 02 03        lia      $03
2AE9: DB           exam
2AEA: 24           ixl
2AEB: 67 02        cpia     $02
2AED: 2B 0E        jrncm    $2AE0
2AEF: 95           lp       $15
2AF0: 61 80        orim     $80
2AF2: 10 C6 D6     lidp     $C6D6
2AF5: 85           lp       $05
2AF6: 53           mvdm
2AF7: 2D 15        jrm      $2AE3
2AF9: 95           lp       $15
2AFA: 62 80        tsim     $80
2AFC: 38 22        jrzp     $2B1F
2AFE: 10 C6 D6     lidp     $C6D6
2B01: 85           lp       $05
2B02: 55           mvmd
2B03: 78 68 6F     call     $686F
2B06: 2A 17        jrncp    $2B1E
2B08: 85           lp       $05
2B09: 70 08        adim     $08
2B0B: 63 08        cpim     $08
2B0D: 2A 11        jrncp    $2B1F
2B0F: 51           decp
2B10: 02 00        lia      $00
2B12: DB           exam
2B13: 05           dx
2B14: 78 68 7D     call     $687D
2B17: 3B 10        jrcm     $2B08
2B19: 78 68 6F     call     $686F
2B1C: 3B 15        jrcm     $2B08
2B1E: 37           rtn
2B1F: D0           sc
2B20: 37           rtn
2B21: 84           lp       $04
2B22: 03 00        lib      $00
2B24: 14           adb
2B25: 04           ix
2B26: 78 59 E0     call     $59E0
2B29: 24           ixl
2B2A: 26           iys
2B2B: 24           ixl
2B2C: 26           iys
2B2D: 78 C6 DB     call     $C6DB
2B30: 37           rtn
2B31: 02 36        lia      $36
2B33: 26           iys
2B34: 37           rtn
2B35: A1           lp       $21
2B36: 62 08        tsim     $08
2B38: 29 08        jrnzm    $2B31
2B3A: 8F           lp       $0F
2B3B: 63 00        cpim     $00
2B3D: 28 0D        jrnzp    $2B4B
2B3F: 93           lp       $13
2B40: 62 02        tsim     $02
2B42: 38 02        jrzp     $2B45
2B44: 06           iy
2B45: 86           lp       $06
2B46: 59           ldm
2B47: 8A           lp       $0A
2B48: DB           exam
2B49: 28 02        jrnzp    $2B4C
2B4B: 06           iy
2B4C: 37           rtn
2B4D: 03 01        lib      $01
2B4F: 78 6B 66     call     $6B66
2B52: 24           ixl
2B53: 67 1B        cpia     $1B
2B55: 38 07        jrzp     $2B5D
2B57: 67 4A        cpia     $4A
2B59: 29 0D        jrnzm    $2B4D
2B5B: 06           iy
2B5C: 37           rtn
2B5D: 06           iy
2B5E: 04           ix
2B5F: 2D 13        jrm      $2B4D
2B61: 86           lp       $06
2B62: 59           ldm
2B63: 8A           lp       $0A
2B64: DB           exam
2B65: 37           rtn
2B66: 00 05        lii      $05
2B68: AE           lp       $2E
2B69: 78 5D 15     call     $5D15
2B6C: 29 05        jrnzm    $2B68
2B6E: 37           rtn
2B6F: 10 C6 BB     lidp     $C6BB
2B72: D6 04        tsid     $04
2B74: 37           rtn
2B75: F1 51        cal      $1151
2B77: 24           ixl
2B78: 67 CD        cpia     $CD
2B7A: 7E 6C F2     jpz      $6CF2
2B7D: 05           dx
2B7E: 10 C6 BC     lidp     $C6BC
2B81: D4 00        anid     $00
2B83: 24           ixl
2B84: 67 1B        cpia     $1B
2B86: 38 42        jrzp     $2BC9
2B88: 05           dx
2B89: F2 05        cal      $1205
2B8B: 3A 31        jrcp     $2BBD
2B8D: A0           lp       $20
2B8E: 63 00        cpim     $00
2B90: 28 2C        jrnzp    $2BBD
2B92: 10 C6 BC     lidp     $C6BC
2B95: A1           lp       $21
2B96: 63 20        cpim     $20
2B98: 38 0E        jrzp     $2BA7
2B9A: 63 30        cpim     $30
2B9C: 28 20        jrnzp    $2BBD
2B9E: A2           lp       $22
2B9F: 63 12        cpim     $12
2BA1: 28 1B        jrnzp    $2BBD
2BA3: D5 02        orid     $02
2BA5: 2C 0C        jrp      $2BB2
2BA7: A2           lp       $22
2BA8: 63 30        cpim     $30
2BAA: 38 07        jrzp     $2BB2
2BAC: 63 11        cpim     $11
2BAE: 28 0E        jrnzp    $2BBD
2BB0: D5 01        orid     $01
2BB2: 60 00        anim     $00
2BB4: E1 1B        cal      $011B
2BB6: 2A 06        jrncp    $2BBD
2BB8: 24           ixl
2BB9: 67 1B        cpia     $1B
2BBB: 38 0D        jrzp     $2BC9
2BBD: 02 01        lia      $01
2BBF: 2C 03        jrp      $2BC3
2BC1: 02 08        lia      $08
2BC3: 94           lp       $14
2BC4: DB           exam
2BC5: F1 44        cal      $1144
2BC7: D0           sc
2BC8: 37           rtn
2BC9: 24           ixl
2BCA: 10 C6 BC     lidp     $C6BC
2BCD: 67 1B        cpia     $1B
2BCF: 38 18        jrzp     $2BE8
2BD1: 67 5E        cpia     $5E
2BD3: 38 0F        jrzp     $2BE3
2BD5: 67 55        cpia     $55
2BD7: 38 09        jrzp     $2BE1
2BD9: 67 5F        cpia     $5F
2BDB: 29 1F        jrnzm    $2BBD
2BDD: D5 08        orid     $08
2BDF: 2C 03        jrp      $2BE3
2BE1: D5 04        orid     $04
2BE3: 24           ixl
2BE4: 67 1B        cpia     $1B
2BE6: 29 2A        jrnzm    $2BBD
2BE8: 24           ixl
2BE9: 67 1B        cpia     $1B
2BEB: 38 13        jrzp     $2BFF
2BED: 67 48        cpia     $48
2BEF: 38 0A        jrzp     $2BFA
2BF1: 67 47        cpia     $47
2BF3: 29 37        jrnzm    $2BBD
2BF5: 10 C6 BC     lidp     $C6BC
2BF8: D5 10        orid     $10
2BFA: 24           ixl
2BFB: 67 1B        cpia     $1B
2BFD: 29 41        jrnzm    $2BBD
2BFF: 24           ixl
2C00: 67 1B        cpia     $1B
2C02: 38 13        jrzp     $2C16
2C04: 67 41        cpia     $41
2C06: 38 0A        jrzp     $2C11
2C08: 67 42        cpia     $42
2C0A: 29 4E        jrnzm    $2BBD
2C0C: 10 C6 BC     lidp     $C6BC
2C0F: D5 20        orid     $20
2C11: 24           ixl
2C12: 67 1B        cpia     $1B
2C14: 29 58        jrnzm    $2BBD
2C16: 88           lp       $08
2C17: 60 00        anim     $00
2C19: 24           ixl
2C1A: 67 5B        cpia     $5B
2C1C: 38 1E        jrzp     $2C3B
2C1E: 67 54        cpia     $54
2C20: 38 23        jrzp     $2C44
2C22: 67 60        cpia     $60
2C24: 38 28        jrzp     $2C4D
2C26: 67 53        cpia     $53
2C28: 29 6C        jrnzm    $2BBD
2C2A: 24           ixl
2C2B: 67 59        cpia     $59
2C2D: 38 09        jrzp     $2C37
2C2F: 67 5F        cpia     $5F
2C31: 29 75        jrnzm    $2BBD
2C33: 61 10        orim     $10
2C35: 2C 1E        jrp      $2C54
2C37: 61 08        orim     $08
2C39: 2C 1A        jrp      $2C54
2C3B: 24           ixl
2C3C: 67 59        cpia     $59
2C3E: 29 82        jrnzm    $2BBD
2C40: 61 01        orim     $01
2C42: 2C 11        jrp      $2C54
2C44: 24           ixl
2C45: 67 5F        cpia     $5F
2C47: 29 8B        jrnzm    $2BBD
2C49: 61 02        orim     $02
2C4B: 2C 08        jrp      $2C54
2C4D: 24           ixl
2C4E: 67 5F        cpia     $5F
2C50: 29 94        jrnzm    $2BBD
2C52: 61 04        orim     $04
2C54: 24           ixl
2C55: 67 1B        cpia     $1B
2C57: 39 3F        jrzm     $2C19
2C59: 78 6C 82     call     $6C82
2C5C: 3B A0        jrcm     $2BBD
2C5E: 02 70        lia      $70
2C60: 78 7E 5B     call     $7E5B
2C63: 3A 1C        jrcp     $2C80
2C65: 10 C6 BC     lidp     $C6BC
2C68: 57           ldd
2C69: 78 7C 7D     call     $7C7D
2C6C: 88           lp       $08
2C6D: 59           ldm
2C6E: 78 6D 54     call     $6D54
2C71: 3A 0E        jrcp     $2C80
2C73: 10 C6 BC     lidp     $C6BC
2C76: 57           ldd
2C77: 11 B8        lidl     $B8
2C79: 52           std
2C7A: 11 B7        lidl     $B7
2C7C: 88           lp       $08
2C7D: 59           ldm
2C7E: 52           std
2C7F: D1           rc
2C80: 37           rtn
2C81: 24           ixl
2C82: 67 00        cpia     $00
2C84: 38 0C        jrzp     $2C91
2C86: 96           lp       $16
2C87: 62 02        tsim     $02
2C89: 28 05        jrnzp    $2C8F
2C8B: 67 1D        cpia     $1D
2C8D: 38 03        jrzp     $2C91
2C8F: D0           sc
2C90: 37           rtn
2C91: 05           dx
2C92: 10 C6 B5     lidp     $C6B5
2C95: 84           lp       $04
2C96: 1B           exbd
2C97: 11 B5        lidl     $B5
2C99: 84           lp       $04
2C9A: 1A           mvbd
2C9B: D1           rc
2C9C: 37           rtn
2C9D: B0           lp       $30
2C9E: 00 07        lii      $07
2CA0: 02 FF        lia      $FF
2CA2: 1E           film
2CA3: 37           rtn
2CA4: E2 21        cal      $0221
2CA6: 22           ldr
2CA7: DA           exab
2CA8: 02 30        lia      $30
2CAA: 32           str
2CAB: A8           lp       $28
2CAC: 5B           pop
2CAD: C7           cpma
2CAE: 28 0B        jrnzp    $2CBA
2CB0: 50           incp
2CB1: 20           ldp
2CB2: 67 30        cpia     $30
2CB4: 29 09        jrnzm    $2CAC
2CB6: D0           sc
2CB7: DA           exab
2CB8: 32           str
2CB9: 37           rtn
2CBA: D1           rc
2CBB: 2D 05        jrm      $2CB7
2CBD: F1 51        cal      $1151
2CBF: 02 2B        lia      $2B
2CC1: 78 7E 5B     call     $7E5B
2CC4: 3A 2C        jrcp     $2CF1
2CC6: 02 AF        lia      $AF
2CC8: 88           lp       $08
2CC9: DB           exam
2CCA: 10 C6 F7     lidp     $C6F7
2CCD: 57           ldd
2CCE: 43           deca
2CCF: 86           lp       $06
2CD0: DB           exam
2CD1: 02 C7        lia      $C7
2CD3: 87           lp       $07
2CD4: DB           exam
2CD5: 57           ldd
2CD6: 88           lp       $08
2CD7: 45           sbm
2CD8: 78 7D 2A     call     $7D2A
2CDB: 67 0D        cpia     $0D
2CDD: 38 05        jrzp     $2CE3
2CDF: F1 36        cal      $1136
2CE1: 2D 0A        jrm      $2CD8
2CE3: F1 44        cal      $1144
2CE5: 06           iy
2CE6: 86           lp       $06
2CE7: 59           ldm
2CE8: A7           lp       $27
2CE9: DB           exam
2CEA: 10 C6 F7     lidp     $C6F7
2CED: 57           ldd
2CEE: 45           sbm
2CEF: 07           dy
2CF0: D1           rc
2CF1: 37           rtn
2CF2: F1 51        cal      $1151
2CF4: 10 C6 B8     lidp     $C6B8
2CF7: 57           ldd
2CF8: 11 BC        lidl     $BC
2CFA: 52           std
2CFB: 88           lp       $08
2CFC: 60 00        anim     $00
2CFE: 24           ixl
2CFF: 2D A7        jrm      $2C59
2D01: F1 25        cal      $1125
2D03: 02 08        lia      $08
2D05: 2C 03        jrp      $2D09
2D07: 02 01        lia      $01
2D09: 94           lp       $14
2D0A: DB           exam
2D0B: F1 44        cal      $1144
2D0D: D0           sc
2D0E: 37           rtn
2D0F: F1 51        cal      $1151
2D11: 02 77        lia      $77
2D13: 78 7E 5B     call     $7E5B
2D16: 3A 17        jrcp     $2D2E
2D18: 78 7D 2A     call     $7D2A
2D1B: A8           lp       $28
2D1C: DB           exam
2D1D: 78 7D 2A     call     $7D2A
2D20: 67 0D        cpia     $0D
2D22: 29 22        jrnzm    $2D01
2D24: A9           lp       $29
2D25: 60 00        anim     $00
2D27: ED 42        cal      $0D42
2D29: F1 25        cal      $1125
2D2B: F1 44        cal      $1144
2D2D: D1           rc
2D2E: 37           rtn
2D2F: F1 51        cal      $1151
2D31: F2 05        cal      $1205
2D33: 3A 31        jrcp     $2D65
2D35: 78 6C 81     call     $6C81
2D38: 3B 32        jrcm     $2D07
2D3A: A4           lp       $24
2D3B: 63 D0        cpim     $D0
2D3D: 28 05        jrnzp    $2D43
2D3F: 02 09        lia      $09
2D41: 2D 39        jrm      $2D09
2D43: F0 DC        cal      $10DC
2D45: F7 37        cal      $1737
2D47: 3A 1D        jrcp     $2D65
2D49: F1 18        cal      $1118
2D4B: 02 71        lia      $71
2D4D: 78 7E 5B     call     $7E5B
2D50: 3A 14        jrcp     $2D65
2D52: A8           lp       $28
2D53: 59           ldm
2D54: 78 7C 7D     call     $7C7D
2D57: 02 0D        lia      $0D
2D59: 78 7C 7D     call     $7C7D
2D5C: 78 7C EE     call     $7CEE
2D5F: F1 44        cal      $1144
2D61: F1 25        cal      $1125
2D63: D1           rc
2D64: 37           rtn
2D65: D0           sc
2D66: 37           rtn
2D67: 78 6C 81     call     $6C81
2D6A: 2A 0D        jrncp    $2D78
2D6C: 2C 05        jrp      $2D72
2D6E: 02 08        lia      $08
2D70: 2C 03        jrp      $2D74
2D72: 02 01        lia      $01
2D74: 94           lp       $14
2D75: DB           exam
2D76: D0           sc
2D77: 37           rtn
2D78: 78 7E C2     call     $7EC2
2D7B: 2B 0E        jrncm    $2D6E
2D7D: F1 66        cal      $1166
2D7F: D4 80        anid     $80
2D81: D5 20        orid     $20
2D83: 2D 23        jrm      $2D61
2D85: 78 6C 81     call     $6C81
2D88: 3B 17        jrcm     $2D72
2D8A: 78 7E C2     call     $7EC2
2D8D: 2B 20        jrncm    $2D6E
2D8F: F1 66        cal      $1166
2D91: D4 DF        anid     $DF
2D93: 2D 33        jrm      $2D61
2D95: F1 51        cal      $1151
2D97: 24           ixl
2D98: 67 CC        cpia     $CC
2D9A: 39 34        jrzm     $2D67
2D9C: 67 CD        cpia     $CD
2D9E: 39 1A        jrzm     $2D85
2DA0: 2D 2F        jrm      $2D72
2DA2: F1 51        cal      $1151
2DA4: 24           ixl
2DA5: 67 00        cpia     $00
2DA7: 29 36        jrnzm    $2D72
2DA9: F1 5E        cal      $115E
2DAB: D6 04        tsid     $04
2DAD: 29 3C        jrnzm    $2D72
2DAF: F1 66        cal      $1166
2DB1: D5 40        orid     $40
2DB3: 90           lp       $10
2DB4: 60 FC        anim     $FC
2DB6: 91           lp       $11
2DB7: 60 EF        anim     $EF
2DB9: 79 73 41     jp       $7341
2DBC: F1 51        cal      $1151
2DBE: 02 7F        lia      $7F
2DC0: F1 66        cal      $1166
2DC2: D6 01        tsid     $01
2DC4: 28 0A        jrnzp    $2DCF
2DC6: D6 20        tsid     $20
2DC8: 28 08        jrnzp    $2DD1
2DCA: A7           lp       $27
2DCB: 60 00        anim     $00
2DCD: D1           rc
2DCE: 37           rtn
2DCF: 02 79        lia      $79
2DD1: 78 7E 5B     call     $7E5B
2DD4: 3B 0B        jrcm     $2DCA
2DD6: A7           lp       $27
2DD7: 60 00        anim     $00
2DD9: 2C 05        jrp      $2DDF
2DDB: 26           iys
2DDC: A7           lp       $27
2DDD: 70 01        adim     $01
2DDF: 78 7D 2A     call     $7D2A
2DE2: 67 0D        cpia     $0D
2DE4: 29 0A        jrnzm    $2DDB
2DE6: F1 44        cal      $1144
2DE8: D1           rc
2DE9: 37           rtn
2DEA: F1 51        cal      $1151
2DEC: F1 66        cal      $1166
2DEE: D6 20        tsid     $20
2DF0: 28 15        jrnzp    $2E06
2DF2: D6 01        tsid     $01
2DF4: 38 6B        jrzp     $2E60
2DF6: 95           lp       $15
2DF7: 59           ldm
2DF8: 64 11        ania     $11
2DFA: 67 10        cpia     $10
2DFC: 28 63        jrnzp    $2E60
2DFE: 62 06        tsim     $06
2E00: 38 5F        jrzp     $2E60
2E02: 02 78        lia      $78
2E04: 2C 03        jrp      $2E08
2E06: 02 7E        lia      $7E
2E08: 78 7E 5B     call     $7E5B
2E0B: 3A 52        jrcp     $2E5E
2E0D: 78 7D 2A     call     $7D2A
2E10: 67 20        cpia     $20
2E12: 38 0C        jrzp     $2E1F
2E14: DA           exab
2E15: 78 7D 2A     call     $7D2A
2E18: DA           exab
2E19: 67 FF        cpia     $FF
2E1B: 38 40        jrzp     $2E5C
2E1D: 2C 35        jrp      $2E53
2E1F: 10 C6 DA     lidp     $C6DA
2E22: D6 20        tsid     $20
2E24: 28 08        jrnzp    $2E2D
2E26: 78 68 8E     call     $688E
2E29: 02 AF        lia      $AF
2E2B: 2C 06        jrp      $2E32
2E2D: 10 C6 EA     lidp     $C6EA
2E30: 57           ldd
2E31: 43           deca
2E32: 86           lp       $06
2E33: DB           exam
2E34: 02 C7        lia      $C7
2E36: 87           lp       $07
2E37: DB           exam
2E38: 78 7D 2A     call     $7D2A
2E3B: 67 0D        cpia     $0D
2E3D: 38 09        jrzp     $2E47
2E3F: 88           lp       $08
2E40: 26           iys
2E41: DB           exam
2E42: 86           lp       $06
2E43: 63 FF        cpim     $FF
2E45: 29 0E        jrnzm    $2E38
2E47: 86           lp       $06
2E48: 59           ldm
2E49: 10 C6 EA     lidp     $C6EA
2E4C: 52           std
2E4D: 11 DA        lidl     $DA
2E4F: D5 20        orid     $20
2E51: 88           lp       $08
2E52: 59           ldm
2E53: F1 44        cal      $1144
2E55: F1 62        cal      $1162
2E57: D4 FD        anid     $FD
2E59: D1           rc
2E5A: 37           rtn
2E5B: 4D           nopw
2E5C: F1 44        cal      $1144
2E5E: 00 FF        lii      $FF
2E60: 79 1E 66     jp       $1E66
2E63: B8           lp       $38
2E64: E0 A3        cal      $00A3
2E66: B8           lp       $38
2E67: 61 F5        orim     $F5
2E69: 24           ixl
2E6A: 67 12        cpia     $12
2E6C: 38 04        jrzp     $2E71
2E6E: 05           dx
2E6F: 2C 0E        jrp      $2E7E
2E71: 78 78 28     call     $7828
2E74: 91           lp       $11
2E75: 61 10        orim     $10
2E77: E1 F6        cal      $01F6
2E79: 24           ixl
2E7A: 67 1C        cpia     $1C
2E7C: 28 5C        jrnzp    $2ED9
2E7E: 78 6E F1     call     $6EF1
2E81: F2 05        cal      $1205
2E83: 2A 02        jrncp    $2E86
2E85: 37           rtn
2E86: 24           ixl
2E87: 67 1B        cpia     $1B
2E89: 28 4F        jrnzp    $2ED9
2E8B: F1 18        cal      $1118
2E8D: 78 6E DF     call     $6EDF
2E90: 3A 17        jrcp     $2EA8
2E92: F1 25        cal      $1125
2E94: 8C           lp       $0C
2E95: 13 0E        liq      $0E
2E97: 01 01        lij      $01
2E99: 0A           mvb
2E9A: F2 05        cal      $1205
2E9C: 3B 18        jrcm     $2E85
2E9E: 78 6C 81     call     $6C81
2EA1: 3A 37        jrcp     $2ED9
2EA3: 78 6E DF     call     $6EDF
2EA6: 2A 04        jrncp    $2EAB
2EA8: F1 25        cal      $1125
2EAA: 37           rtn
2EAB: 13 0C        liq      $0C
2EAD: 84           lp       $04
2EAE: 0A           mvb
2EAF: 13 0C        liq      $0C
2EB1: AA           lp       $2A
2EB2: 0A           mvb
2EB3: 13 0C        liq      $0C
2EB5: 82           lp       $02
2EB6: 0A           mvb
2EB7: A8           lp       $28
2EB8: 15           sbb
2EB9: 2A 07        jrncp    $2EC1
2EBB: F1 25        cal      $1125
2EBD: 02 09        lia      $09
2EBF: 2C 1B        jrp      $2EDB
2EC1: 10 C6 D9     lidp     $C6D9
2EC4: D6 20        tsid     $20
2EC6: 28 FB        jrnzp    $2FC2
2EC8: 78 6E F7     call     $6EF7
2ECB: 91           lp       $11
2ECC: 61 60        orim     $60
2ECE: B0           lp       $30
2ECF: E2 10        cal      $0210
2ED1: 78 6F D7     call     $6FD7
2ED4: 79 6F 7F     jp       $6F7F
2ED7: F1 25        cal      $1125
2ED9: 02 01        lia      $01
2EDB: 94           lp       $14
2EDC: DB           exam
2EDD: D0           sc
2EDE: 37           rtn
2EDF: 93           lp       $13
2EE0: 61 80        orim     $80
2EE2: 92           lp       $12
2EE3: 60 F0        anim     $F0
2EE5: F7 37        cal      $1737
2EE7: 3A 08        jrcp     $2EF0
2EE9: 8E           lp       $0E
2EEA: 01 01        lij      $01
2EEC: 13 28        liq      $28
2EEE: 0A           mvb
2EEF: D1           rc
2EF0: 37           rtn
2EF1: 10 C6 A0     lidp     $C6A0
2EF4: 90           lp       $10
2EF5: 1B           exbd
2EF6: 37           rtn
2EF7: 10 C6 A0     lidp     $C6A0
2EFA: 90           lp       $10
2EFB: 1A           mvbd
2EFC: 37           rtn
2EFD: F1 51        cal      $1151
2EFF: 91           lp       $11
2F00: 60 8F        anim     $8F
2F02: 24           ixl
2F03: 67 5D        cpia     $5D
2F05: 7E 6E 63     jpz      $6E63
2F08: 05           dx
2F09: F1 47        cal      $1147
2F0B: 78 6C 81     call     $6C81
2F0E: 2A 2E        jrncp    $2F3D
2F10: F1 66        cal      $1166
2F12: D6 10        tsid     $10
2F14: 29 3C        jrnzm    $2ED9
2F16: 67 12        cpia     $12
2F18: 28 0E        jrnzp    $2F27
2F1A: 78 78 28     call     $7828
2F1D: 91           lp       $11
2F1E: 61 10        orim     $10
2F20: E1 F3        cal      $01F3
2F22: 78 6C 81     call     $6C81
2F25: 2A 17        jrncp    $2F3D
2F27: 67 1B        cpia     $1B
2F29: 29 51        jrnzm    $2ED9
2F2B: 24           ixl
2F2C: 67 12        cpia     $12
2F2E: 29 56        jrnzm    $2ED9
2F30: 78 78 28     call     $7828
2F33: E2 21        cal      $0221
2F35: 78 6C 81     call     $6C81
2F38: 3B 60        jrcm     $2ED9
2F3A: 91           lp       $11
2F3B: 61 20        orim     $20
2F3D: 10 C6 D9     lidp     $C6D9
2F40: D6 20        tsid     $20
2F42: 28 7F        jrnzp    $2FC2
2F44: F1 5E        cal      $115E
2F46: D6 04        tsid     $04
2F48: 38 0C        jrzp     $2F55
2F4A: 8E           lp       $0E
2F4B: F1 04        cal      $1104
2F4D: 03 00        lib      $00
2F4F: 02 30        lia      $30
2F51: 8E           lp       $0E
2F52: 14           adb
2F53: 2C 1C        jrp      $2F70
2F55: 01 01        lij      $01
2F57: 10 C6 E3     lidp     $C6E3
2F5A: 8E           lp       $0E
2F5B: 1A           mvbd
2F5C: 02 01        lia      $01
2F5E: 03 00        lib      $00
2F60: 8E           lp       $0E
2F61: 15           sbb
2F62: 11 E1        lidl     $E1
2F64: 57           ldd
2F65: 8E           lp       $0E
2F66: C7           cpma
2F67: 28 08        jrnzp    $2F70
2F69: 11 E2        lidl     $E2
2F6B: 57           ldd
2F6C: 8F           lp       $0F
2F6D: C7           cpma
2F6E: 38 55        jrzp     $2FC4
2F70: F1 18        cal      $1118
2F72: F1 66        cal      $1166
2F74: D6 10        tsid     $10
2F76: 28 9B        jrnzp    $3012
2F78: 78 6F D7     call     $6FD7
2F7B: 78 6F C6     call     $6FC6
2F7E: 04           ix
2F7F: F1 0B        cal      $110B
2F81: 05           dx
2F82: 89           lp       $09
2F83: 02 09        lia      $09
2F85: DB           exam
2F86: 8B           lp       $0B
2F87: 60 00        anim     $00
2F89: 88           lp       $08
2F8A: 02 07        lia      $07
2F8C: DB           exam
2F8D: 24           ixl
2F8E: 58           swp
2F8F: 78 70 41     call     $7041
2F92: 78 70 4E     call     $704E
2F95: 6B 08        test     $08
2F97: 7C 7E E2     jpnz     $7EE2
2F9A: 78 70 02     call     $7002
2F9D: 3A 10        jrcp     $2FAE
2F9F: F1 0B        cal      $110B
2FA1: 49           deck
2FA2: 2B 16        jrncm    $2F8D
2FA4: 78 70 B0     call     $70B0
2FA7: F1 0B        cal      $110B
2FA9: C9           decl
2FAA: 2B 22        jrncm    $2F89
2FAC: 2D 2B        jrm      $2F82
2FAE: F1 0B        cal      $110B
2FB0: 49           deck
2FB1: 2A 06        jrncp    $2FB8
2FB3: 78 70 B0     call     $70B0
2FB6: F1 0B        cal      $110B
2FB8: 02 0F        lia      $0F
2FBA: 78 70 4E     call     $704E
2FBD: F1 0B        cal      $110B
2FBF: 78 7F 0B     call     $7F0B
2FC2: F1 25        cal      $1125
2FC4: D1           rc
2FC5: 37           rtn
2FC6: F1 5E        cal      $115E
2FC8: D6 04        tsid     $04
2FCA: 38 04        jrzp     $2FCF
2FCC: F1 03        cal      $1103
2FCE: 37           rtn
2FCF: 10 C6 E1     lidp     $C6E1
2FD2: 84           lp       $04
2FD3: 01 01        lij      $01
2FD5: 1A           mvbd
2FD6: 37           rtn
2FD7: 78 7E F8     call     $7EF8
2FDA: 78 70 B7     call     $70B7
2FDD: 91           lp       $11
2FDE: 62 20        tsim     $20
2FE0: 38 0B        jrzp     $2FEC
2FE2: 02 62        lia      $62
2FE4: 62 40        tsim     $40
2FE6: 28 07        jrnzp    $2FEE
2FE8: 02 12        lia      $12
2FEA: 2C 03        jrp      $2FEE
2FEC: 02 02        lia      $02
2FEE: 78 70 4E     call     $704E
2FF1: F1 0B        cal      $110B
2FF3: 78 70 8B     call     $708B
2FF6: 91           lp       $11
2FF7: 62 20        tsim     $20
2FF9: 28 02        jrnzp    $2FFC
2FFB: 37           rtn
2FFC: 60 DF        anim     $DF
2FFE: E2 3D        cal      $023D
3000: 2D 10        jrm      $2FF1
3002: 84           lp       $04
3003: 59           ldm
3004: 8E           lp       $0E
3005: C7           cpma
3006: 28 09        jrnzp    $3010
3008: 85           lp       $05
3009: 59           ldm
300A: 8F           lp       $0F
300B: C7           cpma
300C: 28 03        jrnzp    $3010
300E: D0           sc
300F: 37           rtn
3010: D1           rc
3011: 37           rtn
3012: 02 75        lia      $75
3014: 78 7E 5B     call     $7E5B
3017: 3A 25        jrcp     $303D
3019: F1 5E        cal      $115E
301B: D6 04        tsid     $04
301D: 38 05        jrzp     $3023
301F: F1 03        cal      $1103
3021: 2C 08        jrp      $302A
3023: 10 C6 E1     lidp     $C6E1
3026: 84           lp       $04
3027: 01 01        lij      $01
3029: 1A           mvbd
302A: 24           ixl
302B: 78 7C 7D     call     $7C7D
302E: 78 70 02     call     $7002
3031: 2B 08        jrncm    $302A
3033: 79 6D 57     jp       $6D57
3036: 11 F8        lidl     $F8
3038: 02 00        lia      $00
303A: 00 03        lii      $03
303C: 1F           fild
303D: 37           rtn
303E: 86           lp       $06
303F: 2D 3D        jrm      $3003
3041: 34           push
3042: 8B           lp       $0B
3043: 64 0F        ania     $0F
3045: 44           adm
3046: 5B           pop
3047: 34           push
3048: 58           swp
3049: 64 0F        ania     $0F
304B: C4           adcm
304C: 5B           pop
304D: 37           rtn
304E: 78 70 5D     call     $705D
3051: 6B 02        test     $02
3053: 39 03        jrzm     $3051
3055: 6B 02        test     $02
3057: 39 03        jrzm     $3055
3059: 78 70 5D     call     $705D
305C: 37           rtn
305D: 6B 02        test     $02
305F: 39 03        jrzm     $305D
3061: D1           rc
3062: 78 70 77     call     $7077
3065: 78 70 76     call     $7076
3068: 78 70 76     call     $7076
306B: 78 70 76     call     $7076
306E: 78 70 76     call     $7076
3071: D0           sc
3072: 78 70 77     call     $7077
3075: 37           rtn
3076: D2           sr
3077: 12 5F        lip      $5F
3079: 60 01        anim     $01
307B: 2A 05        jrncp    $3081
307D: 61 30        orim     $30
307F: 2C 05        jrp      $3085
3081: 61 20        orim     $20
3083: 4D           nopw
3084: 4D           nopw
3085: 6B 02        test     $02
3087: 39 03        jrzm     $3085
3089: DF           outc
308A: 37           rtn
308B: 02 37        lia      $37
308D: 8A           lp       $0A
308E: DB           exam
308F: 8B           lp       $0B
3090: 60 00        anim     $00
3092: 88           lp       $08
3093: 02 07        lia      $07
3095: DB           exam
3096: 8A           lp       $0A
3097: 59           ldm
3098: 30           stp
3099: 59           ldm
309A: 78 70 41     call     $7041
309D: 78 70 4E     call     $704E
30A0: 8A           lp       $0A
30A1: 71 01        sbim     $01
30A3: 49           deck
30A4: 3A 05        jrcp     $30AA
30A6: F1 0B        cal      $110B
30A8: 2D 13        jrm      $3096
30AA: F1 0B        cal      $110B
30AC: 78 70 B0     call     $70B0
30AF: 37           rtn
30B0: 8B           lp       $0B
30B1: 59           ldm
30B2: 58           swp
30B3: 78 70 4E     call     $704E
30B6: 37           rtn
30B7: 03 0F        lib      $0F
30B9: 12 5F        lip      $5F
30BB: 60 01        anim     $01
30BD: 61 30        orim     $30
30BF: DF           outc
30C0: 02 F9        lia      $F9
30C2: 6B 02        test     $02
30C4: 39 03        jrzm     $30C2
30C6: 43           deca
30C7: 2B 06        jrncm    $30C2
30C9: C3           decb
30CA: 3A 08        jrcp     $30D3
30CC: 6B 08        test     $08
30CE: 39 0F        jrzm     $30C0
30D0: 79 7E E2     jp       $7EE2
30D3: 37           rtn
30D4: 03 03        lib      $03
30D6: 2D 1E        jrm      $30B9
30D8: 24           ixl
30D9: 67 00        cpia     $00
30DB: 28 05        jrnzp    $30E1
30DD: F1 18        cal      $1118
30DF: 2C 46        jrp      $3126
30E1: 67 12        cpia     $12
30E3: 38 04        jrzp     $30E8
30E5: 05           dx
30E6: 2C 1C        jrp      $3103
30E8: 78 78 28     call     $7828
30EB: 2A 07        jrncp    $30F3
30ED: 94           lp       $14
30EE: 02 01        lia      $01
30F0: DB           exam
30F1: D0           sc
30F2: 37           rtn
30F3: E2 21        cal      $0221
30F5: E1 F6        cal      $01F6
30F7: 91           lp       $11
30F8: 61 10        orim     $10
30FA: 78 6C 81     call     $6C81
30FD: 2A 28        jrncp    $3126
30FF: 67 1C        cpia     $1C
3101: 29 15        jrnzm    $30ED
3103: 78 6E F1     call     $6EF1
3106: F2 05        cal      $1205
3108: 3B 17        jrcm     $30F2
310A: 78 6C 81     call     $6C81
310D: 3B 21        jrcm     $30ED
310F: 78 6E F7     call     $6EF7
3112: 78 6E DF     call     $6EDF
3115: 3A 0C        jrcp     $3122
3117: E2 6A        cal      $026A
3119: 13 0E        liq      $0E
311B: B8           lp       $38
311C: 0A           mvb
311D: 91           lp       $11
311E: 61 80        orim     $80
3120: 2C 05        jrp      $3126
3122: F1 25        cal      $1125
3124: 2D 38        jrm      $30ED
3126: 78 74 16     call     $7416
3129: 67 02        cpia     $02
312B: 29 06        jrnzm    $3126
312D: 78 74 16     call     $7416
3130: 67 06        cpia     $06
3132: 29 0A        jrnzm    $3129
3134: 78 74 64     call     $7464
3137: 3B 12        jrcm     $3126
3139: 78 7A AE     call     $7AAE
313C: 78 72 B1     call     $72B1
313F: 58           swp
3140: 8B           lp       $0B
3141: C7           cpma
3142: 28 41        jrnzp    $3184
3144: 91           lp       $11
3145: 62 80        tsim     $80
3147: 28 05        jrnzp    $314D
3149: 13 32        liq      $32
314B: 2C 03        jrp      $314F
314D: 13 38        liq      $38
314F: 86           lp       $06
3150: 0A           mvb
3151: 07           dy
3152: 89           lp       $09
3153: 02 09        lia      $09
3155: DB           exam
3156: 8B           lp       $0B
3157: 60 00        anim     $00
3159: 88           lp       $08
315A: 02 07        lia      $07
315C: DB           exam
315D: 78 72 B1     call     $72B1
3160: 78 70 41     call     $7041
3163: 58           swp
3164: 26           iys
3165: 03 00        lib      $00
3167: 02 01        lia      $01
3169: B0           lp       $30
316A: 15           sbb
316B: 3A 11        jrcp     $317D
316D: 49           deck
316E: 2B 12        jrncm    $315D
3170: 78 72 B1     call     $72B1
3173: 58           swp
3174: 8B           lp       $0B
3175: C7           cpma
3176: 28 0D        jrnzp    $3184
3178: C9           decl
3179: 2B 21        jrncm    $3159
317B: 2D 2A        jrm      $3152
317D: 78 7F 0B     call     $7F0B
3180: F1 25        cal      $1125
3182: D1           rc
3183: 37           rtn
3184: 79 73 99     jp       $7399
3187: F1 51        cal      $1151
3189: 91           lp       $11
318A: 60 6F        anim     $6F
318C: 90           lp       $10
318D: 60 FC        anim     $FC
318F: 24           ixl
3190: 67 5D        cpia     $5D
3192: 7E 70 D8     jpz      $70D8
3195: 67 13        cpia     $13
3197: 7E 74 D1     jpz      $74D1
319A: 05           dx
319B: 2C 11        jrp      $31AD
319D: F1 51        cal      $1151
319F: 90           lp       $10
31A0: 60 FC        anim     $FC
31A2: 61 02        orim     $02
31A4: 91           lp       $11
31A5: 60 EF        anim     $EF
31A7: F1 5E        cal      $115E
31A9: D6 04        tsid     $04
31AB: 29 BF        jrnzm    $30ED
31AD: 24           ixl
31AE: 67 12        cpia     $12
31B0: 28 16        jrnzp    $31C7
31B2: F1 66        cal      $1166
31B4: D6 08        tsid     $08
31B6: 29 CA        jrnzm    $30ED
31B8: 78 78 28     call     $7828
31BB: E2 21        cal      $0221
31BD: 78 6C 81     call     $6C81
31C0: 3B D4        jrcm     $30ED
31C2: 91           lp       $11
31C3: 61 10        orim     $10
31C5: 2C 11        jrp      $31D7
31C7: 67 00        cpia     $00
31C9: 29 DD        jrnzm    $30ED
31CB: F1 66        cal      $1166
31CD: D6 08        tsid     $08
31CF: 38 07        jrzp     $31D7
31D1: 90           lp       $10
31D2: 62 02        tsim     $02
31D4: 7E 73 41     jpz      $7341
31D7: 78 74 37     call     $7437
31DA: 91           lp       $11
31DB: 62 20        tsim     $20
31DD: 38 13        jrzp     $31F1
31DF: 78 7A AE     call     $7AAE
31E2: 78 72 B1     call     $72B1
31E5: 10 C6 D9     lidp     $C6D9
31E8: 90           lp       $10
31E9: 62 02        tsim     $02
31EB: 38 05        jrzp     $31F1
31ED: D6 20        tsid     $20
31EF: 28 90        jrnzp    $3280
31F1: 90           lp       $10
31F2: 62 01        tsim     $01
31F4: 38 08        jrzp     $31FD
31F6: 10 C6 D8     lidp     $C6D8
31F9: D5 01        orid     $01
31FB: 2C 04        jrp      $3200
31FD: 78 46 E9     call     $46E9
3200: 90           lp       $10
3201: 62 02        tsim     $02
3203: 38 08        jrzp     $320C
3205: 10 C6 E3     lidp     $C6E3
3208: 86           lp       $06
3209: 1A           mvbd
320A: 2C 10        jrp      $321B
320C: F1 5E        cal      $115E
320E: D6 04        tsid     $04
3210: 38 07        jrzp     $3218
3212: 86           lp       $06
3213: F1 04        cal      $1104
3215: 06           iy
3216: 2C 04        jrp      $321B
3218: 78 72 9C     call     $729C
321B: 07           dy
321C: 89           lp       $09
321D: 02 09        lia      $09
321F: DB           exam
3220: 8B           lp       $0B
3221: 60 00        anim     $00
3223: 88           lp       $08
3224: 02 07        lia      $07
3226: DB           exam
3227: 78 72 B1     call     $72B1
322A: 78 70 41     call     $7041
322D: 58           swp
322E: 67 F0        cpia     $F0
3230: 38 22        jrzp     $3253
3232: 78 72 EF     call     $72EF
3235: 2A 05        jrncp    $323B
3237: 03 06        lib      $06
3239: 2C 0E        jrp      $3248
323B: 49           deck
323C: 2B 16        jrncm    $3227
323E: 78 72 B1     call     $72B1
3241: 58           swp
3242: 8B           lp       $0B
3243: C7           cpma
3244: 38 09        jrzp     $324E
3246: 03 08        lib      $08
3248: 78 72 91     call     $7291
324B: 79 73 80     jp       $7380
324E: C9           decl
324F: 2B 2D        jrncm    $3223
3251: 2D 36        jrm      $321C
3253: F1 5E        cal      $115E
3255: D6 04        tsid     $04
3257: 28 0F        jrnzp    $3267
3259: 02 FF        lia      $FF
325B: 78 72 EF     call     $72EF
325E: 3B 28        jrcm     $3237
3260: 10 C6 E3     lidp     $C6E3
3263: 86           lp       $06
3264: 01 01        lij      $01
3266: 1B           exbd
3267: F1 25        cal      $1125
3269: F1 5E        cal      $115E
326B: D6 04        tsid     $04
326D: 28 12        jrnzp    $3280
326F: 91           lp       $11
3270: 62 20        tsim     $20
3272: 38 0D        jrzp     $3280
3274: 10 C6 D9     lidp     $C6D9
3277: D5 20        orid     $20
3279: 10 F8 A8     lidp     $F8A8
327C: B0           lp       $30
327D: 00 07        lii      $07
327F: 19           exwd
3280: 78 7F 0B     call     $7F0B
3283: F1 44        cal      $1144
3285: D1           rc
3286: 90           lp       $10
3287: 62 01        tsim     $01
3289: 28 02        jrnzp    $328C
328B: 37           rtn
328C: E2 06        cal      $0206
328E: 79 5C 93     jp       $5C93
3291: 10 C6 E3     lidp     $C6E3
3294: 86           lp       $06
3295: 1A           mvbd
3296: 07           dy
3297: 02 FF        lia      $FF
3299: 26           iys
329A: DA           exab
329B: 37           rtn
329C: 10 C6 E1     lidp     $C6E1
329F: 86           lp       $06
32A0: 1A           mvbd
32A1: 06           iy
32A2: 10 C6 E3     lidp     $C6E3
32A5: 86           lp       $06
32A6: 1B           exbd
32A7: 11 E3        lidl     $E3
32A9: 86           lp       $06
32AA: 1A           mvbd
32AB: 10 C6 D9     lidp     $C6D9
32AE: D4 DF        anid     $DF
32B0: 37           rtn
32B1: 78 73 BD     call     $73BD
32B4: 78 74 00     call     $7400
32B7: 78 74 00     call     $7400
32BA: 78 74 00     call     $7400
32BD: 78 74 00     call     $7400
32C0: 8C           lp       $0C
32C1: 60 00        anim     $00
32C3: 78 72 DB     call     $72DB
32C6: 8C           lp       $0C
32C7: DB           exam
32C8: 78 73 BD     call     $73BD
32CB: 78 74 00     call     $7400
32CE: 78 74 00     call     $7400
32D1: 78 74 00     call     $7400
32D4: 78 74 00     call     $7400
32D7: 78 72 DB     call     $72DB
32DA: 37           rtn
32DB: 02 03        lia      $03
32DD: DA           exab
32DE: 8C           lp       $0C
32DF: 59           ldm
32E0: A0           lp       $20
32E1: 63 06        cpim     $06
32E3: 2A 04        jrncp    $32E8
32E5: D1           rc
32E6: 2C 02        jrp      $32E9
32E8: D0           sc
32E9: D2           sr
32EA: 50           incp
32EB: C3           decb
32EC: 2B 0C        jrncm    $32E1
32EE: 37           rtn
32EF: 34           push
32F0: F1 5E        cal      $115E
32F2: D6 04        tsid     $04
32F4: 28 31        jrnzp    $3326
32F6: 10 C6 FC     lidp     $C6FC
32F9: 57           ldd
32FA: 86           lp       $06
32FB: C7           cpma
32FC: 28 1B        jrnzp    $3318
32FE: 11 FD        lidl     $FD
3300: 57           ldd
3301: 87           lp       $07
3302: C7           cpma
3303: 28 14        jrnzp    $3318
3305: 02 D0        lia      $D0
3307: 10 C6 FC     lidp     $C6FC
330A: 52           std
330B: 11 CE        lidl     $CE
330D: 52           std
330E: 02 C5        lia      $C5
3310: 11 FD        lidl     $FD
3312: 52           std
3313: 11 CF        lidl     $CF
3315: 52           std
3316: 2C 0B        jrp      $3322
3318: 86           lp       $06
3319: 63 CF        cpim     $CF
331B: 28 06        jrnzp    $3322
331D: 87           lp       $07
331E: 63 C5        cpim     $C5
3320: 38 1D        jrzp     $333E
3322: 5B           pop
3323: 26           iys
3324: D1           rc
3325: 37           rtn
3326: F1 03        cal      $1103
3328: 03 00        lib      $00
332A: 02 30        lia      $30
332C: 84           lp       $04
332D: 14           adb
332E: 13 06        liq      $06
3330: 82           lp       $02
3331: 0A           mvb
3332: 84           lp       $04
3333: 15           sbb
3334: 29 13        jrnzm    $3322
3336: F1 03        cal      $1103
3338: 04           ix
3339: 00 2F        lii      $2F
333B: 02 00        lia      $00
333D: 1F           fild
333E: 5B           pop
333F: D0           sc
3340: 37           rtn
3341: 02 7A        lia      $7A
3343: F1 66        cal      $1166
3345: D6 40        tsid     $40
3347: 38 05        jrzp     $334D
3349: D4 BF        anid     $BF
334B: 02 7C        lia      $7C
334D: 78 7E 5B     call     $7E5B
3350: 3A 38        jrcp     $3389
3352: F1 5E        cal      $115E
3354: D6 04        tsid     $04
3356: 28 07        jrnzp    $335E
3358: 78 72 9C     call     $729C
335B: 07           dy
335C: 2C 04        jrp      $3361
335E: 86           lp       $06
335F: F1 04        cal      $1104
3361: 89           lp       $09
3362: 02 09        lia      $09
3364: DB           exam
3365: 8B           lp       $0B
3366: 60 00        anim     $00
3368: 88           lp       $08
3369: 02 07        lia      $07
336B: DB           exam
336C: 78 7D 2A     call     $7D2A
336F: 78 70 41     call     $7041
3372: 67 0D        cpia     $0D
3374: 38 28        jrzp     $339D
3376: 78 72 EF     call     $72EF
3379: 2A 15        jrncp    $338F
337B: 03 06        lib      $06
337D: 78 72 91     call     $7291
3380: 94           lp       $14
3381: DB           exam
3382: F1 25        cal      $1125
3384: 78 7F 0B     call     $7F0B
3387: F1 44        cal      $1144
3389: F1 66        cal      $1166
338B: D4 BF        anid     $BF
338D: D0           sc
338E: 37           rtn
338F: 49           deck
3390: 2B 25        jrncm    $336C
3392: 78 7D 2A     call     $7D2A
3395: 8B           lp       $0B
3396: C7           cpma
3397: 38 20        jrzp     $33B8
3399: 03 08        lib      $08
339B: 2D 1F        jrm      $337D
339D: 02 08        lia      $08
339F: 03 00        lib      $00
33A1: 86           lp       $06
33A2: 15           sbb
33A3: 13 06        liq      $06
33A5: 84           lp       $04
33A6: 0A           mvb
33A7: 24           ixl
33A8: 91           lp       $11
33A9: 60 DF        anim     $DF
33AB: 67 F5        cpia     $F5
33AD: 28 07        jrnzp    $33B5
33AF: 61 20        orim     $20
33B1: 00 07        lii      $07
33B3: B0           lp       $30
33B4: 18           mvwd
33B5: 79 72 53     jp       $7253
33B8: C9           decl
33B9: 3B 59        jrcm     $3361
33BB: 2D 54        jrm      $3368
33BD: 00 FF        lii      $FF
33BF: 6B 08        test     $08
33C1: 28 38        jrnzp    $33FA
33C3: 4F           waiti
33C4: 7E 73 BD     jpz      $73BD
33C7: CE           nopt
33C8: CE           nopt
33C9: 6B 08        test     $08
33CB: 28 2E        jrnzp    $33FA
33CD: 80           lp       $00
33CE: 6F           ???
33CF: 4F           waiti
33D0: 20           ldp
33D1: 67 09        cpia     $09
33D3: 7F 73 C9     jpc      $73C9
33D6: 4E 02        wait     $02
33D8: 80           lp       $00
33D9: 6F           ???
33DA: 4F           waiti
33DB: 20           ldp
33DC: 67 09        cpia     $09
33DE: 7F 73 C9     jpc      $73C9
33E1: 4E 02        wait     $02
33E3: 80           lp       $00
33E4: 6F           ???
33E5: 4F           waiti
33E6: 20           ldp
33E7: 67 09        cpia     $09
33E9: 7F 73 C9     jpc      $73C9
33EC: 00 03        lii      $03
33EE: 02 00        lia      $00
33F0: A0           lp       $20
33F1: 1E           film
33F2: A0           lp       $20
33F3: 00 12        lii      $12
33F5: 02 01        lia      $01
33F7: 4E 28        wait     $28
33F9: 37           rtn
33FA: 79 7E E2     jp       $7EE2
33FD: 41           deci
33FE: 3A 12        jrcp     $3411
3400: 6B 80        test     $80
3402: 39 06        jrzm     $33FD
3404: 44           adm
3405: 41           deci
3406: 3A 0A        jrcp     $3411
3408: 6B 80        test     $80
340A: 39 0E        jrzm     $33FD
340C: 41           deci
340D: 2B 06        jrncm    $3408
340F: CE           nopt
3410: CE           nopt
3411: 50           incp
3412: 00 12        lii      $12
3414: 4D           nopw
3415: 37           rtn
3416: 78 7E F8     call     $7EF8
3419: 12 5F        lip      $5F
341B: 60 01        anim     $01
341D: 61 70        orim     $70
341F: DF           outc
3420: 78 73 BD     call     $73BD
3423: 78 74 00     call     $7400
3426: 78 74 00     call     $7400
3429: 78 74 00     call     $7400
342C: 78 74 00     call     $7400
342F: 8C           lp       $0C
3430: 60 00        anim     $00
3432: 78 72 DB     call     $72DB
3435: 58           swp
3436: 37           rtn
3437: 78 74 16     call     $7416
343A: 67 02        cpia     $02
343C: 28 11        jrnzp    $344E
343E: 78 74 16     call     $7416
3441: 67 01        cpia     $01
3443: 38 17        jrzp     $345B
3445: 67 00        cpia     $00
3447: 29 0E        jrnzm    $343A
3449: 91           lp       $11
344A: 60 DF        anim     $DF
344C: 2C 11        jrp      $345E
344E: 67 08        cpia     $08
3450: 29 1A        jrnzm    $3437
3452: 78 74 16     call     $7416
3455: 67 00        cpia     $00
3457: 29 1E        jrnzm    $343A
3459: 2D 11        jrm      $3449
345B: 91           lp       $11
345C: 61 20        orim     $20
345E: 78 74 64     call     $7464
3461: 3B 2B        jrcm     $3437
3463: 37           rtn
3464: 90           lp       $10
3465: 60 3F        anim     $3F
3467: 61 40        orim     $40
3469: 78 7A B1     call     $7AB1
346C: 2A 0B        jrncp    $3478
346E: 91           lp       $11
346F: 62 10        tsim     $10
3471: 38 08        jrzp     $347A
3473: 78 6C A6     call     $6CA6
3476: 3A 08        jrcp     $347F
3478: D0           sc
3479: 37           rtn
347A: B0           lp       $30
347B: 63 F5        cpim     $F5
347D: 29 06        jrnzm    $3478
347F: 78 72 B1     call     $72B1
3482: 58           swp
3483: 8B           lp       $0B
3484: C7           cpma
3485: 29 0E        jrnzm    $3478
3487: D1           rc
3488: 37           rtn
3489: F1 51        cal      $1151
348B: 91           lp       $11
348C: 60 EF        anim     $EF
348E: 90           lp       $10
348F: 61 01        orim     $01
3491: 60 FD        anim     $FD
3493: 24           ixl
3494: 67 12        cpia     $12
3496: 38 09        jrzp     $34A0
3498: 78 6C 82     call     $6C82
349B: 2A 19        jrncp    $34B5
349D: 05           dx
349E: 2C 1E        jrp      $34BD
34A0: 78 78 28     call     $7828
34A3: 2A 07        jrncp    $34AB
34A5: 94           lp       $14
34A6: 02 01        lia      $01
34A8: DB           exam
34A9: D0           sc
34AA: 37           rtn
34AB: E2 21        cal      $0221
34AD: 91           lp       $11
34AE: 61 10        orim     $10
34B0: 78 6C 81     call     $6C81
34B3: 3A 05        jrcp     $34B9
34B5: E0 9F        cal      $009F
34B7: 2C 14        jrp      $34CC
34B9: 67 1B        cpia     $1B
34BB: 29 17        jrnzm    $34A5
34BD: 78 6E F1     call     $6EF1
34C0: F2 05        cal      $1205
34C2: 3B 19        jrcm     $34AA
34C4: 78 6E F7     call     $6EF7
34C7: 78 6C 81     call     $6C81
34CA: 3B 26        jrcm     $34A5
34CC: E1 F6        cal      $01F6
34CE: 79 71 D7     jp       $71D7
34D1: 24           ixl
34D2: 67 12        cpia     $12
34D4: 28 0C        jrnzp    $34E1
34D6: 78 78 28     call     $7828
34D9: 3B 35        jrcm     $34A5
34DB: E2 21        cal      $0221
34DD: 91           lp       $11
34DE: 61 10        orim     $10
34E0: 24           ixl
34E1: 78 6C 82     call     $6C82
34E4: 3B 40        jrcm     $34A5
34E6: 78 74 37     call     $7437
34E9: 91           lp       $11
34EA: 62 20        tsim     $20
34EC: 38 07        jrzp     $34F4
34EE: 78 7A AE     call     $7AAE
34F1: 78 72 B1     call     $72B1
34F4: 78 6F C6     call     $6FC6
34F7: 89           lp       $09
34F8: 02 09        lia      $09
34FA: DB           exam
34FB: 8B           lp       $0B
34FC: 60 00        anim     $00
34FE: 88           lp       $08
34FF: 02 07        lia      $07
3501: DB           exam
3502: 78 72 B1     call     $72B1
3505: 78 70 41     call     $7041
3508: 58           swp
3509: 67 F0        cpia     $F0
350B: 38 17        jrzp     $3523
350D: 83           lp       $03
350E: DB           exam
350F: 24           ixl
3510: C7           cpma
3511: 28 2F        jrnzp    $3541
3513: 49           deck
3514: 2B 13        jrncm    $3502
3516: 78 72 B1     call     $72B1
3519: 58           swp
351A: 8B           lp       $0B
351B: C7           cpma
351C: 28 24        jrnzp    $3541
351E: C9           decl
351F: 2B 22        jrncm    $34FE
3521: 2D 2B        jrm      $34F7
3523: F1 5E        cal      $115E
3525: D6 04        tsid     $04
3527: 38 0D        jrzp     $3535
3529: 10 C6 C4     lidp     $C6C4
352C: 57           ldd
352D: 74 30        adia     $30
352F: 84           lp       $04
3530: C7           cpma
3531: 28 0F        jrnzp    $3541
3533: 2C 06        jrp      $353A
3535: 24           ixl
3536: 67 FF        cpia     $FF
3538: 28 08        jrnzp    $3541
353A: 78 7F 0B     call     $7F0B
353D: F1 25        cal      $1125
353F: D1           rc
3540: 37           rtn
3541: 79 71 84     jp       $7184
3544: F1 51        cal      $1151
3546: F1 47        cal      $1147
3548: 95           lp       $15
3549: 60 BF        anim     $BF
354B: 90           lp       $10
354C: 60 FB        anim     $FB
354E: 24           ixl
354F: 67 12        cpia     $12
3551: 28 26        jrnzp    $3578
3553: 95           lp       $15
3554: 62 40        tsim     $40
3556: 7C 78 60     jpnz     $7860
3559: F1 66        cal      $1166
355B: D6 10        tsid     $10
355D: 28 06        jrnzp    $3564
355F: 78 78 28     call     $7828
3562: 2A 07        jrncp    $356A
3564: 94           lp       $14
3565: 02 01        lia      $01
3567: DB           exam
3568: D0           sc
3569: 37           rtn
356A: E1 F3        cal      $01F3
356C: 24           ixl
356D: 67 1C        cpia     $1C
356F: 38 D2        jrzp     $3642
3571: 78 6C 82     call     $6C82
3574: 3B 11        jrcm     $3564
3576: 2C 06        jrp      $357D
3578: 78 6C 82     call     $6C82
357B: 3A C5        jrcp     $3641
357D: 89           lp       $09
357E: 02 19        lia      $19
3580: DB           exam
3581: 02 98        lia      $98
3583: 95           lp       $15
3584: 62 40        tsim     $40
3586: 7C 78 79     jpnz     $7879
3589: 84           lp       $04
358A: DB           exam
358B: 85           lp       $05
358C: 02 C6        lia      $C6
358E: DB           exam
358F: F1 66        cal      $1166
3591: D6 10        tsid     $10
3593: 38 10        jrzp     $35A4
3595: 78 77 DA     call     $77DA
3598: 2A 61        jrncp    $35FA
359A: F1 44        cal      $1144
359C: F1 25        cal      $1125
359E: 94           lp       $14
359F: 02 08        lia      $08
35A1: DB           exam
35A2: D0           sc
35A3: 37           rtn
35A4: 78 77 A7     call     $77A7
35A7: 78 77 FB     call     $77FB
35AA: C9           decl
35AB: 3A 09        jrcp     $35B5
35AD: 6B 08        test     $08
35AF: 28 1D        jrnzp    $35CD
35B1: F1 0B        cal      $110B
35B3: 2D 0D        jrm      $35A7
35B5: 10 C6 D8     lidp     $C6D8
35B8: D6 08        tsid     $08
35BA: 38 15        jrzp     $35D0
35BC: F1 0B        cal      $110B
35BE: 78 78 12     call     $7812
35C1: 78 77 FB     call     $77FB
35C4: F1 0B        cal      $110B
35C6: C9           decl
35C7: 3A 0B        jrcp     $35D3
35C9: 6B 08        test     $08
35CB: 39 0B        jrzm     $35C1
35CD: 79 7E E2     jp       $7EE2
35D0: 78 78 4D     call     $784D
35D3: 02 0F        lia      $0F
35D5: 78 70 4E     call     $704E
35D8: F1 0B        cal      $110B
35DA: F1 0F        cal      $110F
35DC: F1 25        cal      $1125
35DE: 24           ixl
35DF: 67 1B        cpia     $1B
35E1: 28 09        jrnzp    $35EB
35E3: 90           lp       $10
35E4: 61 04        orim     $04
35E6: 78 70 D4     call     $70D4
35E9: 2C 58        jrp      $3642
35EB: 78 6C 82     call     $6C82
35EE: 3A 04        jrcp     $35F3
35F0: 79 79 C7     jp       $79C7
35F3: F1 44        cal      $1144
35F5: 78 7F 0B     call     $7F0B
35F8: 2D 95        jrm      $3564
35FA: 88           lp       $08
35FB: 02 07        lia      $07
35FD: DB           exam
35FE: 25           dxl
35FF: 78 7C 7D     call     $7C7D
3602: 49           deck
3603: 2B 06        jrncm    $35FE
3605: C9           decl
3606: 2B 0D        jrncm    $35FA
3608: 10 C6 D8     lidp     $C6D8
360B: D6 08        tsid     $08
360D: 38 12        jrzp     $3620
360F: 78 78 12     call     $7812
3612: 88           lp       $08
3613: 02 07        lia      $07
3615: DB           exam
3616: 25           dxl
3617: 78 7C 7D     call     $7C7D
361A: 49           deck
361B: 2B 06        jrncm    $3616
361D: C9           decl
361E: 2B 0D        jrncm    $3612
3620: 02 0F        lia      $0F
3622: 78 7C 7D     call     $7C7D
3625: F1 25        cal      $1125
3627: 24           ixl
3628: 67 1B        cpia     $1B
362A: 28 06        jrnzp    $3631
362C: 90           lp       $10
362D: 61 04        orim     $04
362F: 2C 12        jrp      $3642
3631: 78 6C 82     call     $6C82
3634: 3B 42        jrcm     $35F3
3636: 02 0D        lia      $0D
3638: 78 7C 7D     call     $7C7D
363B: 78 7C EE     call     $7CEE
363E: 79 79 CA     jp       $79CA
3641: 05           dx
3642: 10 C6 DE     lidp     $C6DE
3645: 57           ldd
3646: 11 D8        lidl     $D8
3648: D6 08        tsid     $08
364A: 28 03        jrnzp    $364E
364C: 02 1A        lia      $1A
364E: 11 C3        lidl     $C3
3650: 52           std
3651: 78 6E F1     call     $6EF1
3654: F6 C0        cal      $16C0
3656: 2A 08        jrncp    $365F
3658: 78 7F 0B     call     $7F0B
365B: F1 44        cal      $1144
365D: D0           sc
365E: 37           rtn
365F: 93           lp       $13
3660: 62 12        tsim     $12
3662: 38 82        jrzp     $36E5
3664: 60 9F        anim     $9F
3666: 10 C6 FC     lidp     $C6FC
3669: 8E           lp       $0E
366A: 1A           mvbd
366B: FA 0E        cal      $1A0E
366D: 3B 16        jrcm     $3658
366F: 10 C6 FC     lidp     $C6FC
3672: 8E           lp       $0E
3673: 1B           exbd
3674: 78 6E F7     call     $6EF7
3677: F1 18        cal      $1118
3679: A8           lp       $28
367A: 63 1A        cpim     $1A
367C: 2A 19        jrncp    $3696
367E: 89           lp       $09
367F: 02 19        lia      $19
3681: DB           exam
3682: A8           lp       $28
3683: 59           ldm
3684: 89           lp       $09
3685: 45           sbm
3686: 95           lp       $15
3687: 62 40        tsim     $40
3689: 7C 79 E5     jpnz     $79E5
368C: 84           lp       $04
368D: 13 06        liq      $06
368F: 01 01        lij      $01
3691: 0A           mvb
3692: 04           ix
3693: 79 75 8F     jp       $758F
3696: 10 C6 DE     lidp     $C6DE
3699: 57           ldd
369A: 89           lp       $09
369B: DB           exam
369C: 11 C3        lidl     $C3
369E: 57           ldd
369F: C7           cpma
36A0: 38 1E        jrzp     $36BF
36A2: 95           lp       $15
36A3: 62 40        tsim     $40
36A5: 28 07        jrnzp    $36AD
36A7: 02 03        lia      $03
36A9: 94           lp       $14
36AA: DB           exam
36AB: 2D 54        jrm      $3658
36AD: 10 C6 D8     lidp     $C6D8
36B0: D4 F7        anid     $F7
36B2: 89           lp       $09
36B3: 02 FF        lia      $FF
36B5: DB           exam
36B6: 11 DE        lidl     $DE
36B8: 57           ldd
36B9: 75 01        sbia     $01
36BB: 52           std
36BC: 79 79 E9     jp       $79E9
36BF: A8           lp       $28
36C0: 59           ldm
36C1: 89           lp       $09
36C2: 45           sbm
36C3: 95           lp       $15
36C4: 62 40        tsim     $40
36C6: 7C 79 E9     jpnz     $79E9
36C9: 84           lp       $04
36CA: 13 06        liq      $06
36CC: 01 01        lij      $01
36CE: 0A           mvb
36CF: 04           ix
36D0: F1 66        cal      $1166
36D2: D6 10        tsid     $10
36D4: 28 07        jrnzp    $36DC
36D6: 78 77 A7     call     $77A7
36D9: 79 75 C1     jp       $75C1
36DC: 78 77 DA     call     $77DA
36DF: 7F 75 9A     jpc      $759A
36E2: 79 76 12     jp       $7612
36E5: 62 08        tsim     $08
36E7: 39 F5        jrzm     $35F3
36E9: 24           ixl
36EA: 67 37        cpia     $37
36EC: 29 FA        jrnzm    $35F3
36EE: 24           ixl
36EF: 67 31        cpia     $31
36F1: 29 FF        jrnzm    $35F3
36F3: F1 18        cal      $1118
36F5: F8 72        cal      $1872
36F7: 2A 05        jrncp    $36FD
36F9: F1 25        cal      $1125
36FB: 2D A4        jrm      $3658
36FD: 78 6E F7     call     $6EF7
3700: 95           lp       $15
3701: 62 40        tsim     $40
3703: 7C 7A 08     jpnz     $7A08
3706: F1 66        cal      $1166
3708: D6 10        tsid     $10
370A: 28 73        jrnzp    $377E
370C: 90           lp       $10
370D: 62 04        tsim     $04
370F: 28 13        jrnzp    $3723
3711: 78 7E F8     call     $7EF8
3714: 78 70 B7     call     $70B7
3717: 02 42        lia      $42
3719: 78 70 4E     call     $704E
371C: F1 0B        cal      $110B
371E: 78 70 8B     call     $708B
3721: F1 0B        cal      $110B
3723: 78 77 60     call     $7760
3726: 24           ixl
3727: 78 70 41     call     $7041
372A: 78 70 4E     call     $704E
372D: F1 0B        cal      $110B
372F: 41           deci
3730: 2B 0B        jrncm    $3726
3732: 78 70 B0     call     $70B0
3735: F1 0B        cal      $110B
3737: 00 07        lii      $07
3739: 8B           lp       $0B
373A: 60 00        anim     $00
373C: 24           ixl
373D: 78 70 41     call     $7041
3740: 78 70 4E     call     $704E
3743: F1 0B        cal      $110B
3745: 49           deck
3746: 2A 0A        jrncp    $3751
3748: C9           decl
3749: 2A 07        jrncp    $3751
374B: 78 70 B0     call     $70B0
374E: 79 75 D8     jp       $75D8
3751: 41           deci
3752: 2B 17        jrncm    $373C
3754: 78 70 B0     call     $70B0
3757: F1 0B        cal      $110B
3759: 6B 08        test     $08
375B: 39 25        jrzm     $3737
375D: 79 7E E2     jp       $7EE2
3760: 24           ixl
3761: 89           lp       $09
3762: DB           exam
3763: 24           ixl
3764: 88           lp       $08
3765: DB           exam
3766: 03 00        lib      $00
3768: 02 04        lia      $04
376A: 15           sbb
376B: 05           dx
376C: 05           dx
376D: 00 04        lii      $04
376F: 8B           lp       $0B
3770: 60 00        anim     $00
3772: 37           rtn
3773: 10 C6 FC     lidp     $C6FC
3776: 82           lp       $02
3777: 1A           mvbd
3778: 11 CE        lidl     $CE
377A: 1A           mvbd
377B: 84           lp       $04
377C: 15           sbb
377D: 37           rtn
377E: 90           lp       $10
377F: 62 04        tsim     $04
3781: 28 09        jrnzp    $378B
3783: 02 76        lia      $76
3785: 78 7E 5B     call     $7E5B
3788: 7F 75 9A     jpc      $759A
378B: 78 77 60     call     $7760
378E: 24           ixl
378F: 78 7C 7D     call     $7C7D
3792: 41           deci
3793: 2B 06        jrncm    $378E
3795: 00 07        lii      $07
3797: 24           ixl
3798: 78 7C 7D     call     $7C7D
379B: 49           deck
379C: 2A 05        jrncp    $37A2
379E: C9           decl
379F: 7F 76 25     jpc      $7625
37A2: 41           deci
37A3: 2B 0D        jrncm    $3797
37A5: 2D 11        jrm      $3795
37A7: 90           lp       $10
37A8: 62 04        tsim     $04
37AA: 28 13        jrnzp    $37BE
37AC: 78 7E F8     call     $7EF8
37AF: 78 70 B7     call     $70B7
37B2: 02 42        lia      $42
37B4: 78 70 4E     call     $704E
37B7: F1 0B        cal      $110B
37B9: 78 70 8B     call     $708B
37BC: F1 0B        cal      $110B
37BE: 02 08        lia      $08
37C0: 03 00        lib      $00
37C2: 84           lp       $04
37C3: 14           adb
37C4: 00 04        lii      $04
37C6: 02 FE        lia      $FE
37C8: 78 70 4E     call     $704E
37CB: F1 0B        cal      $110B
37CD: 02 00        lia      $00
37CF: 41           deci
37D0: 2B 09        jrncm    $37C8
37D2: 02 D1        lia      $D1
37D4: 78 70 4E     call     $704E
37D7: F1 0B        cal      $110B
37D9: 37           rtn
37DA: 90           lp       $10
37DB: 62 04        tsim     $04
37DD: 28 09        jrnzp    $37E7
37DF: 02 76        lia      $76
37E1: 78 7E 5B     call     $7E5B
37E4: 2A 02        jrncp    $37E7
37E6: 37           rtn
37E7: 02 08        lia      $08
37E9: 03 00        lib      $00
37EB: 84           lp       $04
37EC: 14           adb
37ED: 00 04        lii      $04
37EF: 02 FE        lia      $FE
37F1: 78 7C 7D     call     $7C7D
37F4: 02 00        lia      $00
37F6: 41           deci
37F7: 2B 07        jrncm    $37F1
37F9: D1           rc
37FA: 37           rtn
37FB: 8B           lp       $0B
37FC: 60 00        anim     $00
37FE: 88           lp       $08
37FF: 02 07        lia      $07
3801: DB           exam
3802: 25           dxl
3803: 78 70 41     call     $7041
3806: 78 70 4E     call     $704E
3809: F1 0B        cal      $110B
380B: 49           deck
380C: 2B 0B        jrncm    $3802
380E: 78 70 B0     call     $70B0
3811: 37           rtn
3812: 10 C6 DE     lidp     $C6DE
3815: 57           ldd
3816: 89           lp       $09
3817: DB           exam
3818: 71 1B        sbim     $1B
381A: 10 C6 CE     lidp     $C6CE
381D: 84           lp       $04
381E: 01 01        lij      $01
3820: 1A           mvbd
3821: 24           ixl
3822: DA           exab
3823: 24           ixl
3824: 84           lp       $04
3825: 14           adb
3826: 04           ix
3827: 37           rtn
3828: E0 9F        cal      $009F
382A: 88           lp       $08
382B: 02 06        lia      $06
382D: DB           exam
382E: A0           lp       $20
382F: 02 F5        lia      $F5
3831: DB           exam
3832: 50           incp
3833: 24           ixl
3834: 67 12        cpia     $12
3836: 38 14        jrzp     $384B
3838: 67 00        cpia     $00
383A: 38 0F        jrzp     $384A
383C: DB           exam
383D: 50           incp
383E: 49           deck
383F: 2B 0D        jrncm    $3833
3841: 24           ixl
3842: 67 12        cpia     $12
3844: 38 06        jrzp     $384B
3846: 67 00        cpia     $00
3848: 29 08        jrnzm    $3841
384A: 05           dx
384B: D1           rc
384C: 37           rtn
384D: 02 31        lia      $31
384F: F1 0F        cal      $110F
3851: 43           deca
3852: 2B 04        jrncm    $384F
3854: 37           rtn
3855: F1 51        cal      $1151
3857: 91           lp       $11
3858: 60 EF        anim     $EF
385A: 95           lp       $15
385B: 61 40        orim     $40
385D: 79 75 4B     jp       $754B
3860: F1 66        cal      $1166
3862: D6 08        tsid     $08
3864: 28 06        jrnzp    $386B
3866: 78 78 28     call     $7828
3869: 2A 07        jrncp    $3871
386B: 94           lp       $14
386C: 02 01        lia      $01
386E: DB           exam
386F: D0           sc
3870: 37           rtn
3871: E1 F6        cal      $01F6
3873: 91           lp       $11
3874: 61 10        orim     $10
3876: 79 75 6C     jp       $756C
3879: 86           lp       $06
387A: DB           exam
387B: 87           lp       $07
387C: 02 C6        lia      $C6
387E: DB           exam
387F: 78 7A 51     call     $7A51
3882: 3A 1C        jrcp     $389F
3884: 8B           lp       $0B
3885: C7           cpma
3886: 38 0E        jrzp     $3895
3888: 02 08        lia      $08
388A: 94           lp       $14
388B: DB           exam
388C: 78 7F 0B     call     $7F0B
388F: F1 44        cal      $1144
3891: F1 25        cal      $1125
3893: D0           sc
3894: 37           rtn
3895: E0 A9        cal      $00A9
3897: A8           lp       $28
3898: 61 FE        orim     $FE
389A: 78 6C A6     call     $6CA6
389D: 2B 16        jrncm    $3888
389F: 02 08        lia      $08
38A1: 03 00        lib      $00
38A3: 86           lp       $06
38A4: 14           adb
38A5: 8B           lp       $0B
38A6: 60 00        anim     $00
38A8: 88           lp       $08
38A9: 02 07        lia      $07
38AB: DB           exam
38AC: 78 7A A4     call     $7AA4
38AF: 67 0F        cpia     $0F
38B1: 38 F0        jrzp     $39A2
38B3: 78 70 41     call     $7041
38B6: 27           dys
38B7: 49           deck
38B8: 2B 0D        jrncm    $38AC
38BA: 78 79 D8     call     $79D8
38BD: 8B           lp       $0B
38BE: C7           cpma
38BF: 29 38        jrnzm    $3888
38C1: C9           decl
38C2: 2B 1E        jrncm    $38A5
38C4: 10 C6 D8     lidp     $C6D8
38C7: D6 08        tsid     $08
38C9: 38 0C        jrzp     $38D6
38CB: 78 78 12     call     $7812
38CE: 13 04        liq      $04
38D0: 86           lp       $06
38D1: 01 01        lij      $01
38D3: 0A           mvb
38D4: 2C 11        jrp      $38E6
38D6: 10 C6 FC     lidp     $C6FC
38D9: 86           lp       $06
38DA: 01 01        lij      $01
38DC: 1A           mvbd
38DD: 11 DE        lidl     $DE
38DF: 02 1A        lia      $1A
38E1: 52           std
38E2: 89           lp       $09
38E3: 02 FF        lia      $FF
38E5: DB           exam
38E6: 90           lp       $10
38E7: 60 EF        anim     $EF
38E9: 8B           lp       $0B
38EA: 60 00        anim     $00
38EC: 88           lp       $08
38ED: 02 07        lia      $07
38EF: DB           exam
38F0: 78 7A A4     call     $7AA4
38F3: 67 0F        cpia     $0F
38F5: 38 4C        jrzp     $3942
38F7: 78 70 41     call     $7041
38FA: 27           dys
38FB: 10 C6 E3     lidp     $C6E3
38FE: 57           ldd
38FF: 86           lp       $06
3900: C7           cpma
3901: 28 0D        jrnzp    $390F
3903: 10 C6 E4     lidp     $C6E4
3906: 57           ldd
3907: 87           lp       $07
3908: C7           cpma
3909: 28 05        jrnzp    $390F
390B: 02 06        lia      $06
390D: 2D 84        jrm      $388A
390F: 49           deck
3910: 2B 21        jrncm    $38F0
3912: 90           lp       $10
3913: 61 10        orim     $10
3915: 78 79 D8     call     $79D8
3918: 8B           lp       $0B
3919: C7           cpma
391A: 29 93        jrnzm    $3888
391C: C9           decl
391D: 2B 35        jrncm    $38E9
391F: 78 77 73     call     $7773
3922: 28 07        jrnzp    $392A
3924: 11 D8        lidl     $D8
3926: D4 F7        anid     $F7
3928: 2D 40        jrm      $38E9
392A: 78 7A A4     call     $7AA4
392D: 67 0F        cpia     $0F
392F: 38 72        jrzp     $39A2
3931: 90           lp       $10
3932: 62 08        tsim     $08
3934: 28 6D        jrnzp    $39A2
3936: 6B 08        test     $08
3938: 39 0F        jrzm     $392A
393A: 78 7F 0B     call     $7F0B
393D: F1 44        cal      $1144
393F: 79 7E E5     jp       $7EE5
3942: 88           lp       $08
3943: 63 07        cpim     $07
3945: 29 BE        jrnzm    $3888
3947: 10 C6 D8     lidp     $C6D8
394A: D6 08        tsid     $08
394C: 28 55        jrnzp    $39A2
394E: 90           lp       $10
394F: 62 10        tsim     $10
3951: 38 50        jrzp     $39A2
3953: 60 EF        anim     $EF
3955: 11 FC        lidl     $FC
3957: 84           lp       $04
3958: 1A           mvbd
3959: 82           lp       $02
395A: 13 06        liq      $06
395C: 0A           mvb
395D: 15           sbb
395E: 3A 3E        jrcp     $399D
3960: 02 08        lia      $08
3962: 27           dys
3963: 02 00        lia      $00
3965: 27           dys
3966: 27           dys
3967: 02 FF        lia      $FF
3969: 89           lp       $09
396A: DB           exam
396B: 45           sbm
396C: 10 C6 DE     lidp     $C6DE
396F: 57           ldd
3970: 44           adm
3971: 7F 76 A7     jpc      $76A7
3974: 59           ldm
3975: 52           std
3976: 75 1A        sbia     $1A
3978: DB           exam
3979: 02 00        lia      $00
397B: DB           exam
397C: 00 02        lii      $02
397E: D1           rc
397F: 5A           sl
3980: DB           exam
3981: 5A           sl
3982: DB           exam
3983: 41           deci
3984: 2B 07        jrncm    $397E
3986: 74 03        adia     $03
3988: 27           dys
3989: 02 00        lia      $00
398B: C4           adcm
398C: 59           ldm
398D: 27           dys
398E: 02 51        lia      $51
3990: 27           dys
3991: 84           lp       $04
3992: 13 06        liq      $06
3994: 0A           mvb
3995: 84           lp       $04
3996: 10 C6 FC     lidp     $C6FC
3999: 1B           exbd
399A: 11 CE        lidl     $CE
399C: 1B           exbd
399D: 10 C6 D8     lidp     $C6D8
39A0: D5 08        orid     $08
39A2: F1 25        cal      $1125
39A4: 24           ixl
39A5: 67 1B        cpia     $1B
39A7: 28 0D        jrnzp    $39B5
39A9: 90           lp       $10
39AA: 62 08        tsim     $08
39AC: 7C 78 88     jpnz     $7888
39AF: 90           lp       $10
39B0: 61 04        orim     $04
39B2: 79 76 42     jp       $7642
39B5: 78 6C 82     call     $6C82
39B8: 3A 17        jrcp     $39D0
39BA: F1 66        cal      $1166
39BC: D6 08        tsid     $08
39BE: 38 08        jrzp     $39C7
39C0: 78 7D 2A     call     $7D2A
39C3: 67 0D        cpia     $0D
39C5: 29 06        jrnzm    $39C0
39C7: 78 7F 0B     call     $7F0B
39CA: F1 44        cal      $1144
39CC: F1 25        cal      $1125
39CE: D1           rc
39CF: 37           rtn
39D0: 78 7F 0B     call     $7F0B
39D3: F1 44        cal      $1144
39D5: 79 78 6B     jp       $786B
39D8: 78 7A A4     call     $7AA4
39DB: 01 01        lij      $01
39DD: F1 66        cal      $1166
39DF: D6 08        tsid     $08
39E1: 28 02        jrnzp    $39E4
39E3: 58           swp
39E4: 37           rtn
39E5: 06           iy
39E6: 79 78 7F     jp       $787F
39E9: 02 09        lia      $09
39EB: 03 00        lib      $00
39ED: 86           lp       $06
39EE: 14           adb
39EF: 78 7A 51     call     $7A51
39F2: 3A 0F        jrcp     $3A02
39F4: 8B           lp       $0B
39F5: C7           cpma
39F6: 28 0E        jrnzp    $3A05
39F8: E0 A9        cal      $00A9
39FA: A8           lp       $28
39FB: 61 FE        orim     $FE
39FD: 78 6C A6     call     $6CA6
3A00: 2A 04        jrncp    $3A05
3A02: 79 78 E6     jp       $78E6
3A05: 79 78 88     jp       $7888
3A08: 78 7A 51     call     $7A51
3A0B: 7F 78 8C     jpc      $788C
3A0E: 8B           lp       $0B
3A0F: C7           cpma
3A10: 29 0C        jrnzm    $3A05
3A12: 78 77 60     call     $7760
3A15: 04           ix
3A16: E0 A9        cal      $00A9
3A18: 00 04        lii      $04
3A1A: A8           lp       $28
3A1B: 18           mvwd
3A1C: 78 6C A6     call     $6CA6
3A1F: 2B 1B        jrncm    $3A05
3A21: 04           ix
3A22: 04           ix
3A23: 04           ix
3A24: 04           ix
3A25: 86           lp       $06
3A26: 13 04        liq      $04
3A28: 0A           mvb
3A29: 01 07        lij      $07
3A2B: 8B           lp       $0B
3A2C: 60 00        anim     $00
3A2E: 78 7A A4     call     $7AA4
3A31: 78 70 41     call     $7041
3A34: 26           iys
3A35: 49           deck
3A36: 2A 04        jrncp    $3A3B
3A38: C9           decl
3A39: 3A 0D        jrcp     $3A47
3A3B: C1           decj
3A3C: 2B 0F        jrncm    $3A2E
3A3E: 78 79 D8     call     $79D8
3A41: 8B           lp       $0B
3A42: C7           cpma
3A43: 39 1B        jrzm     $3A29
3A45: 2D 41        jrm      $3A05
3A47: 78 79 D8     call     $79D8
3A4A: 8B           lp       $0B
3A4B: C7           cpma
3A4C: 29 48        jrnzm    $3A05
3A4E: 79 79 A2     jp       $79A2
3A51: F1 66        cal      $1166
3A53: D6 08        tsid     $08
3A55: 28 35        jrnzp    $3A8B
3A57: 90           lp       $10
3A58: 62 04        tsim     $04
3A5A: 28 41        jrnzp    $3A9C
3A5C: E2 6A        cal      $026A
3A5E: 90           lp       $10
3A5F: 60 F7        anim     $F7
3A61: 78 74 16     call     $7416
3A64: 67 08        cpia     $08
3A66: 28 0D        jrnzp    $3A74
3A68: 78 74 16     call     $7416
3A6B: 67 0F        cpia     $0F
3A6D: 29 0A        jrnzm    $3A64
3A6F: 90           lp       $10
3A70: 61 08        orim     $08
3A72: 2C 0C        jrp      $3A7F
3A74: 67 02        cpia     $02
3A76: 29 19        jrnzm    $3A5E
3A78: 78 74 16     call     $7416
3A7B: 67 04        cpia     $04
3A7D: 29 1A        jrnzm    $3A64
3A7F: 78 74 64     call     $7464
3A82: 3B 25        jrcm     $3A5E
3A84: 90           lp       $10
3A85: 62 08        tsim     $08
3A87: 38 14        jrzp     $3A9C
3A89: D0           sc
3A8A: 37           rtn
3A8B: 90           lp       $10
3A8C: 60 F7        anim     $F7
3A8E: 62 04        tsim     $04
3A90: 28 0B        jrnzp    $3A9C
3A92: 02 7B        lia      $7B
3A94: 78 7E 5B     call     $7E5B
3A97: 2A 04        jrncp    $3A9C
3A99: 5B           pop
3A9A: 5B           pop
3A9B: 37           rtn
3A9C: 78 7A B9     call     $7AB9
3A9F: 78 79 D8     call     $79D8
3AA2: D1           rc
3AA3: 37           rtn
3AA4: F1 66        cal      $1166
3AA6: D6 08        tsid     $08
3AA8: 7C 7D 2A     jpnz     $7D2A
3AAB: 79 72 B1     jp       $72B1
3AAE: 90           lp       $10
3AAF: 60 3F        anim     $3F
3AB1: 8E           lp       $0E
3AB2: 02 37        lia      $37
3AB4: DB           exam
3AB5: 02 07        lia      $07
3AB7: 2C 0C        jrp      $3AC4
3AB9: E0 AF        cal      $00AF
3ABB: 8E           lp       $0E
3ABC: 02 30        lia      $30
3ABE: DB           exam
3ABF: 90           lp       $10
3AC0: 61 80        orim     $80
3AC2: 02 04        lia      $04
3AC4: 88           lp       $08
3AC5: DB           exam
3AC6: 8B           lp       $0B
3AC7: 60 00        anim     $00
3AC9: 90           lp       $10
3ACA: 62 80        tsim     $80
3ACC: 38 06        jrzp     $3AD3
3ACE: 78 7A A4     call     $7AA4
3AD1: 2C 11        jrp      $3AE3
3AD3: 78 72 B1     call     $72B1
3AD6: 90           lp       $10
3AD7: 62 40        tsim     $40
3AD9: 38 09        jrzp     $3AE3
3ADB: 66 F0        tsia     $F0
3ADD: 28 05        jrnzp    $3AE3
3ADF: 66 FF        tsia     $FF
3AE1: 29 40        jrnzm    $3AA2
3AE3: 78 70 41     call     $7041
3AE6: 34           push
3AE7: 8E           lp       $0E
3AE8: 59           ldm
3AE9: 30           stp
3AEA: 5B           pop
3AEB: DB           exam
3AEC: 90           lp       $10
3AED: 62 80        tsim     $80
3AEF: 38 06        jrzp     $3AF6
3AF1: 8E           lp       $0E
3AF2: 70 01        adim     $01
3AF4: 2C 04        jrp      $3AF9
3AF6: 8E           lp       $0E
3AF7: 71 01        sbim     $01
3AF9: 49           deck
3AFA: 2B 32        jrncm    $3AC9
3AFC: 37           rtn
3AFD: F1 51        cal      $1151
3AFF: F1 5E        cal      $115E
3B01: D6 04        tsid     $04
3B03: 38 05        jrzp     $3B09
3B05: 02 01        lia      $01
3B07: 2C 8F        jrp      $3B97
3B09: 10 C6 BB     lidp     $C6BB
3B0C: D6 04        tsid     $04
3B0E: 7E 7C 52     jpz      $7C52
3B11: 11 D9        lidl     $D9
3B13: D6 20        tsid     $20
3B15: 7C 7C 52     jpnz     $7C52
3B18: 11 E1        lidl     $E1
3B1A: 88           lp       $08
3B1B: 1A           mvbd
3B1C: 02 01        lia      $01
3B1E: 03 00        lib      $00
3B20: 88           lp       $08
3B21: 14           adb
3B22: 82           lp       $02
3B23: 11 E3        lidl     $E3
3B25: 1A           mvbd
3B26: 88           lp       $08
3B27: 15           sbb
3B28: 7E 7C 52     jpz      $7C52
3B2B: 11 D7        lidl     $D7
3B2D: D5 04        orid     $04
3B2F: 11 D9        lidl     $D9
3B31: D5 08        orid     $08
3B33: 24           ixl
3B34: 67 00        cpia     $00
3B36: 28 4D        jrnzp    $3B84
3B38: 10 C6 E1     lidp     $C6E1
3B3B: 98           lp       $18
3B3C: 01 01        lij      $01
3B3E: 1A           mvbd
3B3F: 02 01        lia      $01
3B41: 03 00        lib      $00
3B43: 98           lp       $18
3B44: 14           adb
3B45: F1 18        cal      $1118
3B47: 78 7D F7     call     $7DF7
3B4A: 2A 0B        jrncp    $3B56
3B4C: 02 08        lia      $08
3B4E: 94           lp       $14
3B4F: DB           exam
3B50: F1 44        cal      $1144
3B52: F1 25        cal      $1125
3B54: D0           sc
3B55: 37           rtn
3B56: F1 6A        cal      $116A
3B58: D4 DF        anid     $DF
3B5A: 78 61 F8     call     $61F8
3B5D: 02 03        lia      $03
3B5F: 78 7C 7D     call     $7C7D
3B62: 78 7C 0C     call     $7C0C
3B65: 2B 10        jrncm    $3B56
3B67: F1 66        cal      $1166
3B69: D6 04        tsid     $04
3B6B: 38 06        jrzp     $3B72
3B6D: 02 0D        lia      $0D
3B6F: 78 7C 7D     call     $7C7D
3B72: 78 7C EE     call     $7CEE
3B75: F1 44        cal      $1144
3B77: 78 7F BB     call     $7FBB
3B7A: 84           lp       $04
3B7B: 02 FE        lia      $FE
3B7D: DB           exam
3B7E: 85           lp       $05
3B7F: 02 C7        lia      $C7
3B81: DB           exam
3B82: D1           rc
3B83: 37           rtn
3B84: 05           dx
3B85: F2 05        cal      $1205
3B87: 3A 11        jrcp     $3B99
3B89: F1 18        cal      $1118
3B8B: 78 5D FB     call     $5DFB
3B8E: F1 25        cal      $1125
3B90: 9A           lp       $1A
3B91: 63 00        cpim     $00
3B93: 28 0A        jrnzp    $3B9E
3B95: 02 04        lia      $04
3B97: 94           lp       $14
3B98: DB           exam
3B99: 78 7F BB     call     $7FBB
3B9C: D0           sc
3B9D: 37           rtn
3B9E: 24           ixl
3B9F: 67 1B        cpia     $1B
3BA1: 29 9D        jrnzm    $3B05
3BA3: F2 05        cal      $1205
3BA5: 3B 0D        jrcm     $3B99
3BA7: F1 18        cal      $1118
3BA9: A4           lp       $24
3BAA: 63 D0        cpim     $D0
3BAC: 39 A8        jrzm     $3B05
3BAE: 78 7B EC     call     $7BEC
3BB1: 78 5D FB     call     $5DFB
3BB4: F1 25        cal      $1125
3BB6: 9A           lp       $1A
3BB7: 63 00        cpim     $00
3BB9: 39 25        jrzm     $3B95
3BBB: 2C 01        jrp      $3BBD
3BBD: 24           ixl
3BBE: 67 00        cpia     $00
3BC0: 29 BC        jrnzm    $3B05
3BC2: 05           dx
3BC3: F1 18        cal      $1118
3BC5: 78 7D F7     call     $7DF7
3BC8: 3B 7D        jrcm     $3B4C
3BCA: 10 C6 B9     lidp     $C6B9
3BCD: 98           lp       $18
3BCE: 01 01        lij      $01
3BD0: 1B           exbd
3BD1: 78 7B F9     call     $7BF9
3BD4: 2B D0        jrncm    $3B05
3BD6: F1 6A        cal      $116A
3BD8: D4 DF        anid     $DF
3BDA: 78 61 F8     call     $61F8
3BDD: 02 03        lia      $03
3BDF: 78 7C 7D     call     $7C7D
3BE2: 78 7B F9     call     $7BF9
3BE5: 2B 7F        jrncm    $3B67
3BE7: 78 7C 0C     call     $7C0C
3BEA: 2D 15        jrm      $3BD6
3BEC: 10 C6 B9     lidp     $C6B9
3BEF: 98           lp       $18
3BF0: 01 01        lij      $01
3BF2: 1B           exbd
3BF3: 10 C6 B9     lidp     $C6B9
3BF6: 98           lp       $18
3BF7: 1A           mvbd
3BF8: 37           rtn
3BF9: 10 C6 B9     lidp     $C6B9
3BFC: 82           lp       $02
3BFD: 01 01        lij      $01
3BFF: 1A           mvbd
3C00: 98           lp       $18
3C01: 15           sbb
3C02: 2A 05        jrncp    $3C08
3C04: 98           lp       $18
3C05: 14           adb
3C06: D0           sc
3C07: 37           rtn
3C08: 98           lp       $18
3C09: 14           adb
3C0A: D1           rc
3C0B: 37           rtn
3C0C: 78 7C F4     call     $7CF4
3C0F: 13 18        liq      $18
3C11: 84           lp       $04
3C12: 0A           mvb
3C13: 04           ix
3C14: 24           ixl
3C15: 67 00        cpia     $00
3C17: 29 04        jrnzm    $3C14
3C19: 24           ixl
3C1A: 67 FF        cpia     $FF
3C1C: 28 04        jrnzp    $3C21
3C1E: D0           sc
3C1F: 2C 02        jrp      $3C22
3C21: D1           rc
3C22: 13 04        liq      $04
3C24: 98           lp       $18
3C25: 0A           mvb
3C26: 37           rtn
3C27: F1 51        cal      $1151
3C29: F1 66        cal      $1166
3C2B: D6 04        tsid     $04
3C2D: 38 1E        jrzp     $3C4C
3C2F: 02 73        lia      $73
3C31: 78 7E 5B     call     $7E5B
3C34: 3A 1D        jrcp     $3C52
3C36: F1 25        cal      $1125
3C38: 10 C6 D7     lidp     $C6D7
3C3B: D5 04        orid     $04
3C3D: 78 5A 78     call     $5A78
3C40: 78 56 C7     call     $56C7
3C43: 10 C6 D7     lidp     $C6D7
3C46: D4 FB        anid     $FB
3C48: 78 7E 08     call     $7E08
3C4B: 37           rtn
3C4C: 11 BB        lidl     $BB
3C4E: D6 04        tsid     $04
3C50: 29 19        jrnzm    $3C38
3C52: 78 51 26     call     $5126
3C55: D1           rc
3C56: 37           rtn
3C57: F1 51        cal      $1151
3C59: 10 C6 D7     lidp     $C6D7
3C5C: D4 FB        anid     $FB
3C5E: F1 66        cal      $1166
3C60: D6 02        tsid     $02
3C62: 38 18        jrzp     $3C7B
3C64: 02 72        lia      $72
3C66: 78 7E 5B     call     $7E5B
3C69: 2A 07        jrncp    $3C71
3C6B: 02 08        lia      $08
3C6D: 94           lp       $14
3C6E: DB           exam
3C6F: D0           sc
3C70: 37           rtn
3C71: 78 5C CF     call     $5CCF
3C74: 10 C6 D7     lidp     $C6D7
3C77: D5 20        orid     $20
3C79: F1 25        cal      $1125
3C7B: D1           rc
3C7C: 37           rtn
3C7D: 10 C6 B4     lidp     $C6B4
3C80: 52           std
3C81: 12 5D        lip      $5D
3C83: 60 3F        anim     $3F
3C85: DD           outb
3C86: 12 5E        lip      $5E
3C88: 60 FE        anim     $FE
3C8A: 5F           outf
3C8B: 02 07        lia      $07
3C8D: 34           push
3C8E: 10 C6 B4     lidp     $C6B4
3C91: 57           ldd
3C92: D2           sr
3C93: 52           std
3C94: 12 5E        lip      $5E
3C96: 60 FD        anim     $FD
3C98: 2A 03        jrncp    $3C9C
3C9A: 61 02        orim     $02
3C9C: 5F           outf
3C9D: 12 5D        lip      $5D
3C9F: 62 20        tsim     $20
3CA1: 38 15        jrzp     $3CB7
3CA3: 03 05        lib      $05
3CA5: 78 7D 0C     call     $7D0C
3CA8: 2A 11        jrncp    $3CBA
3CAA: 66 80        tsia     $80
3CAC: 39 0A        jrzm     $3CA3
3CAE: 6B 01        test     $01
3CB0: 39 0C        jrzm     $3CA5
3CB2: C3           decb
3CB3: 2B 0F        jrncm    $3CA5
3CB5: 2C 30        jrp      $3CE6
3CB7: 78 7C EE     call     $7CEE
3CBA: 12 5E        lip      $5E
3CBC: 61 01        orim     $01
3CBE: 5F           outf
3CBF: 12 5D        lip      $5D
3CC1: 62 20        tsim     $20
3CC3: 38 11        jrzp     $3CD5
3CC5: 03 05        lib      $05
3CC7: 78 7D 1C     call     $7D1C
3CCA: 2A 0D        jrncp    $3CD8
3CCC: 6B 01        test     $01
3CCE: 39 08        jrzm     $3CC7
3CD0: C3           decb
3CD1: 2B 0B        jrncm    $3CC7
3CD3: 2C 12        jrp      $3CE6
3CD5: 78 7D 06     call     $7D06
3CD8: 12 5E        lip      $5E
3CDA: 60 FE        anim     $FE
3CDC: 5F           outf
3CDD: 2F 50        loop     $3C8E
3CDF: CC           inb
3CE0: 66 80        tsia     $80
3CE2: 28 04        jrnzp    $3CE7
3CE4: D1           rc
3CE5: 37           rtn
3CE6: 5B           pop
3CE7: 5B           pop
3CE8: 79 7E A5     jp       $7EA5
3CEB: 78 7C F4     call     $7CF4
3CEE: 78 7D 0C     call     $7D0C
3CF1: 3B 07        jrcm     $3CEB
3CF3: 37           rtn
3CF4: 6B 08        test     $08
3CF6: 38 21        jrzp     $3D18
3CF8: 4E 5E        wait     $5E
3CFA: 6B 08        test     $08
3CFC: 38 1B        jrzp     $3D18
3CFE: F1 44        cal      $1144
3D00: 79 7E E5     jp       $7EE5
3D03: 78 7C F4     call     $7CF4
3D06: 78 7D 1C     call     $7D1C
3D09: 3B 07        jrcm     $3D03
3D0B: 37           rtn
3D0C: CC           inb
3D0D: 66 40        tsia     $40
3D0F: 28 0A        jrnzp    $3D1A
3D11: 4E 00        wait     $00
3D13: CC           inb
3D14: 66 40        tsia     $40
3D16: 28 03        jrnzp    $3D1A
3D18: D1           rc
3D19: 37           rtn
3D1A: D0           sc
3D1B: 37           rtn
3D1C: CC           inb
3D1D: 66 40        tsia     $40
3D1F: 39 06        jrzm     $3D1A
3D21: 4E 00        wait     $00
3D23: CC           inb
3D24: 66 40        tsia     $40
3D26: 39 0D        jrzm     $3D1A
3D28: D1           rc
3D29: 37           rtn
3D2A: 12 5D        lip      $5D
3D2C: 60 3F        anim     $3F
3D2E: DD           outb
3D2F: 12 5E        lip      $5E
3D31: 60 FE        anim     $FE
3D33: 5F           outf
3D34: 10 C6 B4     lidp     $C6B4
3D37: D4 00        anid     $00
3D39: 02 07        lia      $07
3D3B: 34           push
3D3C: 78 7D 06     call     $7D06
3D3F: CC           inb
3D40: 66 80        tsia     $80
3D42: 38 04        jrzp     $3D47
3D44: D0           sc
3D45: 2C 02        jrp      $3D48
3D47: D1           rc
3D48: 10 C6 B4     lidp     $C6B4
3D4B: 57           ldd
3D4C: D2           sr
3D4D: 52           std
3D4E: 12 5E        lip      $5E
3D50: 61 01        orim     $01
3D52: 5F           outf
3D53: 78 7C EE     call     $7CEE
3D56: 12 5E        lip      $5E
3D58: 60 FE        anim     $FE
3D5A: 5F           outf
3D5B: 2F 20        loop     $3D3C
3D5D: 10 C6 B4     lidp     $C6B4
3D60: 57           ldd
3D61: 37           rtn
3D62: 10 C6 D7     lidp     $C6D7
3D65: D6 04        tsid     $04
3D67: 38 09        jrzp     $3D71
3D69: 11 B7        lidl     $B7
3D6B: D6 04        tsid     $04
3D6D: 38 07        jrzp     $3D75
3D6F: D0           sc
3D70: 37           rtn
3D71: D6 20        tsid     $20
3D73: 29 05        jrnzm    $3D6F
3D75: D1           rc
3D76: 37           rtn
3D77: 10 C6 D7     lidp     $C6D7
3D7A: D6 24        tsid     $24
3D7C: 28 03        jrnzp    $3D80
3D7E: F1 51        cal      $1151
3D80: 10 C6 C2     lidp     $C6C2
3D83: 84           lp       $04
3D84: 1B           exbd
3D85: 78 7D 62     call     $7D62
3D88: 3A 04        jrcp     $3D8D
3D8A: 78 7D FE     call     $7DFE
3D8D: 88           lp       $08
3D8E: 02 17        lia      $17
3D90: DB           exam
3D91: 10 C6 BE     lidp     $C6BE
3D94: 02 20        lia      $20
3D96: 52           std
3D97: 10 C6 BE     lidp     $C6BE
3D9A: 57           ldd
3D9B: 30           stp
3D9C: 42           inca
3D9D: 52           std
3D9E: 59           ldm
3D9F: 67 4F        cpia     $4F
3DA1: 38 18        jrzp     $3DBA
3DA3: 78 7D 62     call     $7D62
3DA6: 2A 09        jrncp    $3DB0
3DA8: 78 7C 7D     call     $7C7D
3DAB: 49           deck
3DAC: 2B 16        jrncm    $3D97
3DAE: 2C 27        jrp      $3DD6
3DB0: EF E2        cal      $0FE2
3DB2: 78 7C 7D     call     $7C7D
3DB5: 49           deck
3DB6: 2B 20        jrncm    $3D97
3DB8: 2C 0E        jrp      $3DC7
3DBA: 78 7D 62     call     $7D62
3DBD: 3A 18        jrcp     $3DD6
3DBF: 02 20        lia      $20
3DC1: 78 7C 7D     call     $7C7D
3DC4: 49           deck
3DC5: 2B 07        jrncm    $3DBF
3DC7: 02 0D        lia      $0D
3DC9: 78 7C 7D     call     $7C7D
3DCC: 10 C6 D7     lidp     $C6D7
3DCF: D6 04        tsid     $04
3DD1: 28 04        jrnzp    $3DD6
3DD3: 78 7E 08     call     $7E08
3DD6: 10 C6 C2     lidp     $C6C2
3DD9: 84           lp       $04
3DDA: 1A           mvbd
3DDB: D1           rc
3DDC: 37           rtn
3DDD: 78 7D 62     call     $7D62
3DE0: 2A 14        jrncp    $3DF5
3DE2: 02 0D        lia      $0D
3DE4: 78 7C 7D     call     $7C7D
3DE7: 78 7C EE     call     $7CEE
3DEA: F1 44        cal      $1144
3DEC: F1 66        cal      $1166
3DEE: D6 02        tsid     $02
3DF0: 38 04        jrzp     $3DF5
3DF2: 78 62 F1     call     $62F1
3DF5: D1           rc
3DF6: 37           rtn
3DF7: F1 66        cal      $1166
3DF9: D6 04        tsid     $04
3DFB: 28 5D        jrnzp    $3E59
3DFD: D1           rc
3DFE: 12 5D        lip      $5D
3E00: 60 0F        anim     $0F
3E02: 61 20        orim     $20
3E04: DD           outb
3E05: 4E DC        wait     $DC
3E07: 37           rtn
3E08: 12 5D        lip      $5D
3E0A: 60 0F        anim     $0F
3E0C: 2D 09        jrm      $3E04
3E0E: 4E C8        wait     $C8
3E10: 12 5E        lip      $5E
3E12: 60 FC        anim     $FC
3E14: 5F           outf
3E15: 51           decp
3E16: 60 0F        anim     $0F
3E18: 61 20        orim     $20
3E1A: DD           outb
3E1B: 61 30        orim     $30
3E1D: DD           outb
3E1E: 4E FF        wait     $FF
3E20: 37           rtn
3E21: 78 7E 0E     call     $7E0E
3E24: 78 7D FE     call     $7DFE
3E27: 10 C6 BB     lidp     $C6BB
3E2A: D4 FB        anid     $FB
3E2C: 03 0C        lib      $0C
3E2E: CC           inb
3E2F: 66 40        tsia     $40
3E31: 38 06        jrzp     $3E38
3E33: C3           decb
3E34: 2B 07        jrncm    $3E2E
3E36: 2C 19        jrp      $3E50
3E38: 03 0C        lib      $0C
3E3A: 50           incp
3E3B: 61 01        orim     $01
3E3D: 5F           outf
3E3E: CC           inb
3E3F: 66 40        tsia     $40
3E41: 38 08        jrzp     $3E4A
3E43: 78 7E 0E     call     $7E0E
3E46: D5 04        orid     $04
3E48: 2C 0C        jrp      $3E55
3E4A: C3           decb
3E4B: 2B 0E        jrncm    $3E3E
3E4D: 60 FE        anim     $FE
3E4F: 5F           outf
3E50: 10 F8 3C     lidp     $F83C
3E53: D4 FD        anid     $FD
3E55: 78 7E 08     call     $7E08
3E58: 37           rtn
3E59: 02 74        lia      $74
3E5B: 10 C6 B4     lidp     $C6B4
3E5E: 52           std
3E5F: 78 7D FE     call     $7DFE
3E62: 50           incp
3E63: 60 FC        anim     $FC
3E65: 5F           outf
3E66: 03 E5        lib      $E5
3E68: 78 7D 0C     call     $7D0C
3E6B: 2A 08        jrncp    $3E74
3E6D: F1 0B        cal      $110B
3E6F: C3           decb
3E70: 2B 09        jrncm    $3E68
3E72: 2C 33        jrp      $3EA6
3E74: 78 7E 0E     call     $7E0E
3E77: 60 2F        anim     $2F
3E79: DD           outb
3E7A: 60 0F        anim     $0F
3E7C: DD           outb
3E7D: 4E FF        wait     $FF
3E7F: 02 07        lia      $07
3E81: 34           push
3E82: 10 C6 B4     lidp     $C6B4
3E85: 57           ldd
3E86: D2           sr
3E87: 52           std
3E88: 12 5E        lip      $5E
3E8A: 60 FD        anim     $FD
3E8C: 2A 03        jrncp    $3E90
3E8E: 61 02        orim     $02
3E90: 5F           outf
3E91: 78 7C EE     call     $7CEE
3E94: 12 5E        lip      $5E
3E96: 61 01        orim     $01
3E98: 5F           outf
3E99: 03 10        lib      $10
3E9B: 78 7D 1C     call     $7D1C
3E9E: 2A 10        jrncp    $3EAF
3EA0: F1 0B        cal      $110B
3EA2: C3           decb
3EA3: 2B 09        jrncm    $3E9B
3EA5: 5B           pop
3EA6: F1 44        cal      $1144
3EA8: 94           lp       $14
3EA9: 02 08        lia      $08
3EAB: DB           exam
3EAC: D0           sc
3EAD: 2C 43        jrp      $3EF1
3EAF: 12 5E        lip      $5E
3EB1: 60 FE        anim     $FE
3EB3: 5F           outf
3EB4: 2F 33        loop     $3E82
3EB6: CC           inb
3EB7: 66 80        tsia     $80
3EB9: 29 14        jrnzm    $3EA6
3EBB: 79 7C EE     jp       $7CEE
3EBE: 02 2D        lia      $2D
3EC0: 2C 03        jrp      $3EC4
3EC2: 02 2E        lia      $2E
3EC4: 8E           lp       $0E
3EC5: DB           exam
3EC6: 59           ldm
3EC7: 78 7E 5B     call     $7E5B
3ECA: 3A 13        jrcp     $3EDE
3ECC: 78 7D 2A     call     $7D2A
3ECF: 8E           lp       $0E
3ED0: C7           cpma
3ED1: 28 0C        jrnzp    $3EDE
3ED3: 78 7D 2A     call     $7D2A
3ED6: 67 0D        cpia     $0D
3ED8: 28 05        jrnzp    $3EDE
3EDA: F1 44        cal      $1144
3EDC: D0           sc
3EDD: 37           rtn
3EDE: F1 44        cal      $1144
3EE0: D1           rc
3EE1: 37           rtn
3EE2: 78 7F 0B     call     $7F0B
3EE5: 10 C6 B3     lidp     $C6B3
3EE8: 57           ldd
3EE9: 32           str
3EEA: 78 72 91     call     $7291
3EED: 95           lp       $15
3EEE: 61 20        orim     $20
3EF0: D1           rc
3EF1: F1 25        cal      $1125
3EF3: 11 D7        lidl     $D7
3EF5: D4 DB        anid     $DB
3EF7: 37           rtn
3EF8: 10 C6 D7     lidp     $C6D7
3EFB: D6 01        tsid     $01
3EFD: 28 0C        jrnzp    $3F0A
3EFF: D5 01        orid     $01
3F01: 12 5D        lip      $5D
3F03: 60 0F        anim     $0F
3F05: 61 10        orim     $10
3F07: DD           outb
3F08: 4E BA        wait     $BA
3F0A: 37           rtn
3F0B: 10 C6 D7     lidp     $C6D7
3F0E: D6 01        tsid     $01
3F10: 38 0F        jrzp     $3F20
3F12: D4 FE        anid     $FE
3F14: 12 5F        lip      $5F
3F16: 60 01        anim     $01
3F18: DF           outc
3F19: 12 5D        lip      $5D
3F1B: 60 0F        anim     $0F
3F1D: DD           outb
3F1E: 4E BA        wait     $BA
3F20: 37           rtn
3F21: 12 5E        lip      $5E
3F23: 60 FC        anim     $FC
3F25: 5F           outf
3F26: 50           incp
3F27: 60 01        anim     $01
3F29: DF           outc
3F2A: 78 7D FE     call     $7DFE
3F2D: 79 7E 08     jp       $7E08
3F30: 10 F8 B0     lidp     $F8B0
3F33: A0           lp       $20
3F34: 00 07        lii      $07
3F36: 19           exwd
3F37: 10 F8 B0     lidp     $F8B0
3F3A: A0           lp       $20
3F3B: 18           mvwd
3F3C: A0           lp       $20
3F3D: 02 99        lia      $99
3F3F: DB           exam
3F40: A1           lp       $21
3F41: 02 90        lia      $90
3F43: DB           exam
3F44: 37           rtn
3F45: EB 0A        cal      $0B0A
3F47: 91           lp       $11
3F48: 62 01        tsim     $01
3F4A: 38 04        jrzp     $3F4F
3F4C: 78 7F 30     call     $7F30
3F4F: E1 F6        cal      $01F6
3F51: 78 7F 37     call     $7F37
3F54: EA E1        cal      $0AE1
3F56: E0 A9        cal      $00A9
3F58: AA           lp       $2A
3F59: 61 23        orim     $23
3F5B: A9           lp       $29
3F5C: 61 10        orim     $10
3F5E: E3 6B        cal      $036B
3F60: A0           lp       $20
3F61: 62 F0        tsim     $F0
3F63: 28 07        jrnzp    $3F6B
3F65: E1 04        cal      $0104
3F67: E1 DA        cal      $01DA
3F69: 2B 05        jrncm    $3F65
3F6B: E0 A9        cal      $00A9
3F6D: AF           lp       $2F
3F6E: 61 01        orim     $01
3F70: E1 82        cal      $0182
3F72: 78 7F 30     call     $7F30
3F75: E3 30        cal      $0330
3F77: B8           lp       $38
3F78: 62 F0        tsim     $F0
3F7A: 28 14        jrnzp    $3F8F
3F7C: BA           lp       $3A
3F7D: 62 FF        tsim     $FF
3F7F: 38 0F        jrzp     $3F8F
3F81: E2 6A        cal      $026A
3F83: E3 6B        cal      $036B
3F85: EA F9        cal      $0AF9
3F87: EC DE        cal      $0CDE
3F89: E1 2F        cal      $012F
3F8B: EB 50        cal      $0B50
3F8D: D1           rc
3F8E: 37           rtn
3F8F: EA F9        cal      $0AF9
3F91: D1           rc
3F92: 37           rtn
3F93: 78 6E DF     call     $6EDF
3F96: 3A 0F        jrcp     $3FA6
3F98: 13 0E        liq      $0E
3F9A: 84           lp       $04
3F9B: 0A           mvb
3F9C: 05           dx
3F9D: 24           ixl
3F9E: A8           lp       $28
3F9F: DB           exam
3FA0: A9           lp       $29
3FA1: 60 00        anim     $00
3FA3: ED 42        cal      $0D42
3FA5: D1           rc
3FA6: 37           rtn
3FA7: 10 C6 B3     lidp     $C6B3
3FAA: 00 08        lii      $08
3FAC: 02 00        lia      $00
3FAE: 1F           fild
3FAF: 10 C6 D7     lidp     $C6D7
3FB2: D4 CA        anid     $CA
3FB4: 78 7E 21     call     $7E21
3FB7: 92           lp       $12
3FB8: 60 8F        anim     $8F
3FBA: 37           rtn
3FBB: 10 C6 D7     lidp     $C6D7
3FBE: D4 FB        anid     $FB
3FC0: 37           rtn
3FC1: EA E1        cal      $0AE1
3FC3: EA 69        cal      $0A69
3FC5: E3 30        cal      $0330
3FC7: E2 78        cal      $0278
3FC9: EA A0        cal      $0AA0
3FCB: E2 84        cal      $0284
3FCD: E3 A5        cal      $03A5
3FCF: 91           lp       $11
3FD0: 60 FB        anim     $FB
3FD2: 62 01        tsim     $01
3FD4: 38 03        jrzp     $3FD8
3FD6: 61 04        orim     $04
3FD8: E1 F3        cal      $01F3
3FDA: E2 06        cal      $0206
3FDC: EA 63        cal      $0A63
3FDE: E3 30        cal      $0330
3FE0: E2 78        cal      $0278
3FE2: 91           lp       $11
3FE3: 60 FD        anim     $FD
3FE5: 62 04        tsim     $04
3FE7: 38 03        jrzp     $3FEB
3FE9: 61 02        orim     $02
3FEB: 13 30        liq      $30
3FED: A8           lp       $28
3FEE: E2 02        cal      $0202
3FF0: E2 EB        cal      $02EB
3FF2: EA A0        cal      $0AA0
3FF4: E2 84        cal      $0284
3FF6: E3 A5        cal      $03A5
3FF8: 79 0A 59     jp       $0A59
3FFB: A5           lp       $25
3FFC: 79 0A 59     jp       $0A59
3FFF: F0 00        cal      $1000
