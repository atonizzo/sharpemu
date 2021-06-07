0000: 79 7E 47     jp       $7E47
0003: 79 6C B4     jp       $6CB4
0006: 79 6B D9     jp       $6BD9
0009: 79 59 43     jp       $5943
000C: 79 69 D9     jp       $69D9
000F: 79 6A B3     jp       $6AB3
0012: 79 6A D9     jp       $6AD9
0015: 79 6B 01     jp       $6B01
0018: 79 7E 6B     jp       $7E6B
001B: 79 7E B9     jp       $7EB9
001E: 79 47 2D     jp       $472D
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
0131: 50           incp
0132: 6A           ???
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
0163: 50           incp
0164: 84           lp       $04
0165: F4 53        cal      $1453
0167: 5F           outf
0168: 5E           ???
0169: 64 B4        ania     $B4
016B: 50           incp
016C: B6           lp       $36
016D: C5           sbcm
016E: 53           mvdm
016F: 5C           ???
0170: 55           mvmd
0171: 51           decp
0172: 62 C5        tsim     $C5
0174: 50           incp
0175: D9           ???
0176: E5 53        cal      $0553
0178: 5C           ???
0179: 5F           outf
017A: 51           decp
017B: 54           readm
017C: B7           lp       $37
017D: 70 51        adim     $51
017F: C5           sbcm
0180: 53           mvdm
0181: 63 51        cpim     $51
0183: 66 55        tsia     $55
0185: B6           lp       $36
0186: 6D           ???
0187: C7           cpma
0188: E5 53        cal      $0553
018A: 58           swp
018B: 51           decp
018C: 59           ldm
018D: 5E           ???
018E: D9           ???
018F: 73           ???
0190: 9F           lp       $1F
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
01B7: 50           incp
01B8: EF F3        cal      $0FF3
01BA: 54           readm
01BB: 59           ldm
01BC: 5D           outa
01BD: CA           incn
01BE: 51           decp
01BF: 10 E6 54     lidp     $E654
01C2: 55           mvmd
01C3: 57           ldd
01C4: 62 55        tsim     $55
01C6: 55           mvmd
01C7: C4           adcm
01C8: 51           decp
01C9: BB           lp       $3B
01CA: E3 54        cal      $0354
01CC: 55           mvmd
01CD: 57           ldd
01CE: AC           lp       $2C
01CF: 7E E7 A3     jpz      $E7A3
01D2: 54           readm
01D3: 5D           outa
01D4: 63 AD        cpim     $AD
01D6: 0A           mvb
01D7: 3A A4        jrcp     $027C
01D9: 54           readm
01DA: 51           decp
01DB: 64 51        ania     $51
01DD: CB           decn
01DE: 50           incp
01DF: 6A           ???
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
01ED: D4 51        anid     $51
01EF: C5           sbcm
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
0205: 51           decp
0206: CE           nopt
0207: B4           lp       $34
0208: 57           ldd
0209: 5F           outf
020A: 64 5F        ania     $5F
020C: D7           ???
020D: 52           std
020E: 5D           outa
020F: E5 57        cal      $0557
0211: 5F           outf
0212: 63 65        cpim     $65
0214: 52           std
0215: D8           leave
0216: 52           std
0217: 82           lp       $02
0218: A4           lp       $24
0219: 57           ldd
021A: 62 51        tsim     $51
021C: 54           readm
021D: C0           incj
021E: 52           std
021F: A6           lp       $26
0220: F5 59        cal      $1559
0222: 5E           ???
0223: 60 65        anim     $65
0225: 64 C2        ania     $C2
0227: 52           std
0228: B2           lp       $32
0229: E2 59        cal      $0259
022B: 56           read
022C: D0           sc
022D: 53           mvdm
022E: 49           deck
022F: A6           lp       $26
0230: 59           ldm
0231: 5E           ???
0232: 63 64        cpim     $64
0234: 51           decp
0235: 64 BF        ania     $BF
0237: 6B D9        test     $D9
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
024F: 6C 5F F4     .case    $6C, $5FF4
0252: 5C 59 63     .case    $5C, $5963
0255: 64 B3 53     .case    $64, $B353
0258: 96 C5 5C     .case    $96, $C55C
025B: 5C 59 63     .case    $5C, $5963
025E: 64 BC 7A     .case    $64, $BC7A
0261: 0D C6 5C     .case    $0D, $C65C
0264: 60 62 59     .case    $60, $6259
0267: 5E 64 9F     .case    $5E, $649F
026A: 7B 3B A3     .case    $7B, $3BA3
026D: 5C 5F 57     .case    $5C, $5F57
0270: A8 13 12     .case    $A8, $1312
0273: A2 5C 5E     .case    $A2, $5C5E
0276: A7 13 12     .case    $A7, $1312
0279: A3 5C 55     .case    $A3, $5C55
027C: 64 D2 54     .case    $64, $D254
027F: 06 A3 5C     .case    $06, $A35C
0282: 55 5E 7F     .case    $55, $5E7F
0285: 13 12 85     .case    $13, $1285
0288: 5C 55 56     .case    $5C, $5556
028B: 64 18 8C     .case    $64, $188C
028E: 13 12 D3     .case    $13, $12D3
0291: 5D 55 5D     .case    $5D, $555D
0294: B2 13 12     .case    $B2, $1312
0297: C5 5D 55     .case    $C5, $5D55
029A: 62 57 55     .case    $62, $5755
029D: B8 70 67     .case    $B8, $7067
02A0: C4 5D 59     .case    $C4, $5D59
02A3: 54 18 8E     .case    $54, $188E
02A6: 13 12 D4     .case    $13, $12D4
02A9: 5E 55 68     .case    $5E, $5568
02AC: 64 D5 54     .case    $64, $D554
02AF: 79 A3 5E     .case    $79, $A35E
02B2: 5F 64 86     .case    $5F, $6486
02B5: 13 12 A3     .case    $13, $12A3
02B8: 5E 55 67     .case    $5E, $5567
02BB: B1 55 01     .case    $B1, $5501
02BE: F2 5F 5E     .case    $F2, $5F5E
02C1: CC 55 5D     .case    $CC, $555D
02C4: A4 5F 11     .case    $A4, $5F11
02C7: 11 11 9C     .case    $11, $119C
02CA: 17 05 E7     .case    $17, $05E7
02CD: 5F 65 64     .case    $5F, $6564
02D0: 63 64 51     .case    $63, $6451
02D3: 64 BE 6B     .case    $64, $BE6B
02D6: F9 E2 5F     .case    $F9, $E25F
02D9: 62 85 13     .case    $62, $8513
02DC: 12 A3 5F     .case    $12, $A35F
02DF: 56 56 CD     .case    $56, $56CD
02E2: 17 05 F5     .case    $17, $05F5
02E5: 60 62 59     .case    $60, $6259
02E8: 5E 64 C1     .case    $5E, $64C1
02EB: 55 C6 E4     .case    $55, $C6E4
02EE: 60 51 63     .case    $60, $5163
02F1: 63 BB 56     .case    $63, $BB56
02F4: 95 C2 60     .case    $95, $C260
02F7: 59 BD 13     .case    $59, $BD13
02FA: 12 C4 60     .case    $12, $C460
02FD: 55 55 5B     .case    $55, $555B
0300: AF 13 12     .case    $AF, $1312
0303: A4 60 5F     .case    $A4, $605F
0306: 5B 55 CE     .case    $5B, $55CE
0309: 57 1A E5     .case    $57, $1AE5
030C: 60 51 65     .case    $60, $5165
030F: 63 55        .default $6355
0311: DA           exab
0312: 56           read
0313: 70 B3        adim     $B3
0315: 62 65        tsim     $65
0317: 5E           ???
0318: B0           lp       $30
0319: 58           swp
031A: BC           lp       $3C
031B: C6           tsma
031C: 62 55        tsim     $55
031E: 64 65        ania     $65
0320: 62 5E        tsim     $5E
0322: DE           ???
0323: 57           ldd
0324: 5C           ???
0325: A4           lp       $24
0326: 62 55        tsim     $55
0328: 51           decp
0329: 54           readm
032A: CF           ???
032B: 58           swp
032C: 2E           ???
032D: A7           lp       $27
032E: 62 55        tsim     $55
0330: 63 64        cpim     $64
0332: 5F           outf
0333: 62 55        tsim     $55
0335: DF           outc
0336: 57           ldd
0337: 79 A3 62     jp       $A362
033A: 5E           ???
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
0347: 57           ldd
0348: A7           lp       $27
0349: E6 62        cal      $0662
034B: 59           ldm
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
035B: 57           ldd
035C: CE           nopt
035D: E3 62        cal      $0362
035F: 55           mvmd
0360: 5D           outa
0361: D3           ???
0362: 59           ldm
0363: B3           lp       $33
0364: A3           lp       $23
0365: 62 5F        tsim     $5F
0367: 5D           outa
0368: 9E           lp       $1E
0369: 6C           ???
036A: 6C           ???
036B: D4 63        anid     $63
036D: 64 5F        ania     $5F
036F: 60 D6        anim     $D6
0371: 57           ldd
0372: D8           leave
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
039A: 11 11        lidl     $11
039C: 11 11        lidl     $11
039E: 11 9B        lidl     $9B
03A0: 17 05        .default $1705
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
03B7: 57           ldd
03B8: DC           ???
03B9: E5 64        cal      $0564
03BB: 62 5F        tsim     $5F
03BD: 56           read
03BE: 56           read
03BF: BA           lp       $3A
03C0: 57           ldd
03C1: E0 E2        cal      $00E2
03C3: 64 5F        ania     $5F
03C5: 90           lp       $10
03C6: 17 05        .default $1705
03C8: F5 65        cal      $1565
03CA: 63 59        cpim     $59
03CC: 5E           ???
03CD: 57           ldd
03CE: DD           outb
03CF: 57           ldd
03D0: E4 F3        cal      $04F3
03D2: 66 51        tsia     $51
03D4: 5C           ???
03D5: 7E 13 12     jpz      $1312
03D8: 94           lp       $14
03D9: 67 51        cpia     $51
03DB: 59           ldm
03DC: 64 95        ania     $95
03DE: 58           swp
03DF: 05           dx
03E0: F0 0C        cal      $100C
03E2: 0D           sbn
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
03F1: 30           stp
03F2: 31           stq
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
04E5: 18 79 7E     .case    $18, $797E
04E8: E7 79 45     .case    $E7, $7945
04EB: DE 79 5C     .case    $DE, $795C
04EE: 3F 79 68     .case    $3F, $7968
04F1: 85 79 62     .case    $85, $7962
04F4: A5 79 6A     .case    $A5, $796A
04F7: 31 79        .default $3179
04F9: 62 2D        tsim     $2D
04FB: 79 69 A7     jp       $69A7
04FE: 79 6C 86     jp       $6C86
0501: 79 6B 96     jp       $6B96
0504: 3E           ???
0505: 51           decp
0506: 49           deck
0507: 45           sbm
0508: 3E           ???
0509: 00 42        lii      $42
050B: 7F 40 00     jpc      $4000
050E: 42           inca
050F: 61 51        orim     $51
0511: 49           deck
0512: 46           anma
0513: 41           deci
0514: 49           deck
0515: 4D           nopw
0516: 4B           decm
0517: 31           stq
0518: 18           mvwd
0519: 14           adb
051A: 12 7F        lip      $7F
051C: 10 27 45     lidp     $2745
051F: 45           sbm
0520: 45           sbm
0521: 39 3C        jrzm     $04E6
0523: 4A           incm
0524: 49           deck
0525: 49           deck
0526: 30           stp
0527: 01 01        lij      $01
0529: 79 05 03     jp       $0503
052C: 36           ???
052D: 49           deck
052E: 49           deck
052F: 49           deck
0530: 36           ???
0531: 06           iy
0532: 49           deck
0533: 49           deck
0534: 29 1E        jrnzm    $0517
0536: 00 60        lii      $60
0538: 60 00        anim     $00
053A: 00 7F        lii      $7F
053C: 7F 49 49     jpc      $4949
053F: 49           deck
0540: 7F 7F 7F     jpc      $7F7F
0543: 7F 7F 08     jpc      $7F08
0546: 04           ix
0547: 08           mvw
0548: 10 08 40     lidp     $0840
054B: 40           inci
054C: 40           inci
054D: 40           inci
054E: 40           inci
054F: 00 00        lii      $00
0551: 00 00        lii      $00
0553: 00 00        lii      $00
0555: 00 00        lii      $00
0557: 00 00        lii      $00
0559: 7C 12 11     jpnz     $1211
055C: 12 7C        lip      $7C
055E: 41           deci
055F: 7F 49 49     jpc      $4949
0562: 36           ???
0563: 3E           ???
0564: 41           deci
0565: 41           deci
0566: 41           deci
0567: 22           ldr
0568: 41           deci
0569: 7F 41 41     jpc      $4141
056C: 3E           ???
056D: 7F 49 49     jpc      $4949
0570: 49           deck
0571: 41           deci
0572: 7F 09 09     jpc      $0909
0575: 09           exw
0576: 01 3E        lij      $3E
0578: 41           deci
0579: 41           deci
057A: 49           deck
057B: 39 7F        jrzm     $04FD
057D: 08           mvw
057E: 08           mvw
057F: 08           mvw
0580: 7F 00 41     jpc      $0041
0583: 7F 41 00     jpc      $4100
0586: 20           ldp
0587: 40           inci
0588: 41           deci
0589: 3F           ???
058A: 01 7F        lij      $7F
058C: 08           mvw
058D: 14           adb
058E: 22           ldr
058F: 41           deci
0590: 7F 40 40     jpc      $4040
0593: 40           inci
0594: 40           inci
0595: 7F 02 0C     jpc      $020C
0598: 02 7F        lia      $7F
059A: 7F 04 08     jpc      $0408
059D: 10 7F 3E     lidp     $7F3E
05A0: 41           deci
05A1: 41           deci
05A2: 41           deci
05A3: 3E           ???
05A4: 7F 09 09     jpc      $0909
05A7: 09           exw
05A8: 06           iy
05A9: 3E           ???
05AA: 41           deci
05AB: 51           decp
05AC: 21           ldq
05AD: 5E           ???
05AE: 7F 09 19     jpc      $0919
05B1: 29 46        jrnzm    $056C
05B3: 26           iys
05B4: 49           deck
05B5: 49           deck
05B6: 49           deck
05B7: 32           str
05B8: 01 01        lij      $01
05BA: 7F 01 01     jpc      $0101
05BD: 3F           ???
05BE: 40           inci
05BF: 40           inci
05C0: 40           inci
05C1: 3F           ???
05C2: 07           dy
05C3: 18           mvwd
05C4: 60 18        anim     $18
05C6: 07           dy
05C7: 7F 20 18     jpc      $2018
05CA: 20           ldp
05CB: 7F 63 14     jpc      $6314
05CE: 08           mvw
05CF: 14           adb
05D0: 63 03        cpim     $03
05D2: 04           ix
05D3: 78 04 03     call     $0403
05D6: 61 51        orim     $51
05D8: 49           deck
05D9: 45           sbm
05DA: 43           deca
05DB: 79 4A 6D     jp       $4A6D
05DE: 02 5C        lia      $5C
05E0: 32           str
05E1: 01 01        lij      $01
05E3: 93           lp       $13
05E4: 61 80        orim     $80
05E6: 97           lp       $17
05E7: 60 3F        anim     $3F
05E9: B0           lp       $30
05EA: 02 50        lia      $50
05EC: C7           cpma
05ED: 28 07        jrnzp    $05F5
05EF: 93           lp       $13
05F0: 60 7F        anim     $7F
05F2: B0           lp       $30
05F3: 2C 06        jrp      $05FA
05F5: 02 A0        lia      $A0
05F7: C7           cpma
05F8: 28 C4        jrnzp    $06BD
05FA: 03 07        lib      $07
05FC: 42           inca
05FD: 50           incp
05FE: C7           cpma
05FF: 28 BD        jrnzp    $06BD
0601: C3           decb
0602: 29 07        jrnzm    $05FC
0604: B0           lp       $30
0605: 02 50        lia      $50
0607: 03 08        lib      $08
0609: DB           exam
060A: 59           ldm
060B: 42           inca
060C: 50           incp
060D: C3           decb
060E: 29 06        jrnzm    $0609
0610: 02 04        lia      $04
0612: 8A           lp       $0A
0613: DB           exam
0614: 02 03        lia      $03
0616: 88           lp       $08
0617: DB           exam
0618: 02 00        lia      $00
061A: 03 B8        lib      $B8
061C: F1 F1        cal      $11F1
061E: 00 03        lii      $03
0620: 04           ix
0621: B0           lp       $30
0622: 19           exwd
0623: 04           ix
0624: 05           dx
0625: B0           lp       $30
0626: 19           exwd
0627: 78 47 1B     call     $471B
062A: 28 8C        jrnzp    $06B7
062C: F1 77        cal      $1177
062E: 05           dx
062F: 04           ix
0630: B0           lp       $30
0631: 19           exwd
0632: 8A           lp       $0A
0633: 59           ldm
0634: 5A           sl
0635: DB           exam
0636: 59           ldm
0637: 87           lp       $07
0638: 45           sbm
0639: 07           dy
063A: 06           iy
063B: B4           lp       $34
063C: 19           exwd
063D: 05           dx
063E: 04           ix
063F: B0           lp       $30
0640: 19           exwd
0641: 78 47 1B     call     $471B
0644: 07           dy
0645: 06           iy
0646: 28 08        jrnzp    $064F
0648: B4           lp       $34
0649: 19           exwd
064A: F1 72        cal      $1172
064C: 49           deck
064D: 29 20        jrnzm    $062E
064F: F1 77        cal      $1177
0651: 78 6A 31     call     $6A31
0654: 3A 53        jrcp     $06A8
0656: 10 20 0A     lidp     $200A
0659: 82           lp       $02
065A: 1A           mvbd
065B: 10 C6 C4     lidp     $C6C4
065E: 82           lp       $02
065F: 1B           exbd
0660: 02 00        lia      $00
0662: 86           lp       $06
0663: DB           exam
0664: 10 C6 E1     lidp     $C6E1
0667: 82           lp       $02
0668: 1A           mvbd
0669: 82           lp       $02
066A: 13 06        liq      $06
066C: 0B           exb
066D: 86           lp       $06
066E: 15           sbb
066F: 38 31        jrzp     $06A1
0671: 11 E1        lidl     $E1
0673: 82           lp       $02
0674: 1B           exbd
0675: 78 55 31     call     $5531
0678: 78 55 1C     call     $551C
067B: 10 F8 3C     lidp     $F83C
067E: D4 00        anid     $00
0680: D5 0C        orid     $0C
0682: 11 3D        lidl     $3D
0684: D4 00        anid     $00
0686: 11 3E        lidl     $3E
0688: D4 00        anid     $00
068A: D5 02        orid     $02
068C: 78 7E CD     call     $7ECD
068F: 78 46 E3     call     $46E3
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
06A8: 78 49 C1     call     $49C1
06AB: 4D           nopw
06AC: 4D           nopw
06AD: 4D           nopw
06AE: 10 C6 C4     lidp     $C6C4
06B1: 82           lp       $02
06B2: 1B           exbd
06B3: 02 00        lia      $00
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
06D3: 78 49 F0     call     $49F0
06D6: 78 6A 31     call     $6A31
06D9: 3A 04        jrcp     $06DE
06DB: 78 20 0C     call     $200C
06DE: F1 E0        cal      $11E0
06E0: 79 1D 00     jp       $1D00
06E3: 96           lp       $16
06E4: 60 FB        anim     $FB
06E6: F8 C5        cal      $18C5
06E8: 95           lp       $15
06E9: 60 C0        anim     $C0
06EB: 97           lp       $17
06EC: 60 3F        anim     $3F
06EE: F1 62        cal      $1162
06F0: D4 E1        anid     $E1
06F2: 11 BF        lidl     $BF
06F4: 02 00        lia      $00
06F6: 52           std
06F7: 11 3C        lidl     $3C
06F9: D4 FE        anid     $FE
06FB: 11 3D        lidl     $3D
06FD: D4 F4        anid     $F4
06FF: 10 C6 D7     lidp     $C6D7
0702: D4 F3        anid     $F3
0704: 11 D8        lidl     $D8
0706: D4 FE        anid     $FE
0708: D5 06        orid     $06
070A: 11 D9        lidl     $D9
070C: D4 F9        anid     $F9
070E: 78 6F 00     call     $6F00
0711: F1 89        cal      $1189
0713: 04           ix
0714: 04           ix
0715: 10 C7 0E     lidp     $C70E
0718: 84           lp       $04
0719: 1B           exbd
071A: 37           rtn
071B: 02 50        lia      $50
071D: 03 04        lib      $04
071F: B0           lp       $30
0720: C7           cpma
0721: 28 06        jrnzp    $0728
0723: 42           inca
0724: 50           incp
0725: C3           decb
0726: 29 07        jrnzm    $0720
0728: 37           rtn
0729: 2C 03        jrp      $072D
072B: 4D           nopw
072C: 4D           nopw
072D: 10 F8 3C     lidp     $F83C
0730: D4 FE        anid     $FE
0732: 11 3D        lidl     $3D
0734: D4 FD        anid     $FD
0736: 67 10        cpia     $10
0738: 7F 49 FB     jpc      $49FB
073B: DA           exab
073C: 02 1D        lia      $1D
073E: 34           push
073F: 02 00        lia      $00
0741: 34           push
0742: F1 6A        cal      $116A
0744: D6 02        tsid     $02
0746: 28 F2        jrnzp    $0839
0748: D6 20        tsid     $20
074A: 38 05        jrzp     $0750
074C: D6 01        tsid     $01
074E: 38 0A        jrzp     $0759
0750: 78 68 4B     call     $684B
0753: 02 B0        lia      $B0
0755: 10 C6 EA     lidp     $C6EA
0758: 52           std
0759: DA           exab
075A: F1 6A        cal      $116A
075C: 67 6B        cpia     $6B
075E: 2A 4A        jrncp    $07A9
0760: 67 32        cpia     $32
0762: 3A 07        jrcp     $076A
0764: 67 40        cpia     $40
0766: 3A 31        jrcp     $0798
0768: F1 6A        cal      $116A
076A: D6 20        tsid     $20
076C: 38 1A        jrzp     $0787
076E: D6 01        tsid     $01
0770: 28 16        jrnzp    $0787
0772: 34           push
0773: 10 C6 EA     lidp     $C6EA
0776: 57           ldd
0777: 67 FF        cpia     $FF
0779: 2A 04        jrncp    $077E
077B: 42           inca
077C: 52           std
077D: 43           deca
077E: 03 C7        lib      $C7
0780: F1 F5        cal      $11F5
0782: 5B           pop
0783: 26           iys
0784: 79 4D E9     jp       $4DE9
0787: 34           push
0788: F1 F9        cal      $11F9
078A: 5B           pop
078B: 26           iys
078C: 06           iy
078D: 78 62 CB     call     $62CB
0790: D5 20        orid     $20
0792: 11 EA        lidl     $EA
0794: 86           lp       $06
0795: 53           mvdm
0796: 2D 13        jrm      $0784
0798: D6 01        tsid     $01
079A: 39 31        jrzm     $076A
079C: 78 5B E8     call     $5BE8
079F: F1 6E        cal      $116E
07A1: 2B 38        jrncm    $076A
07A3: 34           push
07A4: 78 62 91     call     $6291
07A7: 2D 1E        jrm      $078A
07A9: 67 E1        cpia     $E1
07AB: 7D 49 0E     jpnc     $490E
07AE: 75 70        sbia     $70
07B0: 67 61        cpia     $61
07B2: 38 87        jrzp     $083A
07B4: 67 64        cpia     $64
07B6: 38 87        jrzp     $083E
07B8: 10 F8 3F     lidp     $F83F
07BB: 52           std
07BC: F1 E5        cal      $11E5
07BE: 02 D0        lia      $D0
07C0: A4           lp       $24
07C1: DB           exam
07C2: 02 3F        lia      $3F
07C4: 03 F8        lib      $F8
07C6: A5           lp       $25
07C7: 13 02        liq      $02
07C9: 0A           mvb
07CA: 02 01        lia      $01
07CC: A7           lp       $27
07CD: DB           exam
07CE: 78 59 63     call     $5963
07D1: 3A CD        jrcp     $089F
07D3: 78 59 73     call     $5973
07D6: 78 62 B5     call     $62B5
07D9: 78 62 D3     call     $62D3
07DC: 04           ix
07DD: 04           ix
07DE: 04           ix
07DF: 24           ixl
07E0: 67 1D        cpia     $1D
07E2: 28 02        jrnzp    $07E5
07E4: 24           ixl
07E5: 67 DC        cpia     $DC
07E7: 7C 49 07     jpnz     $4907
07EA: 34           push
07EB: 78 4E 51     call     $4E51
07EE: 5B           pop
07EF: 93           lp       $13
07F0: 60 9F        anim     $9F
07F2: 78 59 2C     call     $592C
07F5: 3A 3D        jrcp     $0833
07F7: 10 C6 EE     lidp     $C6EE
07FA: 86           lp       $06
07FB: 1B           exbd
07FC: 11 EE        lidl     $EE
07FE: 86           lp       $06
07FF: 1A           mvbd
0800: 93           lp       $13
0801: 62 04        tsim     $04
0803: 38 0A        jrzp     $080E
0805: 62 12        tsim     $12
0807: 38 03        jrzp     $080B
0809: 02 00        lia      $00
080B: 11 F0        lidl     $F0
080D: 52           std
080E: 11 DA        lidl     $DA
0810: D6 01        tsid     $01
0812: 28 A3        jrnzp    $08B6
0814: D6 20        tsid     $20
0816: 38 B0        jrzp     $08C7
0818: 10 C7 B0     lidp     $C7B0
081B: D6 FF        tsid     $FF
081D: 38 A9        jrzp     $08C7
081F: 10 C6 F1     lidp     $C6F1
0822: 02 B0        lia      $B0
0824: 52           std
0825: 93           lp       $13
0826: 62 04        tsim     $04
0828: 38 04        jrzp     $082D
082A: 95           lp       $15
082B: 61 04        orim     $04
082D: 78 4B EC     call     $4BEC
0830: 3A 7F        jrcp     $08B0
0832: D1           rc
0833: 78 62 CB     call     $62CB
0836: 78 65 55     call     $6555
0839: 37           rtn
083A: 02 11        lia      $11
083C: 2D 85        jrm      $07B8
083E: 02 34        lia      $34
0840: 2D 89        jrm      $07B8
0842: F2 00        cal      $1200
0844: 10 C7 06     lidp     $C706
0847: 9C           lp       $1C
0848: 00 03        lii      $03
084A: 19           exwd
084B: 11 06        lidl     $06
084D: 9C           lp       $1C
084E: 18           mvwd
084F: 10 C6 FE     lidp     $C6FE
0852: 9C           lp       $1C
0853: 19           exwd
0854: 95           lp       $15
0855: 60 EF        anim     $EF
0857: F1 F9        cal      $11F9
0859: 02 11        lia      $11
085B: 26           iys
085C: 10 40 2B     lidp     $402B
085F: A0           lp       $20
0860: 00 04        lii      $04
0862: 18           mvwd
0863: A0           lp       $20
0864: 06           iy
0865: 19           exwd
0866: 86           lp       $06
0867: 70 04        adim     $04
0869: 26           iys
086A: 94           lp       $14
086B: 60 7F        anim     $7F
086D: 61 40        orim     $40
086F: 59           ldm
0870: 26           iys
0871: 02 11        lia      $11
0873: 26           iys
0874: 02 59        lia      $59
0876: 26           iys
0877: 02 5E        lia      $5E
0879: 26           iys
087A: 02 11        lia      $11
087C: 26           iys
087D: 25           dxl
087E: 67 E0        cpia     $E0
0880: 3B 04        jrcm     $087D
0882: 05           dx
0883: 78 62 FE     call     $62FE
0886: 02 00        lia      $00
0888: 26           iys
0889: 10 C6 D9     lidp     $C6D9
088C: D5 02        orid     $02
088E: 78 62 CB     call     $62CB
0891: D5 02        orid     $02
0893: F1 AF        cal      $11AF
0895: 10 F8 3D     lidp     $F83D
0898: D5 08        orid     $08
089A: 02 01        lia      $01
089C: FF B1        cal      $1FB1
089E: 37           rtn
089F: 95           lp       $15
08A0: 60 C0        anim     $C0
08A2: F1 6A        cal      $116A
08A4: D5 20        orid     $20
08A6: 11 EA        lidl     $EA
08A8: 84           lp       $04
08A9: 55           mvmd
08AA: 2C 08        jrp      $08B3
08AC: F7 27        cal      $1727
08AE: 2D 7C        jrm      $0833
08B0: 95           lp       $15
08B1: 60 C0        anim     $C0
08B3: 79 6A 09     jp       $6A09
08B6: 78 5B E8     call     $5BE8
08B9: F1 6E        cal      $116E
08BB: 93           lp       $13
08BC: 2A 17        jrncp    $08D4
08BE: 62 04        tsim     $04
08C0: 29 15        jrnzm    $08AC
08C2: 06           iy
08C3: A0           lp       $20
08C4: 19           exwd
08C5: 2D 94        jrm      $0832
08C7: F2 BD        cal      $12BD
08C9: 93           lp       $13
08CA: 62 04        tsim     $04
08CC: 39 14        jrzm     $08B9
08CE: A4           lp       $24
08CF: 02 D0        lia      $D0
08D1: DB           exam
08D2: 2D 1A        jrm      $08B9
08D4: 62 04        tsim     $04
08D6: 39 2B        jrzm     $08AC
08D8: 78 67 44     call     $6744
08DB: 84           lp       $04
08DC: 13 25        liq      $25
08DE: 0A           mvb
08DF: 05           dx
08E0: A7           lp       $27
08E1: 59           ldm
08E2: 88           lp       $08
08E3: DB           exam
08E4: 10 C6 F0     lidp     $C6F0
08E7: 57           ldd
08E8: 67 00        cpia     $00
08EA: 28 06        jrnzp    $08F1
08EC: 02 F5        lia      $F5
08EE: 26           iys
08EF: 02 07        lia      $07
08F1: DA           exab
08F2: 88           lp       $08
08F3: 63 00        cpim     $00
08F5: 38 09        jrzp     $08FF
08F7: 24           ixl
08F8: 26           iys
08F9: C3           decb
08FA: 38 07        jrzp     $0902
08FC: 49           deck
08FD: 29 07        jrnzm    $08F7
08FF: 02 00        lia      $00
0901: 26           iys
0902: 78 67 49     call     $6749
0905: 2D D4        jrm      $0832
0907: 78 62 D0     call     $62D0
090A: 78 63 EB     call     $63EB
090D: 37           rtn
090E: 8A           lp       $0A
090F: DB           exam
0910: 59           ldm
0911: 34           push
0912: F1 F9        cal      $11F9
0914: 5B           pop
0915: 75 90        sbia     $90
0917: 67 61        cpia     $61
0919: 38 09        jrzp     $0923
091B: 67 64        cpia     $64
091D: 28 07        jrnzp    $0925
091F: 02 34        lia      $34
0921: 2C 03        jrp      $0925
0923: 02 11        lia      $11
0925: 34           push
0926: 78 63 1D     call     $631D
0929: 5B           pop
092A: 7F 47 5A     jpc      $475A
092D: F1 6A        cal      $116A
092F: D6 01        tsid     $01
0931: 28 44        jrnzp    $0976
0933: D6 20        tsid     $20
0935: 38 40        jrzp     $0976
0937: 93           lp       $13
0938: 61 80        orim     $80
093A: 24           ixl
093B: 67 00        cpia     $00
093D: 38 35        jrzp     $0973
093F: 67 E0        cpia     $E0
0941: 2A 31        jrncp    $0973
0943: 67 1E        cpia     $1E
0945: 7E 4E 58     jpz      $4E58
0948: 05           dx
0949: F1 95        cal      $1195
094B: 10 C6 EA     lidp     $C6EA
094E: 57           ldd
094F: 03 FF        lib      $FF
0951: 93           lp       $13
0952: 62 80        tsim     $80
0954: 28 14        jrnzp    $0969
0956: 83           lp       $03
0957: 78 4D F3     call     $4DF3
095A: F1 95        cal      $1195
095C: 24           ixl
095D: 10 C6 EA     lidp     $C6EA
0960: 86           lp       $06
0961: 63 00        cpim     $00
0963: 38 02        jrzp     $0966
0965: 53           mvdm
0966: 27           dys
0967: 2D 2E        jrm      $093A
0969: 03 C7        lib      $C7
096B: F1 EE        cal      $11EE
096D: 06           iy
096E: 93           lp       $13
096F: 60 7F        anim     $7F
0971: 2D 18        jrm      $095A
0973: 79 4D E9     jp       $4DE9
0976: F1 6A        cal      $116A
0978: D4 ED        anid     $ED
097A: D5 20        orid     $20
097C: DA           exab
097D: 78 68 4B     call     $684B
0980: 24           ixl
0981: 05           dx
0982: 67 1E        cpia     $1E
0984: 7E 4E 58     jpz      $4E58
0987: 67 32        cpia     $32
0989: 3A 2A        jrcp     $09B4
098B: 67 3A        cpia     $3A
098D: 3A 09        jrcp     $0997
098F: 67 82        cpia     $82
0991: 3A 22        jrcp     $09B4
0993: 67 85        cpia     $85
0995: 2A 1E        jrncp    $09B4
0997: F1 6A        cal      $116A
0999: D6 01        tsid     $01
099B: 38 18        jrzp     $09B4
099D: 11 C6        lidl     $C6
099F: A0           lp       $20
09A0: 00 07        lii      $07
09A2: 18           mvwd
09A3: F1 6E        cal      $116E
09A5: 2A 0E        jrncp    $09B4
09A7: F1 C7        cal      $11C7
09A9: F1 E5        cal      $11E5
09AB: 78 62 91     call     $6291
09AE: F1 E0        cal      $11E0
09B0: F1 D2        cal      $11D2
09B2: 2C 03        jrp      $09B6
09B4: F1 F9        cal      $11F9
09B6: 06           iy
09B7: 06           iy
09B8: 93           lp       $13
09B9: 60 7F        anim     $7F
09BB: F1 6A        cal      $116A
09BD: D4 FE        anid     $FE
09BF: 2D 64        jrm      $095C
09C1: 02 CA        lia      $CA
09C3: 03 49        lib      $49
09C5: 67 FF        cpia     $FF
09C7: 28 02        jrnzp    $09CA
09C9: C3           decb
09CA: 37           rtn
09CB: E1 C2        cal      $01C2
09CD: E2 CA        cal      $02CA
09CF: E3 D8        cal      $03D8
09D1: E4 92        cal      $0492
09D3: E6 D7        cal      $06D7
09D5: E7 D1        cal      $07D1
09D7: E8 90        cal      $0890
09D9: EA 91        cal      $0A91
09DB: EB D5        cal      $0BD5
09DD: EC B3        cal      $0CB3
09DF: ED B6        cal      $0DB6
09E1: EE D4        cal      $0ED4
09E3: F1 B7        cal      $11B7
09E5: F3 D0        cal      $13D0
09E7: F4 B0        cal      $14B0
09E9: F6 DE        cal      $16DE
09EB: F8 DD        cal      $18DD
09ED: FA C1        cal      $1AC1
09EF: FF 10        cal      $1F10
09F1: F8 3C        cal      $183C
09F3: D4 FD        anid     $FD
09F5: 10 C6 D7     lidp     $C6D7
09F8: D4 BF        anid     $BF
09FA: 37           rtn
09FB: 67 00        cpia     $00
09FD: 38 3A        jrzp     $0A38
09FF: 67 04        cpia     $04
0A01: 3A 13        jrcp     $0A15
0A03: 38 31        jrzp     $0A35
0A05: 67 08        cpia     $08
0A07: 3A 30        jrcp     $0A38
0A09: 38 0B        jrzp     $0A15
0A0B: 67 0C        cpia     $0C
0A0D: 3A 2A        jrcp     $0A38
0A0F: 38 05        jrzp     $0A15
0A11: 67 0E        cpia     $0E
0A13: 3A 24        jrcp     $0A38
0A15: 67 09        cpia     $09
0A17: 2A 04        jrncp    $0A1C
0A19: 78 4A 56     call     $4A56
0A1C: 7A 06 4A 35  dtj      $06, $4A35
0A20: 69           ptj
0A21: 01 4A 5C     .case    $01, $4A5C
0A24: 02 4A 6D     .case    $02, $4A6D
0A27: 03 46 E3     .case    $03, $46E3
0A2A: 08 4A AD     .case    $08, $4AAD
0A2D: 0C 4A B7     .case    $0C, $4AB7
0A30: 0E 4C B6     .case    $0E, $4CB6
0A33: 4D A4        .default $4DA4
0A35: 79 1D 00     jp       $1D00
0A38: F1 6A        cal      $116A
0A3A: D6 02        tsid     $02
0A3C: 29 08        jrnzm    $0A35
0A3E: 7A 05 4A 54  dtj      $05, $4A54
0A42: 69           ptj
0A43: 00 4E 58     .case    $00, $4E58
0A46: 05 4D BE     .case    $05, $4DBE
0A49: 06 4E 10     .case    $06, $4E10
0A4C: 07 4E 28     .case    $07, $4E28
0A4F: 0B 4D A9     .case    $0B, $4DA9
0A52: 4B 99        .default $4B99
0A54: 2D 20        jrm      $0A35
0A56: 10 F8 3D     lidp     $F83D
0A59: D4 F7        anid     $F7
0A5B: 37           rtn
0A5C: 02 50        lia      $50
0A5E: 03 08        lib      $08
0A60: B0           lp       $30
0A61: DB           exam
0A62: 59           ldm
0A63: 42           inca
0A64: 50           incp
0A65: C3           decb
0A66: 29 06        jrnzm    $0A61
0A68: 02 08        lia      $08
0A6A: FF B1        cal      $1FB1
0A6C: 37           rtn
0A6D: 78 7E D5     call     $7ED5
0A70: 95           lp       $15
0A71: 62 10        tsim     $10
0A73: 38 40        jrzp     $0AB4
0A75: 62 01        tsim     $01
0A77: 28 3C        jrnzp    $0AB4
0A79: 62 06        tsim     $06
0A7B: 38 38        jrzp     $0AB4
0A7D: 10 C6 F1     lidp     $C6F1
0A80: 57           ldd
0A81: 67 B0        cpia     $B0
0A83: 03 C7        lib      $C7
0A85: F1 F5        cal      $11F5
0A87: 38 19        jrzp     $0AA1
0A89: 02 00        lia      $00
0A8B: 26           iys
0A8C: 10 C6 EA     lidp     $C6EA
0A8F: 86           lp       $06
0A90: 53           mvdm
0A91: 63 FF        cpim     $FF
0A93: 38 04        jrzp     $0A98
0A95: 26           iys
0A96: 2D 06        jrm      $0A91
0A98: 78 62 CB     call     $62CB
0A9B: D5 20        orid     $20
0A9D: 78 6B 55     call     $6B55
0AA0: 37           rtn
0AA1: 02 13        lia      $13
0AA3: 26           iys
0AA4: 02 00        lia      $00
0AA6: 26           iys
0AA7: 78 62 CB     call     $62CB
0AAA: F1 AF        cal      $11AF
0AAC: 37           rtn
0AAD: 95           lp       $15
0AAE: 62 10        tsim     $10
0AB0: 38 03        jrzp     $0AB4
0AB2: 61 01        orim     $01
0AB4: F8 C5        cal      $18C5
0AB6: 37           rtn
0AB7: 10 C6 D9     lidp     $C6D9
0ABA: D5 10        orid     $10
0ABC: F1 5E        cal      $115E
0ABE: D6 02        tsid     $02
0AC0: 38 25        jrzp     $0AE6
0AC2: 95           lp       $15
0AC3: 62 10        tsim     $10
0AC5: 38 18        jrzp     $0ADE
0AC7: 78 4A 56     call     $4A56
0ACA: F1 62        cal      $1162
0ACC: D6 02        tsid     $02
0ACE: 28 16        jrnzp    $0AE5
0AD0: 10 C6 D9     lidp     $C6D9
0AD3: D6 20        tsid     $20
0AD5: 28 0F        jrnzp    $0AE5
0AD7: F1 62        cal      $1162
0AD9: D5 08        orid     $08
0ADB: 79 63 31     jp       $6331
0ADE: 10 C6 D9     lidp     $C6D9
0AE1: D6 02        tsid     $02
0AE3: 29 1D        jrnzm    $0AC7
0AE5: 37           rtn
0AE6: D6 04        tsid     $04
0AE8: 29 04        jrnzm    $0AE5
0AEA: 10 C6 D9     lidp     $C6D9
0AED: D6 20        tsid     $20
0AEF: 29 0B        jrnzm    $0AE5
0AF1: 95           lp       $15
0AF2: 62 10        tsim     $10
0AF4: 38 33        jrzp     $0B28
0AF6: F1 6A        cal      $116A
0AF8: D6 04        tsid     $04
0AFA: 39 20        jrzm     $0ADB
0AFC: F1 62        cal      $1162
0AFE: D6 02        tsid     $02
0B00: 28 13        jrnzp    $0B14
0B02: 10 C6 D9     lidp     $C6D9
0B05: D6 10        tsid     $10
0B07: 38 07        jrzp     $0B0F
0B09: 78 63 C1     call     $63C1
0B0C: 79 63 7E     jp       $637E
0B0F: 78 63 8E     call     $638E
0B12: 2D 07        jrm      $0B0C
0B14: 10 F8 B8     lidp     $F8B8
0B17: 82           lp       $02
0B18: 1A           mvbd
0B19: 67 00        cpia     $00
0B1B: 29 37        jrnzm    $0AE5
0B1D: DA           exab
0B1E: 67 00        cpia     $00
0B20: 29 3C        jrnzm    $0AE5
0B22: 78 4B 02     call     $4B02
0B25: 79 63 88     jp       $6388
0B28: F1 89        cal      $1189
0B2A: 24           ixl
0B2B: 67 FF        cpia     $FF
0B2D: 39 49        jrzm     $0AE5
0B2F: 78 4A 56     call     $4A56
0B32: F1 6A        cal      $116A
0B34: D6 04        tsid     $04
0B36: 29 3B        jrnzm    $0AFC
0B38: 11 D9        lidl     $D9
0B3A: D6 02        tsid     $02
0B3C: 38 0A        jrzp     $0B47
0B3E: F1 62        cal      $1162
0B40: D6 02        tsid     $02
0B42: 29 2F        jrnzm    $0B14
0B44: 79 63 31     jp       $6331
0B47: F1 62        cal      $1162
0B49: D6 02        tsid     $02
0B4B: 29 38        jrnzm    $0B14
0B4D: 10 C6 D9     lidp     $C6D9
0B50: D6 10        tsid     $10
0B52: 38 32        jrzp     $0B85
0B54: 11 E3        lidl     $E3
0B56: 84           lp       $04
0B57: 1A           mvbd
0B58: 25           dxl
0B59: 67 FF        cpia     $FF
0B5B: 28 0D        jrnzp    $0B69
0B5D: 10 20 07     lidp     $2007
0B60: D6 FF        tsid     $FF
0B62: 29 7E        jrnzm    $0AE5
0B64: 10 20 08     lidp     $2008
0B67: 84           lp       $04
0B68: 1A           mvbd
0B69: 25           dxl
0B6A: 67 E0        cpia     $E0
0B6C: 3B 04        jrcm     $0B69
0B6E: 10 C6 D9     lidp     $C6D9
0B71: D5 08        orid     $08
0B73: 78 62 CB     call     $62CB
0B76: D5 04        orid     $04
0B78: 98           lp       $18
0B79: 13 04        liq      $04
0B7B: 0A           mvb
0B7C: 78 61 AB     call     $61AB
0B7F: F1 62        cal      $1162
0B81: D5 02        orid     $02
0B83: 2D 78        jrm      $0B0C
0B85: 85           lp       $05
0B86: 63 80        cpim     $80
0B88: 2B 1B        jrncm    $0B6E
0B8A: 10 20 07     lidp     $2007
0B8D: D6 FF        tsid     $FF
0B8F: 39 22        jrzm     $0B6E
0B91: F1 8F        cal      $118F
0B93: 24           ixl
0B94: 67 FF        cpia     $FF
0B96: 29 29        jrnzm    $0B6E
0B98: 37           rtn
0B99: 10 C6 D9     lidp     $C6D9
0B9C: D4 EF        anid     $EF
0B9E: F1 5E        cal      $115E
0BA0: D6 02        tsid     $02
0BA2: 39 BD        jrzm     $0AE6
0BA4: 95           lp       $15
0BA5: 62 10        tsim     $10
0BA7: 7E 4C B5     jpz      $4CB5
0BAA: 78 4E 51     call     $4E51
0BAD: 96           lp       $16
0BAE: 60 FD        anim     $FD
0BB0: 61 01        orim     $01
0BB2: F1 BD        cal      $11BD
0BB4: 95           lp       $15
0BB5: 62 0E        tsim     $0E
0BB7: F1 62        cal      $1162
0BB9: 38 C0        jrzp     $0C7A
0BBB: D6 02        tsid     $02
0BBD: 28 F1        jrnzp    $0CAF
0BBF: D5 02        orid     $02
0BC1: 78 63 7E     call     $637E
0BC4: 95           lp       $15
0BC5: 62 01        tsim     $01
0BC7: 38 07        jrzp     $0BCF
0BC9: 60 FE        anim     $FE
0BCB: 78 66 61     call     $6661
0BCE: 37           rtn
0BCF: 62 08        tsim     $08
0BD1: 28 A4        jrnzp    $0C76
0BD3: F1 6A        cal      $116A
0BD5: D6 20        tsid     $20
0BD7: 28 09        jrnzp    $0BE1
0BD9: 95           lp       $15
0BDA: 78 59 B3     call     $59B3
0BDD: 78 66 82     call     $6682
0BE0: 37           rtn
0BE1: 78 4B EC     call     $4BEC
0BE4: 7F 6A 09     jpc      $6A09
0BE7: 78 62 CB     call     $62CB
0BEA: 2C 47        jrp      $0C32
0BEC: F2 00        cal      $1200
0BEE: 78 67 44     call     $6744
0BF1: 10 C6 F1     lidp     $C6F1
0BF4: 57           ldd
0BF5: 03 C7        lib      $C7
0BF7: F1 F1        cal      $11F1
0BF9: 24           ixl
0BFA: 05           dx
0BFB: 67 00        cpia     $00
0BFD: 28 06        jrnzp    $0C04
0BFF: F8 99        cal      $1899
0C01: 79 59 B3     jp       $59B3
0C04: 10 C6 EE     lidp     $C6EE
0C07: 86           lp       $06
0C08: 1A           mvbd
0C09: 11 F0        lidl     $F0
0C0B: 95           lp       $15
0C0C: 62 04        tsim     $04
0C0E: 38 3B        jrzp     $0C4A
0C10: 60 F1        anim     $F1
0C12: 88           lp       $08
0C13: 55           mvmd
0C14: 63 00        cpim     $00
0C16: 28 07        jrnzp    $0C1E
0C18: 02 F5        lia      $F5
0C1A: 26           iys
0C1B: 02 07        lia      $07
0C1D: DB           exam
0C1E: 24           ixl
0C1F: 67 10        cpia     $10
0C21: 39 04        jrzm     $0C1E
0C23: 67 12        cpia     $12
0C25: 38 1F        jrzp     $0C45
0C27: 67 00        cpia     $00
0C29: 38 1B        jrzp     $0C45
0C2B: 26           iys
0C2C: 49           deck
0C2D: 29 10        jrnzm    $0C1E
0C2F: F8 99        cal      $1899
0C31: 37           rtn
0C32: 24           ixl
0C33: 67 1B        cpia     $1B
0C35: 05           dx
0C36: 29 5A        jrnzm    $0BDD
0C38: 04           ix
0C39: F1 E5        cal      $11E5
0C3B: 96           lp       $16
0C3C: 60 FD        anim     $FD
0C3E: 78 52 B2     call     $52B2
0C41: 78 65 55     call     $6555
0C44: 37           rtn
0C45: 02 00        lia      $00
0C47: 26           iys
0C48: 2D 1A        jrm      $0C2F
0C4A: F1 77        cal      $1177
0C4C: 78 60 67     call     $6067
0C4F: 10 C6 F1     lidp     $C6F1
0C52: 57           ldd
0C53: 03 C7        lib      $C7
0C55: F1 F1        cal      $11F1
0C57: F2 05        cal      $1205
0C59: 2A 02        jrncp    $0C5C
0C5B: 37           rtn
0C5C: 24           ixl
0C5D: 67 00        cpia     $00
0C5F: 38 04        jrzp     $0C64
0C61: F7 27        cal      $1727
0C63: 37           rtn
0C64: F1 6E        cal      $116E
0C66: 2B 06        jrncm    $0C61
0C68: 10 C6 EE     lidp     $C6EE
0C6B: 86           lp       $06
0C6C: 1A           mvbd
0C6D: 06           iy
0C6E: 00 07        lii      $07
0C70: A0           lp       $20
0C71: 19           exwd
0C72: D1           rc
0C73: 79 67 49     jp       $6749
0C76: 60 F1        anim     $F1
0C78: 2D 9C        jrm      $0BDD
0C7A: 78 62 CB     call     $62CB
0C7D: F1 62        cal      $1162
0C7F: D6 02        tsid     $02
0C81: 38 1F        jrzp     $0CA1
0C83: 11 B8        lidl     $B8
0C85: 82           lp       $02
0C86: 1A           mvbd
0C87: 67 00        cpia     $00
0C89: 28 2B        jrnzp    $0CB5
0C8B: DA           exab
0C8C: 67 00        cpia     $00
0C8E: 28 26        jrnzp    $0CB5
0C90: 95           lp       $15
0C91: 60 FE        anim     $FE
0C93: F1 E5        cal      $11E5
0C95: 78 65 A2     call     $65A2
0C98: 3A 18        jrcp     $0CB1
0C9A: 02 FF        lia      $FF
0C9C: 03 FF        lib      $FF
0C9E: 79 63 82     jp       $6382
0CA1: D5 02        orid     $02
0CA3: 60 FE        anim     $FE
0CA5: F1 E5        cal      $11E5
0CA7: 78 65 A2     call     $65A2
0CAA: 3A 0A        jrcp     $0CB5
0CAC: 79 63 7E     jp       $637E
0CAF: 60 FE        anim     $FE
0CB1: F1 62        cal      $1162
0CB3: D4 FD        anid     $FD
0CB5: 37           rtn
0CB6: 93           lp       $13
0CB7: 60 00        anim     $00
0CB9: 61 01        orim     $01
0CBB: 10 C6 D9     lidp     $C6D9
0CBE: D4 F7        anid     $F7
0CC0: 11 DA        lidl     $DA
0CC2: D6 02        tsid     $02
0CC4: 38 22        jrzp     $0CE7
0CC6: D6 20        tsid     $20
0CC8: 38 1D        jrzp     $0CE6
0CCA: D4 FD        anid     $FD
0CCC: 78 4A 56     call     $4A56
0CCF: F8 99        cal      $1899
0CD1: 10 C6 EA     lidp     $C6EA
0CD4: 84           lp       $04
0CD5: 53           mvdm
0CD6: 78 63 7E     call     $637E
0CD9: F1 62        cal      $1162
0CDB: D5 02        orid     $02
0CDD: 93           lp       $13
0CDE: 62 04        tsim     $04
0CE0: 7C 61 BC     jpnz     $61BC
0CE3: 78 6B 55     call     $6B55
0CE6: 37           rtn
0CE7: D6 08        tsid     $08
0CE9: 38 8E        jrzp     $0D78
0CEB: 02 B2        lia      $B2
0CED: 10 C6 F1     lidp     $C6F1
0CF0: 52           std
0CF1: 93           lp       $13
0CF2: 61 02        orim     $02
0CF4: 11 DA        lidl     $DA
0CF6: D6 20        tsid     $20
0CF8: 38 47        jrzp     $0D40
0CFA: D6 01        tsid     $01
0CFC: 28 64        jrnzp    $0D61
0CFE: F1 62        cal      $1162
0D00: D6 02        tsid     $02
0D02: 38 59        jrzp     $0D5C
0D04: 11 B8        lidl     $B8
0D06: 82           lp       $02
0D07: 1A           mvbd
0D08: 67 00        cpia     $00
0D0A: 29 25        jrnzm    $0CE6
0D0C: DA           exab
0D0D: 67 00        cpia     $00
0D0F: 29 2A        jrnzm    $0CE6
0D11: 78 63 88     call     $6388
0D14: 93           lp       $13
0D15: 62 01        tsim     $01
0D17: 10 C6 EA     lidp     $C6EA
0D1A: 57           ldd
0D1B: 38 17        jrzp     $0D33
0D1D: 03 C7        lib      $C7
0D1F: F1 F1        cal      $11F1
0D21: 24           ixl
0D22: 84           lp       $04
0D23: 63 FF        cpim     $FF
0D25: 2B 40        jrncm    $0CE6
0D27: 67 00        cpia     $00
0D29: 38 75        jrzp     $0D9F
0D2B: 04           ix
0D2C: 10 C6 EA     lidp     $C6EA
0D2F: 84           lp       $04
0D30: 53           mvdm
0D31: 2D 59        jrm      $0CD9
0D33: 93           lp       $13
0D34: 62 02        tsim     $02
0D36: 28 16        jrnzp    $0D4D
0D38: 67 B0        cpia     $B0
0D3A: 38 64        jrzp     $0D9F
0D3C: 43           deca
0D3D: 52           std
0D3E: 2D 66        jrm      $0CD9
0D40: D6 08        tsid     $08
0D42: 39 5D        jrzm     $0CE6
0D44: D5 20        orid     $20
0D46: 02 B2        lia      $B2
0D48: 11 EA        lidl     $EA
0D4A: 52           std
0D4B: 2D 76        jrm      $0CD6
0D4D: 10 C6 F1     lidp     $C6F1
0D50: DA           exab
0D51: 57           ldd
0D52: 83           lp       $03
0D53: C7           cpma
0D54: 38 4A        jrzp     $0D9F
0D56: DA           exab
0D57: 43           deca
0D58: 11 EA        lidl     $EA
0D5A: 2D 1E        jrm      $0D3D
0D5C: 78 63 7E     call     $637E
0D5F: 2D 4C        jrm      $0D14
0D61: D6 01        tsid     $01
0D63: 39 24        jrzm     $0D40
0D65: D4 FE        anid     $FE
0D67: 93           lp       $13
0D68: 62 01        tsim     $01
0D6A: 9C           lp       $1C
0D6B: 59           ldm
0D6C: 38 03        jrzp     $0D70
0D6E: 02 B0        lia      $B0
0D70: 11 EA        lidl     $EA
0D72: 52           std
0D73: 78 63 7E     call     $637E
0D76: 2D 9E        jrm      $0CD9
0D78: 95           lp       $15
0D79: 62 06        tsim     $06
0D7B: 38 05        jrzp     $0D81
0D7D: 62 01        tsim     $01
0D7F: 39 8F        jrzm     $0CF1
0D81: D6 04        tsid     $04
0D83: 39 90        jrzm     $0CF4
0D85: 93           lp       $13
0D86: 61 04        orim     $04
0D88: D6 20        tsid     $20
0D8A: 29 8D        jrnzm    $0CFE
0D8C: D5 20        orid     $20
0D8E: 11 D9        lidl     $D9
0D90: D4 F7        anid     $F7
0D92: F1 9A        cal      $119A
0D94: 24           ixl
0D95: 67 40        cpia     $40
0D97: 3B C7        jrcm     $0CD1
0D99: 67 4A        cpia     $4A
0D9B: 3B 08        jrcm     $0D94
0D9D: 2D CD        jrm      $0CD1
0D9F: F1 62        cal      $1162
0DA1: D4 FD        anid     $FD
0DA3: 37           rtn
0DA4: 93           lp       $13
0DA5: 60 00        anim     $00
0DA7: 2D ED        jrm      $0CBB
0DA9: 10 F8 3C     lidp     $F83C
0DAC: D6 02        tsid     $02
0DAE: 38 04        jrzp     $0DB3
0DB0: D4 FD        anid     $FD
0DB2: 37           rtn
0DB3: 78 6B 4F     call     $6B4F
0DB6: 38 06        jrzp     $0DBD
0DB8: 10 F8 3C     lidp     $F83C
0DBB: D5 02        orid     $02
0DBD: 37           rtn
0DBE: 93           lp       $13
0DBF: 60 00        anim     $00
0DC1: 61 01        orim     $01
0DC3: F1 6A        cal      $116A
0DC5: D6 20        tsid     $20
0DC7: 38 2A        jrzp     $0DF2
0DC9: D6 01        tsid     $01
0DCB: 28 26        jrnzp    $0DF2
0DCD: 11 EA        lidl     $EA
0DCF: 57           ldd
0DD0: 03 C7        lib      $C7
0DD2: F1 F1        cal      $11F1
0DD4: 24           ixl
0DD5: 67 00        cpia     $00
0DD7: 38 1A        jrzp     $0DF2
0DD9: 84           lp       $04
0DDA: 59           ldm
0DDB: 03 FF        lib      $FF
0DDD: 93           lp       $13
0DDE: 62 01        tsim     $01
0DE0: 83           lp       $03
0DE1: 38 33        jrzp     $0E15
0DE3: 78 4D F3     call     $4DF3
0DE6: 02 10        lia      $10
0DE8: 27           dys
0DE9: F1 6A        cal      $116A
0DEB: D6 04        tsid     $04
0DED: 28 1A        jrnzp    $0E08
0DEF: 78 6B 55     call     $6B55
0DF2: 37           rtn
0DF3: 45           sbm
0DF4: 59           ldm
0DF5: 88           lp       $08
0DF6: DB           exam
0DF7: 02 FF        lia      $FF
0DF9: 03 C7        lib      $C7
0DFB: F1 EE        cal      $11EE
0DFD: F1 72        cal      $1172
0DFF: 06           iy
0E00: 38 06        jrzp     $0E07
0E02: 25           dxl
0E03: 27           dys
0E04: 49           deck
0E05: 29 04        jrnzm    $0E02
0E07: 37           rtn
0E08: 10 C6 D9     lidp     $C6D9
0E0B: D4 F7        anid     $F7
0E0D: 79 61 BC     jp       $61BC
0E10: 93           lp       $13
0E11: 60 00        anim     $00
0E13: 2D 51        jrm      $0DC3
0E15: 45           sbm
0E16: 59           ldm
0E17: 88           lp       $08
0E18: DB           exam
0E19: F1 77        cal      $1177
0E1B: 07           dy
0E1C: 38 06        jrzp     $0E23
0E1E: 24           ixl
0E1F: 26           iys
0E20: 49           deck
0E21: 29 04        jrnzm    $0E1E
0E23: 02 00        lia      $00
0E25: 26           iys
0E26: 2D 3E        jrm      $0DE9
0E28: 95           lp       $15
0E29: 62 10        tsim     $10
0E2B: 38 24        jrzp     $0E50
0E2D: 62 01        tsim     $01
0E2F: 28 20        jrnzp    $0E50
0E31: 61 01        orim     $01
0E33: F1 6A        cal      $116A
0E35: D4 DD        anid     $DD
0E37: D5 10        orid     $10
0E39: 10 40 21     lidp     $4021
0E3C: A8           lp       $28
0E3D: 00 09        lii      $09
0E3F: 18           mvwd
0E40: F1 F9        cal      $11F9
0E42: 06           iy
0E43: A8           lp       $28
0E44: 19           exwd
0E45: 86           lp       $06
0E46: 70 09        adim     $09
0E48: 78 68 56     call     $6856
0E4B: 02 00        lia      $00
0E4D: 26           iys
0E4E: F1 AF        cal      $11AF
0E50: 37           rtn
0E51: 10 C7 FF     lidp     $C7FF
0E54: 02 00        lia      $00
0E56: 52           std
0E57: 37           rtn
0E58: F1 E5        cal      $11E5
0E5A: 78 4E 51     call     $4E51
0E5D: 95           lp       $15
0E5E: 62 10        tsim     $10
0E60: 38 0E        jrzp     $0E6F
0E62: 62 04        tsim     $04
0E64: 38 0A        jrzp     $0E6F
0E66: 62 01        tsim     $01
0E68: 28 06        jrnzp    $0E6F
0E6A: F1 BD        cal      $11BD
0E6C: 79 4B D3     jp       $4BD3
0E6F: F1 9A        cal      $119A
0E71: F1 6A        cal      $116A
0E73: D6 20        tsid     $20
0E75: 38 1C        jrzp     $0E92
0E77: D6 08        tsid     $08
0E79: 38 05        jrzp     $0E7F
0E7B: 04           ix
0E7C: 04           ix
0E7D: 2C 17        jrp      $0E95
0E7F: 95           lp       $15
0E80: 62 06        tsim     $06
0E82: 38 12        jrzp     $0E95
0E84: 59           ldm
0E85: 64 11        ania     $11
0E87: 67 10        cpia     $10
0E89: 28 0B        jrnzp    $0E95
0E8B: 11 F1        lidl     $F1
0E8D: 84           lp       $04
0E8E: 55           mvmd
0E8F: 05           dx
0E90: 2C 04        jrp      $0E95
0E92: 78 68 4B     call     $684B
0E95: F1 77        cal      $1177
0E97: 78 60 67     call     $6067
0E9A: 02 00        lia      $00
0E9C: 86           lp       $06
0E9D: 63 FF        cpim     $FF
0E9F: 38 04        jrzp     $0EA4
0EA1: 26           iys
0EA2: 2D 06        jrm      $0E9D
0EA4: F1 9A        cal      $119A
0EA6: F1 5E        cal      $115E
0EA8: D6 01        tsid     $01
0EAA: 7E 50 66     jpz      $5066
0EAD: F1 6A        cal      $116A
0EAF: D6 20        tsid     $20
0EB1: 38 DE        jrzp     $0F90
0EB3: D6 01        tsid     $01
0EB5: 28 DA        jrnzp    $0F90
0EB7: 24           ixl
0EB8: 05           dx
0EB9: 67 40        cpia     $40
0EBB: 7F 50 16     jpc      $5016
0EBE: 67 4A        cpia     $4A
0EC0: 7D 50 16     jpnc     $5016
0EC3: 10 C6 D9     lidp     $C6D9
0EC6: D6 20        tsid     $20
0EC8: 28 C7        jrnzp    $0F90
0ECA: 00 01        lii      $01
0ECC: A8           lp       $28
0ECD: 02 00        lia      $00
0ECF: 1E           film
0ED0: 24           ixl
0ED1: 67 40        cpia     $40
0ED3: 39 04        jrzm     $0ED0
0ED5: 03 03        lib      $03
0ED7: 05           dx
0ED8: 24           ixl
0ED9: 67 40        cpia     $40
0EDB: 3A 21        jrcp     $0EFD
0EDD: 67 4A        cpia     $4A
0EDF: 2A 1D        jrncp    $0EFD
0EE1: A9           lp       $29
0EE2: 1D           slw
0EE3: 64 0F        ania     $0F
0EE5: A9           lp       $29
0EE6: 47           orma
0EE7: C3           decb
0EE8: 2B 11        jrncm    $0ED8
0EEA: F7 13        cal      $1713
0EEC: 79 6A 09     jp       $6A09
0EEF: 9A           lp       $1A
0EF0: 63 00        cpim     $00
0EF2: 7C 4F FE     jpnz     $4FFE
0EF5: 98           lp       $18
0EF6: 10 C6 E3     lidp     $C6E3
0EF9: 1A           mvbd
0EFA: 79 4F FE     jp       $4FFE
0EFD: 05           dx
0EFE: F2 00        cal      $1200
0F00: 78 46 E8     call     $46E8
0F03: F8 99        cal      $1899
0F05: 95           lp       $15
0F06: 60 EF        anim     $EF
0F08: A8           lp       $28
0F09: 61 E0        orim     $E0
0F0B: 63 E0        cpim     $E0
0F0D: 28 06        jrnzp    $0F14
0F0F: A9           lp       $29
0F10: 63 00        cpim     $00
0F12: 39 29        jrzm     $0EEA
0F14: 89           lp       $09
0F15: 60 00        anim     $00
0F17: 24           ixl
0F18: C8           incl
0F19: 67 00        cpia     $00
0F1B: 29 05        jrnzm    $0F17
0F1D: 89           lp       $09
0F1E: 59           ldm
0F1F: 8A           lp       $0A
0F20: DB           exam
0F21: 10 C6 E3     lidp     $C6E3
0F24: 84           lp       $04
0F25: 1A           mvbd
0F26: 25           dxl
0F27: 67 FF        cpia     $FF
0F29: 38 E5        jrzp     $100F
0F2B: 78 5E 47     call     $5E47
0F2E: 3B 40        jrcm     $0EEF
0F30: 84           lp       $04
0F31: 13 18        liq      $18
0F33: 0A           mvb
0F34: F1 77        cal      $1177
0F36: 04           ix
0F37: 88           lp       $08
0F38: 60 00        anim     $00
0F3A: 24           ixl
0F3B: 48           inck
0F3C: 67 00        cpia     $00
0F3E: 29 05        jrnzm    $0F3A
0F40: 8A           lp       $0A
0F41: 63 01        cpim     $01
0F43: 28 04        jrnzp    $0F48
0F45: 48           inck
0F46: 48           inck
0F47: C9           decl
0F48: F1 77        cal      $1177
0F4A: 88           lp       $08
0F4B: 59           ldm
0F4C: 89           lp       $09
0F4D: 45           sbm
0F4E: 59           ldm
0F4F: 2A 44        jrncp    $0F94
0F51: 03 FF        lib      $FF
0F53: 86           lp       $06
0F54: 14           adb
0F55: 88           lp       $08
0F56: 13 04        liq      $04
0F58: 0A           mvb
0F59: 10 C6 E3     lidp     $C6E3
0F5C: 82           lp       $02
0F5D: 1A           mvbd
0F5E: 88           lp       $08
0F5F: 15           sbb
0F60: 24           ixl
0F61: 26           iys
0F62: 48           inck
0F63: 2B 04        jrncm    $0F60
0F65: C8           incl
0F66: 2B 07        jrncm    $0F60
0F68: 10 C6 E3     lidp     $C6E3
0F6B: 86           lp       $06
0F6C: 1B           exbd
0F6D: 8A           lp       $0A
0F6E: 63 01        cpim     $01
0F70: 38 1F        jrzp     $0F90
0F72: 86           lp       $06
0F73: 13 18        liq      $18
0F75: 0A           mvb
0F76: 06           iy
0F77: F8 99        cal      $1899
0F79: 8A           lp       $0A
0F7A: 59           ldm
0F7B: DA           exab
0F7C: FF B6        cal      $1FB6
0F7E: 78 46 E8     call     $46E8
0F81: 78 62 CB     call     $62CB
0F84: D5 04        orid     $04
0F86: 11 D9        lidl     $D9
0F88: D5 08        orid     $08
0F8A: 78 61 BC     call     $61BC
0F8D: F1 E0        cal      $11E0
0F8F: 37           rtn
0F90: F8 C5        cal      $18C5
0F92: 2D 06        jrm      $0F8D
0F94: 39 23        jrzm     $0F72
0F96: 93           lp       $13
0F97: 60 FE        anim     $FE
0F99: 88           lp       $08
0F9A: 13 04        liq      $04
0F9C: 0A           mvb
0F9D: 10 C6 E3     lidp     $C6E3
0FA0: 84           lp       $04
0FA1: 1A           mvbd
0FA2: F1 77        cal      $1177
0FA4: 86           lp       $06
0FA5: 03 00        lib      $00
0FA7: 14           adb
0FA8: 8C           lp       $0C
0FA9: 13 06        liq      $06
0FAB: 0A           mvb
0FAC: 10 C6 FC     lidp     $C6FC
0FAF: 82           lp       $02
0FB0: 1A           mvbd
0FB1: 8C           lp       $0C
0FB2: 15           sbb
0FB3: 2A 29        jrncp    $0FDD
0FB5: 8C           lp       $0C
0FB6: 13 06        liq      $06
0FB8: 0A           mvb
0FB9: 10 C6 E3     lidp     $C6E3
0FBC: 8C           lp       $0C
0FBD: 1B           exbd
0FBE: 04           ix
0FBF: 06           iy
0FC0: 82           lp       $02
0FC1: 13 04        liq      $04
0FC3: 0A           mvb
0FC4: 88           lp       $08
0FC5: 15           sbb
0FC6: 25           dxl
0FC7: 27           dys
0FC8: 48           inck
0FC9: 2B 04        jrncm    $0FC6
0FCB: C8           incl
0FCC: 2B 07        jrncm    $0FC6
0FCE: 86           lp       $06
0FCF: 13 18        liq      $18
0FD1: 0A           mvb
0FD2: 93           lp       $13
0FD3: 62 01        tsim     $01
0FD5: 39 60        jrzm     $0F76
0FD7: 07           dy
0FD8: 06           iy
0FD9: A8           lp       $28
0FDA: 1B           exbd
0FDB: 2D 66        jrm      $0F76
0FDD: 8C           lp       $0C
0FDE: 13 06        liq      $06
0FE0: 0A           mvb
0FE1: 02 D0        lia      $D0
0FE3: 03 C5        lib      $C5
0FE5: 8C           lp       $0C
0FE6: 15           sbb
0FE7: 2A 0E        jrncp    $0FF6
0FE9: 10 C6 FC     lidp     $C6FC
0FEC: 82           lp       $02
0FED: 00 01        lii      $01
0FEF: 19           exwd
0FF0: 11 D8        lidl     $D8
0FF2: D4 F7        anid     $F7
0FF4: 2D 40        jrm      $0FB5
0FF6: F7 1B        cal      $171B
0FF8: F1 9A        cal      $119A
0FFA: 04           ix
0FFB: 79 4E EC     jp       $4EEC
0FFE: 8A           lp       $0A
0FFF: 59           ldm
1000: 67 01        cpia     $01
1002: 39 73        jrzm     $0F90
1004: 74 02        adia     $02
1006: 93           lp       $13
1007: 61 01        orim     $01
1009: 88           lp       $08
100A: 13 18        liq      $18
100C: 0A           mvb
100D: 2D 71        jrm      $0F9D
100F: 04           ix
1010: 98           lp       $18
1011: 13 04        liq      $04
1013: 0A           mvb
1014: 2D 17        jrm      $0FFE
1016: 96           lp       $16
1017: 60 EF        anim     $EF
1019: 61 02        orim     $02
101B: 95           lp       $15
101C: 60 DF        anim     $DF
101E: F1 6A        cal      $116A
1020: D4 E0        anid     $E0
1022: F1 62        cal      $1162
1024: D4 FB        anid     $FB
1026: F1 9A        cal      $119A
1028: 78 63 E6     call     $63E6
102B: 37           rtn
102C: F1 5E        cal      $115E
102E: D6 02        tsid     $02
1030: F1 6A        cal      $116A
1032: 38 29        jrzp     $105C
1034: 95           lp       $15
1035: 62 10        tsim     $10
1037: 38 24        jrzp     $105C
1039: 62 01        tsim     $01
103B: 28 20        jrnzp    $105C
103D: 62 08        tsim     $08
103F: 38 13        jrzp     $1053
1041: D6 01        tsid     $01
1043: 28 05        jrnzp    $1049
1045: D6 20        tsid     $20
1047: 29 32        jrnzm    $1016
1049: D4 C0        anid     $C0
104B: 60 FE        anim     $FE
104D: F1 BD        cal      $11BD
104F: 95           lp       $15
1050: 79 4C 76     jp       $4C76
1053: 62 02        tsim     $02
1055: 38 06        jrzp     $105C
1057: F1 BD        cal      $11BD
1059: 79 4B D3     jp       $4BD3
105C: D6 20        tsid     $20
105E: 39 CF        jrzm     $0F90
1060: D6 01        tsid     $01
1062: 29 D3        jrnzm    $0F90
1064: 2D 4F        jrm      $1016
1066: F1 6A        cal      $116A
1068: 2D 3D        jrm      $102C
106A: 93           lp       $13
106B: 60 7F        anim     $7F
106D: 24           ixl
106E: 67 12        cpia     $12
1070: 38 0F        jrzp     $1080
1072: 67 00        cpia     $00
1074: 38 09        jrzp     $107E
1076: 67 1D        cpia     $1D
1078: 29 0C        jrnzm    $106D
107A: 62 80        tsim     $80
107C: 29 10        jrnzm    $106D
107E: 05           dx
107F: 37           rtn
1080: 70 80        adim     $80
1082: 2D 16        jrm      $106D
1084: F2 05        cal      $1205
1086: 3A 2E        jrcp     $10B5
1088: F1 6E        cal      $116E
108A: 2A 4B        jrncp    $10D6
108C: 78 59 16     call     $5916
108F: E2 2A        cal      $022A
1091: F2 BD        cal      $12BD
1093: A2           lp       $22
1094: 02 10        lia      $10
1096: DB           exam
1097: EB 67        cal      $0B67
1099: A1           lp       $21
109A: 62 08        tsim     $08
109C: 28 18        jrnzp    $10B5
109E: 02 30        lia      $30
10A0: FF B1        cal      $1FB1
10A2: 78 59 16     call     $5916
10A5: 2A 0F        jrncp    $10B5
10A7: 02 00        lia      $00
10A9: FF B1        cal      $1FB1
10AB: A2           lp       $22
10AC: 63 00        cpim     $00
10AE: 38 06        jrzp     $10B5
10B0: 78 59 16     call     $5916
10B3: 3B 25        jrcm     $108F
10B5: 37           rtn
10B6: F1 5E        cal      $115E
10B8: D6 02        tsid     $02
10BA: 38 1B        jrzp     $10D6
10BC: 95           lp       $15
10BD: 62 10        tsim     $10
10BF: 38 16        jrzp     $10D6
10C1: 62 09        tsim     $09
10C3: 38 11        jrzp     $10D5
10C5: 60 FE        anim     $FE
10C7: 10 C7 02     lidp     $C702
10CA: 9C           lp       $1C
10CB: 00 03        lii      $03
10CD: 18           mvwd
10CE: 98           lp       $18
10CF: 13 1C        liq      $1C
10D1: 08           mvw
10D2: 96           lp       $16
10D3: 61 10        orim     $10
10D5: 37           rtn
10D6: F7 27        cal      $1727
10D8: 37           rtn
10D9: 02 CF        lia      $CF
10DB: 03 C5        lib      $C5
10DD: F1 EE        cal      $11EE
10DF: 06           iy
10E0: 02 00        lia      $00
10E2: 00 CF        lii      $CF
10E4: 1F           fild
10E5: 10 C6 FC     lidp     $C6FC
10E8: 86           lp       $06
10E9: 1B           exbd
10EA: 11 D8        lidl     $D8
10EC: D4 F7        anid     $F7
10EE: 37           rtn
10EF: F2 05        cal      $1205
10F1: 3B 04        jrcm     $10EE
10F3: 92           lp       $12
10F4: 60 00        anim     $00
10F6: 93           lp       $13
10F7: 61 80        orim     $80
10F9: F7 37        cal      $1737
10FB: 3B 0E        jrcm     $10EE
10FD: 78 59 22     call     $5922
1100: A9           lp       $29
1101: DB           exam
1102: 26           iys
1103: A8           lp       $28
1104: DB           exam
1105: 26           iys
1106: 78 67 44     call     $6744
1109: 78 C6 DB     call     $C6DB
110C: D1           rc
110D: 79 67 49     jp       $6749
1110: 93           lp       $13
1111: 60 9F        anim     $9F
1113: 61 40        orim     $40
1115: 78 59 2C     call     $592C
1118: 3A 96        jrcp     $11AF
111A: 8A           lp       $0A
111B: 59           ldm
111C: 8E           lp       $0E
111D: DB           exam
111E: 93           lp       $13
111F: 62 02        tsim     $02
1121: 28 86        jrnzp    $11A8
1123: 62 04        tsim     $04
1125: 38 91        jrzp     $11B7
1127: 24           ixl
1128: 67 37        cpia     $37
112A: 28 85        jrnzp    $11B0
112C: 8E           lp       $0E
112D: 59           ldm
112E: 34           push
112F: F2 05        cal      $1205
1131: 5B           pop
1132: 8E           lp       $0E
1133: DB           exam
1134: 3A 7A        jrcp     $11AF
1136: 92           lp       $12
1137: 60 F0        anim     $F0
1139: 61 06        orim     $06
113B: 93           lp       $13
113C: 60 7F        anim     $7F
113E: F7 37        cal      $1737
1140: 3A 6E        jrcp     $11AF
1142: 10 C6 D0     lidp     $C6D0
1145: 8C           lp       $0C
1146: 1A           mvbd
1147: 8C           lp       $0C
1148: 78 59 33     call     $5933
114B: 8A           lp       $0A
114C: 13 02        liq      $02
114E: 0A           mvb
114F: 8D           lp       $0D
1150: 78 59 33     call     $5933
1153: FA 9E        cal      $1A9E
1155: 3A 4F        jrcp     $11A5
1157: A8           lp       $28
1158: 59           ldm
1159: 03 00        lib      $00
115B: FA 9E        cal      $1A9E
115D: 3A 47        jrcp     $11A5
115F: 88           lp       $08
1160: 13 0A        liq      $0A
1162: 0A           mvb
1163: 02 06        lia      $06
1165: 03 00        lib      $00
1167: 8A           lp       $0A
1168: 14           adb
1169: 10 C6 FC     lidp     $C6FC
116C: 86           lp       $06
116D: 1A           mvbd
116E: 82           lp       $02
116F: 13 0A        liq      $0A
1171: 0A           mvb
1172: 86           lp       $06
1173: 15           sbb
1174: 3A 30        jrcp     $11A5
1176: F8 B0        cal      $18B0
1178: 2A 2C        jrncp    $11A5
117A: 10 C6 FC     lidp     $C6FC
117D: 86           lp       $06
117E: 1B           exbd
117F: 11 FC        lidl     $FC
1181: 86           lp       $06
1182: 1A           mvbd
1183: 07           dy
1184: 8E           lp       $0E
1185: 59           ldm
1186: 26           iys
1187: 8A           lp       $0A
1188: 13 08        liq      $08
118A: 0A           mvb
118B: 02 03        lia      $03
118D: 03 00        lib      $00
118F: 8A           lp       $0A
1190: 14           adb
1191: 8B           lp       $0B
1192: 59           ldm
1193: 26           iys
1194: 8A           lp       $0A
1195: 59           ldm
1196: 26           iys
1197: 8C           lp       $0C
1198: 59           ldm
1199: 26           iys
119A: 8D           lp       $0D
119B: 59           ldm
119C: 26           iys
119D: A8           lp       $28
119E: 59           ldm
119F: 26           iys
11A0: 78 59 3B     call     $593B
11A3: 2C 04        jrp      $11A8
11A5: F7 1B        cal      $171B
11A7: 37           rtn
11A8: 24           ixl
11A9: 67 1B        cpia     $1B
11AB: 39 9C        jrzm     $1110
11AD: D1           rc
11AE: 05           dx
11AF: 37           rtn
11B0: 02 10        lia      $10
11B2: 05           dx
11B3: A8           lp       $28
11B4: DB           exam
11B5: 2D 74        jrm      $1142
11B7: 02 08        lia      $08
11B9: 2D 07        jrm      $11B3
11BB: 10 F8 3C     lidp     $F83C
11BE: D5 0C        orid     $0C
11C0: 11 3D        lidl     $3D
11C2: D4 FB        anid     $FB
11C4: 37           rtn
11C5: 95           lp       $15
11C6: 60 EF        anim     $EF
11C8: 96           lp       $16
11C9: 61 20        orim     $20
11CB: 79 59 A3     jp       $59A3
11CE: 93           lp       $13
11CF: 60 9F        anim     $9F
11D1: 78 59 2C     call     $592C
11D4: 3A 7F        jrcp     $1254
11D6: 93           lp       $13
11D7: 62 04        tsim     $04
11D9: 28 89        jrnzp    $1263
11DB: 24           ixl
11DC: 67 34        cpia     $34
11DE: 7C 17 05     jpnz     $1705
11E1: 8A           lp       $0A
11E2: 13 06        liq      $06
11E4: 0A           mvb
11E5: 10 C6 F3     lidp     $C6F3
11E8: 57           ldd
11E9: 67 60        cpia     $60
11EB: 7E 17 17     jpz      $1717
11EE: 03 C7        lib      $C7
11F0: F1 F5        cal      $11F5
11F2: 06           iy
11F3: 8A           lp       $0A
11F4: 1B           exbd
11F5: F2 05        cal      $1205
11F7: 3A 5C        jrcp     $1254
11F9: F1 6E        cal      $116E
11FB: 2A 67        jrncp    $1263
11FD: 78 59 4F     call     $594F
1200: 06           iy
1201: 86           lp       $06
1202: 1A           mvbd
1203: 06           iy
1204: A0           lp       $20
1205: 00 07        lii      $07
1207: 19           exwd
1208: 24           ixl
1209: 67 90        cpia     $90
120B: 7C 17 05     jpnz     $1705
120E: F2 05        cal      $1205
1210: 3A 43        jrcp     $1254
1212: 78 59 58     call     $5958
1215: 3A 3E        jrcp     $1254
1217: 78 59 4F     call     $594F
121A: 06           iy
121B: 06           iy
121C: 06           iy
121D: A8           lp       $28
121E: 1B           exbd
121F: 10 C6 F3     lidp     $C6F3
1222: 86           lp       $06
1223: 53           mvdm
1224: 24           ixl
1225: 67 91        cpia     $91
1227: 28 2D        jrnzp    $1255
1229: F2 05        cal      $1205
122B: 3A 28        jrcp     $1254
122D: F1 6E        cal      $116E
122F: 2A 33        jrncp    $1263
1231: 78 59 58     call     $5958
1234: 3A 1F        jrcp     $1254
1236: ED 42        cal      $0D42
1238: A2           lp       $22
1239: 63 00        cpim     $00
123B: 38 27        jrzp     $1263
123D: 78 59 4F     call     $594F
1240: 06           iy
1241: 06           iy
1242: 06           iy
1243: A0           lp       $20
1244: 00 07        lii      $07
1246: 19           exwd
1247: 86           lp       $06
1248: 70 07        adim     $07
124A: 78 59 7D     call     $597D
124D: 10 C6 F3     lidp     $C6F3
1250: 57           ldd
1251: 74 0E        adia     $0E
1253: 52           std
1254: 37           rtn
1255: F2 BD        cal      $12BD
1257: A2           lp       $22
1258: 61 10        orim     $10
125A: 05           dx
125B: 2D 1F        jrm      $123D
125D: F1 5E        cal      $115E
125F: D6 02        tsid     $02
1261: 28 04        jrnzp    $1266
1263: F7 27        cal      $1727
1265: 37           rtn
1266: F2 05        cal      $1205
1268: 3A 18        jrcp     $1281
126A: 78 59 63     call     $5963
126D: 3A 13        jrcp     $1281
126F: 96           lp       $16
1270: 62 02        tsim     $02
1272: 28 06        jrnzp    $1279
1274: 61 08        orim     $08
1276: 79 59 A3     jp       $59A3
1279: 61 10        orim     $10
127B: 78 59 73     call     $5973
127E: 95           lp       $15
127F: 60 F1        anim     $F1
1281: 37           rtn
1282: F2 05        cal      $1205
1284: 3A 20        jrcp     $12A5
1286: 78 59 63     call     $5963
1289: 3A 1B        jrcp     $12A5
128B: 10 C6 F4     lidp     $C6F4
128E: 57           ldd
128F: 67 A8        cpia     $A8
1291: 7D 17 17     jpnc     $1717
1294: 03 F8        lib      $F8
1296: F1 F5        cal      $11F5
1298: 78 59 7D     call     $597D
129B: 10 C6 F4     lidp     $C6F4
129E: 57           ldd
129F: 74 04        adia     $04
12A1: 52           std
12A2: 96           lp       $16
12A3: 61 08        orim     $08
12A5: 37           rtn
12A6: 10 F8 3C     lidp     $F83C
12A9: D4 F3        anid     $F3
12AB: D5 04        orid     $04
12AD: 11 3D        lidl     $3D
12AF: D5 04        orid     $04
12B1: 37           rtn
12B2: 24           ixl
12B3: 67 15        cpia     $15
12B5: 7E 77 65     jpz      $7765
12B8: 96           lp       $16
12B9: 62 02        tsim     $02
12BB: 7C 17 27     jpnz     $1727
12BE: 67 12        cpia     $12
12C0: 78 68 4B     call     $684B
12C3: 05           dx
12C4: 28 7A        jrnzp    $133F
12C6: 04           ix
12C7: 24           ixl
12C8: 67 12        cpia     $12
12CA: 38 6B        jrzp     $1336
12CC: F1 F9        cal      $11F9
12CE: 05           dx
12CF: 24           ixl
12D0: 67 12        cpia     $12
12D2: 38 09        jrzp     $12DC
12D4: 67 00        cpia     $00
12D6: 26           iys
12D7: 29 09        jrnzm    $12CF
12D9: F7 05        cal      $1705
12DB: 37           rtn
12DC: 02 00        lia      $00
12DE: 26           iys
12DF: 24           ixl
12E0: 67 1C        cpia     $1C
12E2: 28 40        jrnzp    $1323
12E4: 78 59 AD     call     $59AD
12E7: 11 EA        lidl     $EA
12E9: 53           mvdm
12EA: 11 DA        lidl     $DA
12EC: D5 20        orid     $20
12EE: 93           lp       $13
12EF: 60 9F        anim     $9F
12F1: 78 59 2C     call     $592C
12F4: 3A 23        jrcp     $1318
12F6: 10 C6 EE     lidp     $C6EE
12F9: 86           lp       $06
12FA: 1B           exbd
12FB: 93           lp       $13
12FC: 62 04        tsim     $04
12FE: 38 1F        jrzp     $131E
1300: 62 12        tsim     $12
1302: 38 03        jrzp     $1306
1304: 02 00        lia      $00
1306: 11 F0        lidl     $F0
1308: 52           std
1309: 95           lp       $15
130A: 61 04        orim     $04
130C: FA CF        cal      $1ACF
130E: F1 6A        cal      $116A
1310: D6 20        tsid     $20
1312: 28 06        jrnzp    $1319
1314: F1 AF        cal      $11AF
1316: FA CF        cal      $1ACF
1318: 37           rtn
1319: 78 6B 55     call     $6B55
131C: 2D 07        jrm      $1316
131E: 95           lp       $15
131F: 61 02        orim     $02
1321: 2D 16        jrm      $130C
1323: 67 1B        cpia     $1B
1325: 29 4D        jrnzm    $12D9
1327: F1 6A        cal      $116A
1329: D4 DF        anid     $DF
132B: F1 F9        cal      $11F9
132D: 06           iy
132E: 78 59 AD     call     $59AD
1331: 11 EA        lidl     $EA
1333: 53           mvdm
1334: 2D 47        jrm      $12EE
1336: 24           ixl
1337: 67 1B        cpia     $1B
1339: 38 05        jrzp     $133F
133B: 67 1C        cpia     $1C
133D: 29 65        jrnzm    $12D9
133F: F1 F9        cal      $11F9
1341: 02 13        lia      $13
1343: 26           iys
1344: 02 00        lia      $00
1346: 26           iys
1347: 2D 21        jrm      $1327
1349: F2 05        cal      $1205
134B: 3A 31        jrcp     $137D
134D: F1 6E        cal      $116E
134F: 2A 3E        jrncp    $138E
1351: A1           lp       $21
1352: 62 08        tsim     $08
1354: 28 3E        jrnzp    $1393
1356: A2           lp       $22
1357: 63 00        cpim     $00
1359: 38 39        jrzp     $1393
135B: 24           ixl
135C: 67 92        cpia     $92
135E: 28 02        jrnzp    $1361
1360: 24           ixl
1361: 05           dx
1362: 67 6B        cpia     $6B
1364: 3A 11        jrcp     $1376
1366: 67 B0        cpia     $B0
1368: 3A 15        jrcp     $137E
136A: 67 BD        cpia     $BD
136C: 38 09        jrzp     $1376
136E: 67 BF        cpia     $BF
1370: 38 05        jrzp     $1376
1372: 67 B2        cpia     $B2
1374: 28 04        jrnzp    $1379
1376: 79 52 5D     jp       $525D
1379: 96           lp       $16
137A: 61 40        orim     $40
137C: D1           rc
137D: 37           rtn
137E: 67 90        cpia     $90
1380: 3A 07        jrcp     $1388
1382: 67 A0        cpia     $A0
1384: 2B 0F        jrncm    $1376
1386: 2D 0E        jrm      $1379
1388: 67 76        cpia     $76
138A: 2B 15        jrncm    $1376
138C: 2D 14        jrm      $1379
138E: A7           lp       $27
138F: 63 00        cpim     $00
1391: 29 37        jrnzm    $135B
1393: 79 59 B3     jp       $59B3
1396: F1 5E        cal      $115E
1398: D6 01        tsid     $01
139A: 7E 17 27     jpz      $1727
139D: 10 C6 D9     lidp     $C6D9
13A0: D5 08        orid     $08
13A2: D6 20        tsid     $20
13A4: 28 33        jrnzp    $13D8
13A6: 24           ixl
13A7: 05           dx
13A8: 67 00        cpia     $00
13AA: 38 55        jrzp     $1400
13AC: F2 05        cal      $1205
13AE: 3A 29        jrcp     $13D8
13B0: F2 00        cal      $1200
13B2: 24           ixl
13B3: 67 00        cpia     $00
13B5: 29 DD        jrnzm    $12D9
13B7: F1 89        cal      $1189
13B9: 24           ixl
13BA: 67 FF        cpia     $FF
13BC: 38 14        jrzp     $13D1
13BE: 78 6A 31     call     $6A31
13C1: 2A 20        jrncp    $13E2
13C3: 78 5D 88     call     $5D88
13C6: 3A 12        jrcp     $13D9
13C8: F1 6A        cal      $116A
13CA: D4 DF        anid     $DF
13CC: D5 04        orid     $04
13CE: 78 61 AB     call     $61AB
13D1: 02 FF        lia      $FF
13D3: 03 C7        lib      $C7
13D5: F1 F1        cal      $11F1
13D7: D1           rc
13D8: 37           rtn
13D9: 9A           lp       $1A
13DA: 63 00        cpim     $00
13DC: 29 15        jrnzm    $13C8
13DE: D0           sc
13DF: F8 99        cal      $1899
13E1: 37           rtn
13E2: 10 20 07     lidp     $2007
13E5: D6 FF        tsid     $FF
13E7: 39 25        jrzm     $13C3
13E9: F1 8F        cal      $118F
13EB: F1 6E        cal      $116E
13ED: 3A 06        jrcp     $13F4
13EF: 78 5D 96     call     $5D96
13F2: 2D 2D        jrm      $13C6
13F4: 78 5E 76     call     $5E76
13F7: 98           lp       $18
13F8: 13 04        liq      $04
13FA: 0A           mvb
13FB: 78 5E 04     call     $5E04
13FE: 2D 39        jrm      $13C6
1400: F2 BD        cal      $12BD
1402: F2 00        cal      $1200
1404: 2D 4E        jrm      $13B7
1406: 93           lp       $13
1407: 60 9F        anim     $9F
1409: 78 59 2C     call     $592C
140C: 3A 63        jrcp     $1470
140E: 34           push
140F: 24           ixl
1410: 67 34        cpia     $34
1412: 5B           pop
1413: 7C 17 05     jpnz     $1705
1416: 78 54 23     call     $5423
1419: 3A 08        jrcp     $1422
141B: 24           ixl
141C: 67 1B        cpia     $1B
141E: 39 19        jrzm     $1406
1420: 05           dx
1421: D1           rc
1422: 37           rtn
1423: 78 62 E1     call     $62E1
1426: F2 05        cal      $1205
1428: 3A 47        jrcp     $1470
142A: 78 5B E0     call     $5BE0
142D: 11 ED        lidl     $ED
142F: F1 6E        cal      $116E
1431: 2A 17        jrncp    $1449
1433: D6 80        tsid     $80
1435: 38 10        jrzp     $1446
1437: 11 EB        lidl     $EB
1439: 86           lp       $06
143A: 1A           mvbd
143B: 06           iy
143C: A0           lp       $20
143D: 00 07        lii      $07
143F: 19           exwd
1440: 07           dy
1441: 06           iy
1442: A0           lp       $20
1443: 18           mvwd
1444: D1           rc
1445: 37           rtn
1446: F7 27        cal      $1727
1448: 37           rtn
1449: D6 80        tsid     $80
144B: 29 06        jrnzm    $1446
144D: F1 C7        cal      $11C7
144F: 57           ldd
1450: 67 00        cpia     $00
1452: 11 EB        lidl     $EB
1454: 86           lp       $06
1455: 1A           mvbd
1456: 28 1F        jrnzp    $1476
1458: 02 F5        lia      $F5
145A: 26           iys
145B: 03 07        lib      $07
145D: A7           lp       $27
145E: 59           ldm
145F: 88           lp       $08
1460: DB           exam
1461: 84           lp       $04
1462: 13 25        liq      $25
1464: 0A           mvb
1465: 05           dx
1466: 49           deck
1467: 3A 09        jrcp     $1471
1469: 24           ixl
146A: 26           iys
146B: C3           decb
146C: 29 07        jrnzm    $1466
146E: F1 D2        cal      $11D2
1470: 37           rtn
1471: 02 00        lia      $00
1473: 26           iys
1474: 2D 07        jrm      $146E
1476: DA           exab
1477: 2D 1B        jrm      $145D
1479: 93           lp       $13
147A: 60 9F        anim     $9F
147C: 61 20        orim     $20
147E: 78 59 2C     call     $592C
1481: 3A 7A        jrcp     $14FC
1483: F1 6E        cal      $116E
1485: 2B 40        jrncm    $1446
1487: FA CF        cal      $1ACF
1489: 10 C6 F3     lidp     $C6F3
148C: 57           ldd
148D: 67 10        cpia     $10
148F: 38 6D        jrzp     $14FD
1491: 03 C7        lib      $C7
1493: 75 10        sbia     $10
1495: F1 F1        cal      $11F1
1497: 04           ix
1498: 8C           lp       $0C
1499: 13 04        liq      $04
149B: 0A           mvb
149C: 82           lp       $02
149D: 1A           mvbd
149E: 82           lp       $02
149F: 13 06        liq      $06
14A1: 0B           exb
14A2: 86           lp       $06
14A3: 15           sbb
14A4: 82           lp       $02
14A5: 13 06        liq      $06
14A7: 0B           exb
14A8: 38 09        jrzp     $14B2
14AA: 84           lp       $04
14AB: 59           ldm
14AC: 10 C6 F3     lidp     $C6F3
14AF: 52           std
14B0: 2D 24        jrm      $148D
14B2: E1 FF        cal      $01FF
14B4: 84           lp       $04
14B5: 13 0C        liq      $0C
14B7: 0A           mvb
14B8: 04           ix
14B9: 04           ix
14BA: A8           lp       $28
14BB: 1A           mvbd
14BC: ED 42        cal      $0D42
14BE: E2 73        cal      $0273
14C0: EB 67        cal      $0B67
14C2: 04           ix
14C3: 04           ix
14C4: A8           lp       $28
14C5: 00 07        lii      $07
14C7: 18           mvwd
14C8: A9           lp       $29
14C9: 62 08        tsim     $08
14CB: A1           lp       $21
14CC: 38 13        jrzp     $14E0
14CE: 62 08        tsim     $08
14D0: 28 06        jrnzp    $14D7
14D2: A2           lp       $22
14D3: 63 00        cpim     $00
14D5: 28 0E        jrnzp    $14E4
14D7: 10 C6 F3     lidp     $C6F3
14DA: 57           ldd
14DB: 75 10        sbia     $10
14DD: 52           std
14DE: 2C 1B        jrp      $14FA
14E0: 62 08        tsim     $08
14E2: 39 0C        jrzm     $14D7
14E4: E2 38        cal      $0238
14E6: E2 73        cal      $0273
14E8: EB 50        cal      $0B50
14EA: E1 FF        cal      $01FF
14EC: 06           iy
14ED: A0           lp       $20
14EE: 19           exwd
14EF: 84           lp       $04
14F0: 70 07        adim     $07
14F2: 04           ix
14F3: 98           lp       $18
14F4: 00 03        lii      $03
14F6: 18           mvwd
14F7: 96           lp       $16
14F8: 61 08        orim     $08
14FA: FA CF        cal      $1ACF
14FC: 37           rtn
14FD: F7 17        cal      $1717
14FF: 2D 06        jrm      $14FA
1501: F1 5E        cal      $115E
1503: D6 02        tsid     $02
1505: 29 C0        jrnzm    $1446
1507: 10 C6 D9     lidp     $C6D9
150A: D6 20        tsid     $20
150C: 28 23        jrnzp    $1530
150E: 24           ixl
150F: 67 00        cpia     $00
1511: 28 62        jrnzp    $1574
1513: 05           dx
1514: F2 00        cal      $1200
1516: F1 5E        cal      $115E
1518: D6 01        tsid     $01
151A: 28 16        jrnzp    $1531
151C: 10 C6 C4     lidp     $C6C4
151F: 86           lp       $06
1520: 1A           mvbd
1521: 06           iy
1522: 87           lp       $07
1523: 63 80        cpim     $80
1525: 3A 06        jrcp     $152C
1527: 00 2F        lii      $2F
1529: 02 00        lia      $00
152B: 1F           fild
152C: F8 C5        cal      $18C5
152E: F8 99        cal      $1899
1530: 37           rtn
1531: 10 C6 E1     lidp     $C6E1
1534: 86           lp       $06
1535: 1A           mvbd
1536: 07           dy
1537: 02 FF        lia      $FF
1539: 26           iys
153A: 26           iys
153B: 10 C6 E3     lidp     $C6E3
153E: 8A           lp       $0A
153F: 13 06        liq      $06
1541: 0A           mvb
1542: 8A           lp       $0A
1543: 1B           exbd
1544: 06           iy
1545: 10 C7 0E     lidp     $C70E
1548: 86           lp       $06
1549: 1B           exbd
154A: 78 50 D9     call     $50D9
154D: 10 C6 D9     lidp     $C6D9
1550: D4 59        anid     $59
1552: 11 D8        lidl     $D8
1554: D4 F2        anid     $F2
1556: D5 02        orid     $02
1558: 95           lp       $15
1559: 60 C0        anim     $C0
155B: 2D 30        jrm      $152C
155D: F2 05        cal      $1205
155F: 3A 49        jrcp     $15A9
1561: 92           lp       $12
1562: 60 F0        anim     $F0
1564: 61 06        orim     $06
1566: 93           lp       $13
1567: 60 7F        anim     $7F
1569: F7 37        cal      $1737
156B: 2A 0E        jrncp    $157A
156D: 94           lp       $14
156E: 63 03        cpim     $03
1570: 38 06        jrzp     $1577
1572: D0           sc
1573: 37           rtn
1574: F7 05        cal      $1705
1576: 37           rtn
1577: A8           lp       $28
1578: 61 FF        orim     $FF
157A: 24           ixl
157B: 96           lp       $16
157C: 60 7F        anim     $7F
157E: 67 D8        cpia     $D8
1580: 38 07        jrzp     $1588
1582: 67 D7        cpia     $D7
1584: 29 11        jrnzm    $1574
1586: 61 80        orim     $80
1588: A8           lp       $28
1589: 59           ldm
158A: DA           exab
158B: C3           decb
158C: 38 21        jrzp     $15AE
158E: 93           lp       $13
158F: 60 7F        anim     $7F
1591: 24           ixl
1592: 67 00        cpia     $00
1594: 38 13        jrzp     $15A8
1596: 67 12        cpia     $12
1598: 38 11        jrzp     $15AA
159A: 62 80        tsim     $80
159C: 29 0C        jrnzm    $1591
159E: 67 1D        cpia     $1D
15A0: 38 07        jrzp     $15A8
15A2: 67 1B        cpia     $1B
15A4: 29 14        jrnzm    $1591
15A6: 2D 1C        jrm      $158B
15A8: 05           dx
15A9: 37           rtn
15AA: 70 80        adim     $80
15AC: 2D 1C        jrm      $1591
15AE: F2 05        cal      $1205
15B0: 3B 08        jrcm     $15A9
15B2: 78 59 63     call     $5963
15B5: 3B 0D        jrcm     $15A9
15B7: 96           lp       $16
15B8: 61 08        orim     $08
15BA: 78 50 6A     call     $506A
15BD: 96           lp       $16
15BE: 62 80        tsim     $80
15C0: 7E 52 8B     jpz      $528B
15C3: 79 59 A3     jp       $59A3
15C6: 24           ixl
15C7: 67 15        cpia     $15
15C9: 38 90        jrzp     $165A
15CB: 67 34        cpia     $34
15CD: 38 73        jrzp     $1641
15CF: 05           dx
15D0: 96           lp       $16
15D1: 62 02        tsim     $02
15D3: 29 60        jrnzm    $1574
15D5: 10 C6 D7     lidp     $C6D7
15D8: D6 08        tsid     $08
15DA: 7C 7B 3B     jpnz     $7B3B
15DD: 78 7B 6B     call     $7B6B
15E0: 3B 6D        jrcm     $1574
15E2: 78 59 BA     call     $59BA
15E5: 3A 42        jrcp     $1628
15E7: F1 F9        cal      $11F9
15E9: 10 C6 E7     lidp     $C6E7
15EC: 57           ldd
15ED: 03 00        lib      $00
15EF: 86           lp       $06
15F0: 14           adb
15F1: 02 00        lia      $00
15F3: 26           iys
15F4: 78 56 64     call     $5664
15F7: 28 39        jrnzp    $1631
15F9: 78 69 A7     call     $69A7
15FC: FA CF        cal      $1ACF
15FE: 10 C6 D8     lidp     $C6D8
1601: D6 04        tsid     $04
1603: 28 25        jrnzp    $1629
1605: 02 00        lia      $00
1607: 03 00        lib      $00
1609: 88           lp       $08
160A: 13 02        liq      $02
160C: 0A           mvb
160D: F1 E0        cal      $11E0
160F: 10 F8 3D     lidp     $F83D
1612: D5 01        orid     $01
1614: 10 C6 E5     lidp     $C6E5
1617: 82           lp       $02
1618: 1A           mvbd
1619: 88           lp       $08
161A: 15           sbb
161B: 38 04        jrzp     $1620
161D: 78 5B ED     call     $5BED
1620: 10 F8 3D     lidp     $F83D
1623: D4 FE        anid     $FE
1625: F1 E5        cal      $11E5
1627: D1           rc
1628: 37           rtn
1629: 95           lp       $15
162A: 61 08        orim     $08
162C: F1 6A        cal      $116A
162E: D5 01        orid     $01
1630: 37           rtn
1631: 78 6A 62     call     $6A62
1634: 3A 04        jrcp     $1639
1636: 78 7C F1     call     $7CF1
1639: FA CF        cal      $1ACF
163B: 10 C6 D7     lidp     $C6D7
163E: D4 DF        anid     $DF
1640: 37           rtn
1641: 24           ixl
1642: 10 C6 D7     lidp     $C6D7
1645: 67 C1        cpia     $C1
1647: 38 0F        jrzp     $1657
1649: 67 9F        cpia     $9F
164B: 29 D8        jrnzm    $1574
164D: 78 6B 4F     call     $6B4F
1650: 11 D7        lidl     $D7
1652: 38 04        jrzp     $1657
1654: D5 08        orid     $08
1656: 37           rtn
1657: D4 F7        anid     $F7
1659: 37           rtn
165A: 78 74 5A     call     $745A
165D: 37           rtn
165E: 10 C6 D7     lidp     $C6D7
1661: D6 40        tsid     $40
1663: 37           rtn
1664: 10 C6 D7     lidp     $C6D7
1667: D6 04        tsid     $04
1669: 28 05        jrnzp    $166F
166B: F1 66        cal      $1166
166D: D6 02        tsid     $02
166F: 37           rtn
1670: 78 59 BA     call     $59BA
1673: 3A 20        jrcp     $1694
1675: 78 69 A7     call     $69A7
1678: FA CF        cal      $1ACF
167A: 02 CA        lia      $CA
167C: 03 FF        lib      $FF
167E: 88           lp       $08
167F: 13 02        liq      $02
1681: 0A           mvb
1682: F1 E0        cal      $11E0
1684: 10 F8 3D     lidp     $F83D
1687: D5 01        orid     $01
1689: 78 5B ED     call     $5BED
168C: 10 F8 3D     lidp     $F83D
168F: D4 FE        anid     $FE
1691: F1 E5        cal      $11E5
1693: D1           rc
1694: 37           rtn
1695: FA CF        cal      $1ACF
1697: F1 8F        cal      $118F
1699: 88           lp       $08
169A: 02 07        lia      $07
169C: DB           exam
169D: 24           ixl
169E: 67 FF        cpia     $FF
16A0: 38 32        jrzp     $16D3
16A2: F8 99        cal      $1899
16A4: 24           ixl
16A5: 67 12        cpia     $12
16A7: 28 2B        jrnzp    $16D3
16A9: 10 C6 D9     lidp     $C6D9
16AC: D6 20        tsid     $20
16AE: 02 A8        lia      $A8
16B0: 03 F8        lib      $F8
16B2: 38 3F        jrzp     $16F2
16B4: 8C           lp       $0C
16B5: 13 02        liq      $02
16B7: 0A           mvb
16B8: F1 95        cal      $1195
16BA: 24           ixl
16BB: 67 00        cpia     $00
16BD: 38 1A        jrzp     $16D8
16BF: DA           exab
16C0: F1 95        cal      $1195
16C2: 24           ixl
16C3: 83           lp       $03
16C4: C7           cpma
16C5: 28 1D        jrnzp    $16E3
16C7: 49           deck
16C8: 29 11        jrnzm    $16B8
16CA: 2C 1C        jrp      $16E7
16CC: 05           dx
16CD: 10 C6 D9     lidp     $C6D9
16D0: D4 DF        anid     $DF
16D2: 37           rtn
16D3: F7 05        cal      $1705
16D5: FA CF        cal      $1ACF
16D7: 37           rtn
16D8: F1 95        cal      $1195
16DA: 24           ixl
16DB: 67 00        cpia     $00
16DD: 39 12        jrzm     $16CC
16DF: 67 12        cpia     $12
16E1: 39 15        jrzm     $16CD
16E3: F7 27        cal      $1727
16E5: 2D 11        jrm      $16D5
16E7: 24           ixl
16E8: 67 00        cpia     $00
16EA: 39 1F        jrzm     $16CC
16EC: 67 12        cpia     $12
16EE: 39 22        jrzm     $16CD
16F0: 2D 0A        jrm      $16E7
16F2: F1 F5        cal      $11F5
16F4: 02 F5        lia      $F5
16F6: 26           iys
16F7: 24           ixl
16F8: 67 12        cpia     $12
16FA: 38 1A        jrzp     $1715
16FC: 67 00        cpia     $00
16FE: 38 15        jrzp     $1714
1700: 26           iys
1701: 49           deck
1702: 29 0C        jrnzm    $16F7
1704: 24           ixl
1705: 67 12        cpia     $12
1707: 38 06        jrzp     $170E
1709: 67 00        cpia     $00
170B: 29 08        jrnzm    $1704
170D: 05           dx
170E: 10 C6 D9     lidp     $C6D9
1711: D5 20        orid     $20
1713: 37           rtn
1714: 05           dx
1715: 02 00        lia      $00
1717: 26           iys
1718: 2D 0B        jrm      $170E
171A: F2 05        cal      $1205
171C: 3A 3B        jrcp     $1758
171E: 92           lp       $12
171F: 60 F0        anim     $F0
1721: 93           lp       $13
1722: 61 80        orim     $80
1724: F7 37        cal      $1737
1726: 3A 31        jrcp     $1758
1728: A8           lp       $28
1729: 10 C6 EB     lidp     $C6EB
172C: 1B           exbd
172D: 24           ixl
172E: 67 1B        cpia     $1B
1730: 28 28        jrnzp    $1759
1732: F2 05        cal      $1205
1734: 3A 23        jrcp     $1758
1736: 92           lp       $12
1737: 60 F0        anim     $F0
1739: 61 04        orim     $04
173B: 93           lp       $13
173C: 61 80        orim     $80
173E: F7 37        cal      $1737
1740: 3A 17        jrcp     $1758
1742: 10 C6 EB     lidp     $C6EB
1745: 86           lp       $06
1746: 1A           mvbd
1747: A8           lp       $28
1748: 59           ldm
1749: 07           dy
174A: 26           iys
174B: 06           iy
174C: 10 C6 EB     lidp     $C6EB
174F: 86           lp       $06
1750: 1B           exbd
1751: 24           ixl
1752: 67 1B        cpia     $1B
1754: 39 23        jrzm     $1732
1756: 05           dx
1757: D1           rc
1758: 37           rtn
1759: F7 05        cal      $1705
175B: 37           rtn
175C: 10 C6 F4     lidp     $C6F4
175F: 57           ldd
1760: 67 80        cpia     $80
1762: 38 13        jrzp     $1776
1764: 75 03        sbia     $03
1766: 03 F8        lib      $F8
1768: F1 F5        cal      $11F5
176A: 98           lp       $18
176B: 00 03        lii      $03
176D: 18           mvwd
176E: 10 C6 F4     lidp     $C6F4
1771: 86           lp       $06
1772: 53           mvdm
1773: 79 52 6F     jp       $526F
1776: F7 17        cal      $1717
1778: 37           rtn
1779: 24           ixl
177A: 67 1D        cpia     $1D
177C: 38 03        jrzp     $1780
177E: 67 00        cpia     $00
1780: 05           dx
1781: 28 15        jrnzp    $1797
1783: FA CF        cal      $1ACF
1785: F1 89        cal      $1189
1787: 04           ix
1788: 04           ix
1789: 10 C7 0E     lidp     $C70E
178C: 84           lp       $04
178D: 1B           exbd
178E: FA CF        cal      $1ACF
1790: 10 C6 D8     lidp     $C6D8
1793: D5 02        orid     $02
1795: D1           rc
1796: 37           rtn
1797: F2 05        cal      $1205
1799: 3B 04        jrcm     $1796
179B: 78 59 63     call     $5963
179E: 3B 09        jrcm     $1796
17A0: 10 C7 0E     lidp     $C70E
17A3: 98           lp       $18
17A4: 1B           exbd
17A5: 2D 16        jrm      $1790
17A7: 02 00        lia      $00
17A9: 6B 02        test     $02
17AB: 42           inca
17AC: 6B 02        test     $02
17AE: 39 04        jrzm     $17AB
17B0: A8           lp       $28
17B1: 03 00        lib      $00
17B3: 13 02        liq      $02
17B5: 0A           mvb
17B6: ED 3B        cal      $0D3B
17B8: 10 F8 B0     lidp     $F8B0
17BB: A8           lp       $28
17BC: 00 07        lii      $07
17BE: 18           mvwd
17BF: A7           lp       $27
17C0: 13 2F        liq      $2F
17C2: 0E           adw
17C3: 10 F8 B0     lidp     $F8B0
17C6: A0           lp       $20
17C7: 19           exwd
17C8: F2 BD        cal      $12BD
17CA: 78 7E 6B     call     $7E6B
17CD: 37           rtn
17CE: 10 F8 3C     lidp     $F83C
17D1: D4 F3        anid     $F3
17D3: 11 3D        lidl     $3D
17D5: D5 04        orid     $04
17D7: 37           rtn
17D8: 95           lp       $15
17D9: 61 20        orim     $20
17DB: 37           rtn
17DC: 96           lp       $16
17DD: 61 04        orim     $04
17DF: 37           rtn
17E0: 96           lp       $16
17E1: 60 FB        anim     $FB
17E3: 37           rtn
17E4: 24           ixl
17E5: 05           dx
17E6: 67 1D        cpia     $1D
17E8: 38 15        jrzp     $17FE
17EA: 67 00        cpia     $00
17EC: 38 11        jrzp     $17FE
17EE: F2 05        cal      $1205
17F0: 3A 10        jrcp     $1801
17F2: F1 6E        cal      $116E
17F4: 3A 0D        jrcp     $1802
17F6: FA CF        cal      $1ACF
17F8: 78 5A 87     call     $5A87
17FB: FA CF        cal      $1ACF
17FD: 37           rtn
17FE: 78 5C 3F     call     $5C3F
1801: 37           rtn
1802: F7 27        cal      $1727
1804: 37           rtn
1805: 24           ixl
1806: 05           dx
1807: 67 1D        cpia     $1D
1809: 38 05        jrzp     $180F
180B: 67 00        cpia     $00
180D: 28 07        jrnzp    $1815
180F: 10 C6 D8     lidp     $C6D8
1812: D5 04        orid     $04
1814: 37           rtn
1815: F2 05        cal      $1205
1817: 3B 04        jrcm     $1814
1819: 92           lp       $12
181A: 60 F0        anim     $F0
181C: 93           lp       $13
181D: 61 80        orim     $80
181F: F7 37        cal      $1737
1821: 3B 0E        jrcm     $1814
1823: 10 C6 D8     lidp     $C6D8
1826: D4 FB        anid     $FB
1828: 10 C6 E5     lidp     $C6E5
182B: A8           lp       $28
182C: 1B           exbd
182D: 37           rtn
182E: 93           lp       $13
182F: 60 9F        anim     $9F
1831: 78 59 2C     call     $592C
1834: 3A 71        jrcp     $18A6
1836: 10 C6 EB     lidp     $C6EB
1839: 86           lp       $06
183A: 1B           exbd
183B: 11 ED        lidl     $ED
183D: 93           lp       $13
183E: 62 04        tsim     $04
1840: 38 77        jrzp     $18B8
1842: 62 12        tsim     $12
1844: 38 03        jrzp     $1848
1846: 02 00        lia      $00
1848: 52           std
1849: F1 C7        cal      $11C7
184B: 10 C7 0E     lidp     $C70E
184E: 84           lp       $04
184F: 1A           mvbd
1850: 10 C6 D8     lidp     $C6D8
1853: D6 02        tsid     $02
1855: 38 51        jrzp     $18A7
1857: 24           ixl
1858: 67 12        cpia     $12
185A: 28 0F        jrnzp    $186A
185C: 24           ixl
185D: 67 00        cpia     $00
185F: 38 10        jrzp     $1870
1861: 67 12        cpia     $12
1863: 29 08        jrnzm    $185C
1865: 24           ixl
1866: 67 1D        cpia     $1D
1868: 38 02        jrzp     $186B
186A: 05           dx
186B: 24           ixl
186C: 67 CB        cpia     $CB
186E: 38 1F        jrzp     $188E
1870: 24           ixl
1871: 67 E0        cpia     $E0
1873: 3B 04        jrcm     $1870
1875: 67 FF        cpia     $FF
1877: 28 0D        jrnzp    $1885
1879: 85           lp       $05
187A: 63 40        cpim     $40
187C: 2A 0B        jrncp    $1888
187E: F1 8F        cal      $118F
1880: 24           ixl
1881: 67 FF        cpia     $FF
1883: 38 04        jrzp     $1888
1885: 04           ix
1886: 2D 30        jrm      $1857
1888: F7 17        cal      $1717
188A: F1 D2        cal      $11D2
188C: D0           sc
188D: 37           rtn
188E: 78 54 26     call     $5426
1891: 3B 08        jrcm     $188A
1893: 10 C7 0E     lidp     $C70E
1896: 84           lp       $04
1897: 1B           exbd
1898: 10 C6 D8     lidp     $C6D8
189B: D4 FD        anid     $FD
189D: F1 D2        cal      $11D2
189F: 24           ixl
18A0: 67 1B        cpia     $1B
18A2: 39 75        jrzm     $182E
18A4: 05           dx
18A5: D1           rc
18A6: 37           rtn
18A7: 24           ixl
18A8: 67 1B        cpia     $1B
18AA: 39 1D        jrzm     $188E
18AC: 67 1D        cpia     $1D
18AE: 39 3F        jrzm     $1870
18B0: 67 00        cpia     $00
18B2: 39 43        jrzm     $1870
18B4: F7 05        cal      $1705
18B6: 2D 2D        jrm      $188A
18B8: 02 88        lia      $88
18BA: 2D 73        jrm      $1848
18BC: F1 5E        cal      $115E
18BE: D6 02        tsid     $02
18C0: 28 04        jrnzp    $18C5
18C2: F7 27        cal      $1727
18C4: 37           rtn
18C5: 24           ixl
18C6: 67 00        cpia     $00
18C8: 05           dx
18C9: 38 38        jrzp     $1902
18CB: F2 05        cal      $1205
18CD: 3A 33        jrcp     $1901
18CF: 78 59 63     call     $5963
18D2: 3A 2E        jrcp     $1901
18D4: 78 52 6F     call     $526F
18D7: FA CF        cal      $1ACF
18D9: 10 C6 D8     lidp     $C6D8
18DC: D4 F6        anid     $F6
18DE: D5 06        orid     $06
18E0: 11 D7        lidl     $D7
18E2: D4 F7        anid     $F7
18E4: 11 D9        lidl     $D9
18E6: D4 79        anid     $79
18E8: 78 6F 00     call     $6F00
18EB: F1 89        cal      $1189
18ED: 04           ix
18EE: 04           ix
18EF: 10 C7 0E     lidp     $C70E
18F2: 84           lp       $04
18F3: 1B           exbd
18F4: 02 CF        lia      $CF
18F6: 03 C5        lib      $C5
18F8: F1 EE        cal      $11EE
18FA: 06           iy
18FB: 78 50 E5     call     $50E5
18FE: FA CF        cal      $1ACF
1900: D1           rc
1901: 37           rtn
1902: FA CF        cal      $1ACF
1904: F1 89        cal      $1189
1906: 24           ixl
1907: 67 FF        cpia     $FF
1909: 39 0C        jrzm     $18FE
190B: 9A           lp       $1A
190C: 1A           mvbd
190D: 04           ix
190E: 98           lp       $18
190F: 13 04        liq      $04
1911: 0A           mvb
1912: FA CF        cal      $1ACF
1914: 2D 41        jrm      $18D4
1916: 02 F4        lia      $F4
1918: 03 FF        lib      $FF
191A: 88           lp       $08
191B: 13 02        liq      $02
191D: 0A           mvb
191E: 78 5B ED     call     $5BED
1921: 37           rtn
1922: 02 DB        lia      $DB
1924: 03 C6        lib      $C6
1926: F1 F5        cal      $11F5
1928: 02 79        lia      $79
192A: 26           iys
192B: 37           rtn
192C: F6 C0        cal      $16C0
192E: 3A 03        jrcp     $1932
1930: FA 0E        cal      $1A0E
1932: 37           rtn
1933: 59           ldm
1934: 03 00        lib      $00
1936: 42           inca
1937: DA           exab
1938: 5A           sl
1939: DA           exab
193A: 37           rtn
193B: 02 00        lia      $00
193D: 03 00        lib      $00
193F: 82           lp       $02
1940: 13 08        liq      $08
1942: 0B           exb
1943: 88           lp       $08
1944: 15           sbb
1945: 02 00        lia      $00
1947: 26           iys
1948: 48           inck
1949: 2B 03        jrncm    $1947
194B: C8           incl
194C: 2B 06        jrncm    $1947
194E: 37           rtn
194F: 10 C6 F3     lidp     $C6F3
1952: 57           ldd
1953: 03 C7        lib      $C7
1955: F1 F5        cal      $11F5
1957: 37           rtn
1958: 92           lp       $12
1959: 60 F0        anim     $F0
195B: 61 02        orim     $02
195D: 93           lp       $13
195E: 61 80        orim     $80
1960: F7 37        cal      $1737
1962: 37           rtn
1963: FA CF        cal      $1ACF
1965: 78 5D 88     call     $5D88
1968: FA CF        cal      $1ACF
196A: 3A 07        jrcp     $1972
196C: 02 01        lia      $01
196E: 03 00        lib      $00
1970: 98           lp       $18
1971: 14           adb
1972: 37           rtn
1973: 02 10        lia      $10
1975: 03 80        lib      $80
1977: 10 C6 F3     lidp     $C6F3
197A: 82           lp       $02
197B: 1B           exbd
197C: 37           rtn
197D: F2 00        cal      $1200
197F: 24           ixl
1980: 67 1D        cpia     $1D
1982: 38 13        jrzp     $1996
1984: 67 00        cpia     $00
1986: 28 0C        jrnzp    $1993
1988: 04           ix
1989: 8A           lp       $0A
198A: 1A           mvbd
198B: 04           ix
198C: 06           iy
198D: 84           lp       $04
198E: 1B           exbd
198F: 06           iy
1990: 06           iy
1991: 8A           lp       $0A
1992: 1B           exbd
1993: FA CF        cal      $1ACF
1995: 37           rtn
1996: 06           iy
1997: 84           lp       $04
1998: 1B           exbd
1999: 9E           lp       $1E
199A: 06           iy
199B: 06           iy
199C: 1B           exbd
199D: 9E           lp       $1E
199E: 06           iy
199F: 07           dy
19A0: 1A           mvbd
19A1: 2D 0F        jrm      $1993
19A3: 24           ixl
19A4: 67 00        cpia     $00
19A6: 28 03        jrnzp    $19AA
19A8: 05           dx
19A9: 37           rtn
19AA: F7 05        cal      $1705
19AC: 37           rtn
19AD: 10 C6 F1     lidp     $C6F1
19B0: 86           lp       $06
19B1: 53           mvdm
19B2: 37           rtn
19B3: 24           ixl
19B4: 67 00        cpia     $00
19B6: 29 04        jrnzm    $19B3
19B8: 05           dx
19B9: 37           rtn
19BA: 10 C6 E7     lidp     $C6E7
19BD: D4 00        anid     $00
19BF: 93           lp       $13
19C0: 02 04        lia      $04
19C2: DB           exam
19C3: 10 C7 B0     lidp     $C7B0
19C6: 02 11        lia      $11
19C8: 00 4F        lii      $4F
19CA: 1F           fild
19CB: 24           ixl
19CC: 67 DD        cpia     $DD
19CE: 38 8D        jrzp     $1A5C
19D0: 05           dx
19D1: 93           lp       $13
19D2: 59           ldm
19D3: 34           push
19D4: 10 C6 E7     lidp     $C6E7
19D7: 57           ldd
19D8: 11 A2        lidl     $A2
19DA: 52           std
19DB: F2 05        cal      $1205
19DD: 10 C6 A2     lidp     $C6A2
19E0: 57           ldd
19E1: 11 E7        lidl     $E7
19E3: 52           std
19E4: 5B           pop
19E5: 3A 3F        jrcp     $1A25
19E7: 93           lp       $13
19E8: DB           exam
19E9: 24           ixl
19EA: 67 00        cpia     $00
19EC: 38 05        jrzp     $19F2
19EE: 67 1D        cpia     $1D
19F0: 28 35        jrnzp    $1A26
19F2: 62 02        tsim     $02
19F4: 38 09        jrzp     $19FE
19F6: 10 C6 CA     lidp     $C6CA
19F9: 57           ldd
19FA: 67 D0        cpia     $D0
19FC: 28 04        jrnzp    $1A01
19FE: 78 5B E0     call     $5BE0
1A01: 93           lp       $13
1A02: 62 01        tsim     $01
1A04: 38 0E        jrzp     $1A13
1A06: 02 0C        lia      $0C
1A08: 78 56 64     call     $5664
1A0B: 28 03        jrnzp    $1A0F
1A0D: 02 08        lia      $08
1A0F: 10 C6 E7     lidp     $C6E7
1A12: 52           std
1A13: 78 68 72     call     $6872
1A16: 3A 0E        jrcp     $1A25
1A18: 05           dx
1A19: FA CF        cal      $1ACF
1A1B: 88           lp       $08
1A1C: 02 20        lia      $20
1A1E: DB           exam
1A1F: 02 B0        lia      $B0
1A21: 03 C7        lib      $C7
1A23: F1 F1        cal      $11F1
1A25: 37           rtn
1A26: 67 1B        cpia     $1B
1A28: 28 1D        jrnzp    $1A46
1A2A: 62 03        tsim     $03
1A2C: 28 13        jrnzp    $1A40
1A2E: 93           lp       $13
1A2F: 61 01        orim     $01
1A31: 78 68 72     call     $6872
1A34: 3B 10        jrcm     $1A25
1A36: 24           ixl
1A37: 05           dx
1A38: 67 00        cpia     $00
1A3A: 38 05        jrzp     $1A40
1A3C: 67 1D        cpia     $1D
1A3E: 29 74        jrnzm    $19CB
1A40: F7 05        cal      $1705
1A42: 37           rtn
1A43: F7 27        cal      $1727
1A45: 37           rtn
1A46: 67 1C        cpia     $1C
1A48: 29 09        jrnzm    $1A40
1A4A: 62 01        tsim     $01
1A4C: 29 0D        jrnzm    $1A40
1A4E: 62 04        tsim     $04
1A50: 38 07        jrzp     $1A58
1A52: 60 FB        anim     $FB
1A54: 78 5B E0     call     $5BE0
1A57: 93           lp       $13
1A58: 61 02        orim     $02
1A5A: 2D 2A        jrm      $1A31
1A5C: 24           ixl
1A5D: 67 1C        cpia     $1C
1A5F: 38 22        jrzp     $1A82
1A61: 05           dx
1A62: 93           lp       $13
1A63: 59           ldm
1A64: 34           push
1A65: F2 05        cal      $1205
1A67: 5B           pop
1A68: 3B 44        jrcm     $1A25
1A6A: F1 6E        cal      $116E
1A6C: 3B 2A        jrcm     $1A43
1A6E: 34           push
1A6F: FA CF        cal      $1ACF
1A71: 78 5A 87     call     $5A87
1A74: 5B           pop
1A75: 93           lp       $13
1A76: DB           exam
1A77: FA CF        cal      $1ACF
1A79: 3B 55        jrcm     $1A25
1A7B: 24           ixl
1A7C: 67 1C        cpia     $1C
1A7E: 29 3F        jrnzm    $1A40
1A80: 2D B0        jrm      $19D1
1A82: 78 5C 3F     call     $5C3F
1A85: 2D B5        jrm      $19D1
1A87: 84           lp       $04
1A88: 13 25        liq      $25
1A8A: 0A           mvb
1A8B: A7           lp       $27
1A8C: 59           ldm
1A8D: 88           lp       $08
1A8E: DB           exam
1A8F: 93           lp       $13
1A90: 60 E0        anim     $E0
1A92: 61 08        orim     $08
1A94: 02 00        lia      $00
1A96: 89           lp       $09
1A97: DB           exam
1A98: 59           ldm
1A99: 8E           lp       $0E
1A9A: 00 03        lii      $03
1A9C: 1E           film
1A9D: 88           lp       $08
1A9E: 63 00        cpim     $00
1AA0: 38 69        jrzp     $1B0A
1AA2: 05           dx
1AA3: 24           ixl
1AA4: 93           lp       $13
1AA5: 7A 04 5A B8  dtj      $04, $5AB8
1AA9: 69           ptj
1AAA: 15 5B 20     .case    $15, $5B20
1AAD: 1F 5B 49     .case    $1F, $5B49
1AB0: 39 5B 7E     .case    $39, $5B7E
1AB3: 4A 5B B7     .case    $4A, $5BB7
1AB6: 17 05        .default $1705
1AB8: 3A 50        jrcp     $1B09
1ABA: 49           deck
1ABB: 29 19        jrnzm    $1AA3
1ABD: 89           lp       $09
1ABE: 59           ldm
1ABF: 93           lp       $13
1AC0: 62 04        tsim     $04
1AC2: 38 5A        jrzp     $1B1D
1AC4: 62 02        tsim     $02
1AC6: 38 53        jrzp     $1B1A
1AC8: 90           lp       $10
1AC9: DB           exam
1ACA: 02 02        lia      $02
1ACC: 8E           lp       $0E
1ACD: 62 08        tsim     $08
1ACF: 8F           lp       $0F
1AD0: 28 07        jrnzp    $1AD8
1AD2: 63 0C        cpim     $0C
1AD4: 3A 04        jrcp     $1AD9
1AD6: 02 0B        lia      $0B
1AD8: DB           exam
1AD9: 90           lp       $10
1ADA: 63 0A        cpim     $0A
1ADC: 3A 0A        jrcp     $1AE7
1ADE: 8E           lp       $0E
1ADF: 62 08        tsim     $08
1AE1: 90           lp       $10
1AE2: 38 2F        jrzp     $1B12
1AE4: 02 0A        lia      $0A
1AE6: DB           exam
1AE7: 8E           lp       $0E
1AE8: 62 10        tsim     $10
1AEA: 38 05        jrzp     $1AF0
1AEC: 8F           lp       $0F
1AED: 02 02        lia      $02
1AEF: DB           exam
1AF0: 10 C6 F8     lidp     $C6F8
1AF3: 8F           lp       $0F
1AF4: 63 00        cpim     $00
1AF6: 28 06        jrnzp    $1AFD
1AF8: 90           lp       $10
1AF9: 63 00        cpim     $00
1AFB: 38 05        jrzp     $1B01
1AFD: 00 02        lii      $02
1AFF: 8E           lp       $0E
1B00: 19           exwd
1B01: 91           lp       $11
1B02: 63 00        cpim     $00
1B04: 38 04        jrzp     $1B09
1B06: 11 FB        lidl     $FB
1B08: 53           mvdm
1B09: 37           rtn
1B0A: 10 C6 F8     lidp     $C6F8
1B0D: 8E           lp       $0E
1B0E: 00 03        lii      $03
1B10: 19           exwd
1B11: 37           rtn
1B12: 63 0E        cpim     $0E
1B14: 3B 2E        jrcm     $1AE7
1B16: 02 0D        lia      $0D
1B18: 2D 33        jrm      $1AE6
1B1A: 8F           lp       $0F
1B1B: 2D 53        jrm      $1AC9
1B1D: 91           lp       $11
1B1E: 2D 56        jrm      $1AC9
1B20: 93           lp       $13
1B21: 62 08        tsim     $08
1B23: 38 07        jrzp     $1B2B
1B25: 60 F7        anim     $F7
1B27: 61 04        orim     $04
1B29: C8           incl
1B2A: 37           rtn
1B2B: 62 01        tsim     $01
1B2D: 28 15        jrnzp    $1B43
1B2F: 62 04        tsim     $04
1B31: 38 08        jrzp     $1B3A
1B33: 62 10        tsim     $10
1B35: 39 0D        jrzm     $1B29
1B37: F7 05        cal      $1705
1B39: 37           rtn
1B3A: 61 05        orim     $05
1B3C: 89           lp       $09
1B3D: 02 01        lia      $01
1B3F: DB           exam
1B40: 91           lp       $11
1B41: DB           exam
1B42: 37           rtn
1B43: 62 04        tsim     $04
1B45: 39 0F        jrzm     $1B37
1B47: 2D 15        jrm      $1B33
1B49: 62 08        tsim     $08
1B4B: 38 05        jrzp     $1B51
1B4D: 60 F3        anim     $F3
1B4F: C8           incl
1B50: 37           rtn
1B51: 62 01        tsim     $01
1B53: 28 1F        jrnzp    $1B73
1B55: 62 04        tsim     $04
1B57: 39 2F        jrzm     $1B29
1B59: 60 FB        anim     $FB
1B5B: 61 01        orim     $01
1B5D: 62 10        tsim     $10
1B5F: 28 19        jrnzp    $1B79
1B61: 62 02        tsim     $02
1B63: 38 08        jrzp     $1B6C
1B65: 89           lp       $09
1B66: 02 01        lia      $01
1B68: DB           exam
1B69: 90           lp       $10
1B6A: DB           exam
1B6B: 37           rtn
1B6C: 89           lp       $09
1B6D: 02 01        lia      $01
1B6F: DB           exam
1B70: 8F           lp       $0F
1B71: DB           exam
1B72: 37           rtn
1B73: 62 04        tsim     $04
1B75: 39 4D        jrzm     $1B29
1B77: 2D 41        jrm      $1B37
1B79: 02 01        lia      $01
1B7B: 89           lp       $09
1B7C: DB           exam
1B7D: 37           rtn
1B7E: 8E           lp       $0E
1B7F: 61 08        orim     $08
1B81: 93           lp       $13
1B82: 62 08        tsim     $08
1B84: 38 09        jrzp     $1B8E
1B86: 60 F7        anim     $F7
1B88: 61 14        orim     $14
1B8A: 02 02        lia      $02
1B8C: 2D 12        jrm      $1B7B
1B8E: 62 01        tsim     $01
1B90: 28 20        jrnzp    $1BB1
1B92: 62 04        tsim     $04
1B94: 38 14        jrzp     $1BA9
1B96: 62 10        tsim     $10
1B98: 38 02        jrzp     $1B9B
1B9A: 37           rtn
1B9B: 61 10        orim     $10
1B9D: 62 02        tsim     $02
1B9F: 89           lp       $09
1BA0: 59           ldm
1BA1: 38 04        jrzp     $1BA6
1BA3: 90           lp       $10
1BA4: DB           exam
1BA5: 37           rtn
1BA6: 8F           lp       $0F
1BA7: DB           exam
1BA8: 37           rtn
1BA9: 61 15        orim     $15
1BAB: 02 00        lia      $00
1BAD: 89           lp       $09
1BAE: DB           exam
1BAF: 2D 70        jrm      $1B40
1BB1: 62 04        tsim     $04
1BB3: 39 7D        jrzm     $1B37
1BB5: 2D 20        jrm      $1B96
1BB7: 62 08        tsim     $08
1BB9: 38 07        jrzp     $1BC1
1BBB: 61 06        orim     $06
1BBD: 60 F7        anim     $F7
1BBF: 2D 54        jrm      $1B6C
1BC1: 62 02        tsim     $02
1BC3: 29 8D        jrnzm    $1B37
1BC5: 61 02        orim     $02
1BC7: 62 04        tsim     $04
1BC9: 39 90        jrzm     $1B3A
1BCB: 62 10        tsim     $10
1BCD: 29 97        jrnzm    $1B37
1BCF: 89           lp       $09
1BD0: 63 00        cpim     $00
1BD2: 39 9C        jrzm     $1B37
1BD4: 2D 69        jrm      $1B6C
1BD6: 61 07        orim     $07
1BD8: 02 00        lia      $00
1BDA: 89           lp       $09
1BDB: DB           exam
1BDC: 91           lp       $11
1BDD: DB           exam
1BDE: 2D 73        jrm      $1B6C
1BE0: E2 2A        cal      $022A
1BE2: A8           lp       $28
1BE3: 10 C6 C6     lidp     $C6C6
1BE6: 19           exwd
1BE7: 37           rtn
1BE8: A0           lp       $20
1BE9: 00 07        lii      $07
1BEB: 2D 09        jrm      $1BE3
1BED: 03 19        lib      $19
1BEF: 4E 5F        wait     $5F
1BF1: 6B 08        test     $08
1BF3: 28 0B        jrnzp    $1BFF
1BF5: C3           decb
1BF6: 29 08        jrnzm    $1BEF
1BF8: 48           inck
1BF9: 2B 0D        jrncm    $1BED
1BFB: C8           incl
1BFC: 2B 10        jrncm    $1BED
1BFE: 37           rtn
1BFF: 95           lp       $15
1C00: 61 20        orim     $20
1C02: 37           rtn
1C03: 78 59 73     call     $5973
1C06: 10 C6 D8     lidp     $C6D8
1C09: D5 02        orid     $02
1C0B: 78 47 11     call     $4711
1C0E: F1 6E        cal      $116E
1C10: 3A 0F        jrcp     $1C20
1C12: 78 59 63     call     $5963
1C15: 3A 09        jrcp     $1C1F
1C17: 9C           lp       $1C
1C18: 13 18        liq      $18
1C1A: 00 03        lii      $03
1C1C: 08           mvw
1C1D: F8 99        cal      $1899
1C1F: 37           rtn
1C20: A2           lp       $22
1C21: 63 00        cpim     $00
1C23: 28 0A        jrnzp    $1C2E
1C25: F1 8F        cal      $118F
1C27: 04           ix
1C28: 9E           lp       $1E
1C29: 1A           mvbd
1C2A: 04           ix
1C2B: F2 00        cal      $1200
1C2D: 37           rtn
1C2E: 78 5E 76     call     $5E76
1C31: 3B 13        jrcm     $1C1F
1C33: F1 8F        cal      $118F
1C35: 78 5E 04     call     $5E04
1C38: 3B 1A        jrcm     $1C1F
1C3A: 78 59 6C     call     $596C
1C3D: 2D 27        jrm      $1C17
1C3F: 00 03        lii      $03
1C41: 8E           lp       $0E
1C42: 02 00        lia      $00
1C44: 1E           film
1C45: 8E           lp       $0E
1C46: 10 C6 F8     lidp     $C6F8
1C49: 19           exwd
1C4A: 11 D2        lidl     $D2
1C4C: 8E           lp       $0E
1C4D: 19           exwd
1C4E: 37           rtn
1C4F: 24           ixl
1C50: DB           exam
1C51: 50           incp
1C52: C3           decb
1C53: 29 05        jrnzm    $1C4F
1C55: 37           rtn
1C56: E2 2A        cal      $022A
1C58: A8           lp       $28
1C59: 00 01        lii      $01
1C5B: 63 90        cpim     $90
1C5D: 3A 23        jrcp     $1C81
1C5F: A9           lp       $29
1C60: 61 04        orim     $04
1C62: 1D           slw
1C63: 50           incp
1C64: 02 00        lia      $00
1C66: 00 00        lii      $00
1C68: DB           exam
1C69: 0D           sbn
1C6A: A8           lp       $28
1C6B: 59           ldm
1C6C: 34           push
1C6D: 83           lp       $03
1C6E: 58           swp
1C6F: 64 0F        ania     $0F
1C71: D1           rc
1C72: 5A           sl
1C73: DA           exab
1C74: 59           ldm
1C75: 5A           sl
1C76: 5A           sl
1C77: 44           adm
1C78: 5B           pop
1C79: 64 0F        ania     $0F
1C7B: 44           adm
1C7C: 59           ldm
1C7D: 8D           lp       $0D
1C7E: DB           exam
1C7F: 59           ldm
1C80: 37           rtn
1C81: 50           incp
1C82: 1D           slw
1C83: 2D 1A        jrm      $1C6A
1C85: 1D           slw
1C86: 50           incp
1C87: 02 00        lia      $00
1C89: DB           exam
1C8A: 65 40        oria     $40
1C8C: 26           iys
1C8D: C3           decb
1C8E: 37           rtn
1C8F: 8A           lp       $0A
1C90: 59           ldm
1C91: 84           lp       $04
1C92: DB           exam
1C93: 02 F8        lia      $F8
1C95: 85           lp       $05
1C96: DB           exam
1C97: 93           lp       $13
1C98: 62 01        tsim     $01
1C9A: 10 C6 E7     lidp     $C6E7
1C9D: 38 1A        jrzp     $1CB8
1C9F: 57           ldd
1CA0: 74 08        adia     $08
1CA2: 78 56 5E     call     $565E
1CA5: 28 03        jrnzp    $1CA9
1CA7: 74 04        adia     $04
1CA9: 10 C6 E7     lidp     $C6E7
1CAC: 83           lp       $03
1CAD: DA           exab
1CAE: 45           sbm
1CAF: DA           exab
1CB0: 52           std
1CB1: 78 69 4F     call     $694F
1CB4: 2A 1B        jrncp    $1CD0
1CB6: D1           rc
1CB7: 37           rtn
1CB8: 62 02        tsim     $02
1CBA: 29 0A        jrnzm    $1CB1
1CBC: 02 18        lia      $18
1CBE: 78 56 5E     call     $565E
1CC1: 38 03        jrzp     $1CC5
1CC3: 02 10        lia      $10
1CC5: 10 C6 E7     lidp     $C6E7
1CC8: 83           lp       $03
1CC9: DA           exab
1CCA: 45           sbm
1CCB: 2B 1D        jrncm    $1CAF
1CCD: F7 1F        cal      $171F
1CCF: 37           rtn
1CD0: F7 1B        cal      $171B
1CD2: 37           rtn
1CD3: A9           lp       $29
1CD4: 02 00        lia      $00
1CD6: DB           exam
1CD7: 88           lp       $08
1CD8: DB           exam
1CD9: 37           rtn
1CDA: 86           lp       $06
1CDB: 59           ldm
1CDC: 8B           lp       $0B
1CDD: DB           exam
1CDE: 59           ldm
1CDF: 37           rtn
1CE0: DA           exab
1CE1: 8A           lp       $0A
1CE2: 59           ldm
1CE3: 83           lp       $03
1CE4: 45           sbm
1CE5: 37           rtn
1CE6: 8F           lp       $0F
1CE7: 63 02        cpim     $02
1CE9: 2A 88        jrncp    $1D72
1CEB: 02 0C        lia      $0C
1CED: 03 F8        lib      $F8
1CEF: F1 F5        cal      $11F5
1CF1: 78 6B 41     call     $6B41
1CF4: 78 6B 15     call     $6B15
1CF7: 78 5C D3     call     $5CD3
1CFA: 03 01        lib      $01
1CFC: 78 6B 46     call     $6B46
1CFF: 8F           lp       $0F
1D00: 63 00        cpim     $00
1D02: 38 5C        jrzp     $1D5F
1D04: 50           incp
1D05: 63 00        cpim     $00
1D07: 38 0A        jrzp     $1D12
1D09: 06           iy
1D0A: 59           ldm
1D0B: 43           deca
1D0C: 38 05        jrzp     $1D12
1D0E: DA           exab
1D0F: 78 6B 46     call     $6B46
1D12: 93           lp       $13
1D13: 62 01        tsim     $01
1D15: 38 22        jrzp     $1D38
1D17: 86           lp       $06
1D18: 59           ldm
1D19: DA           exab
1D1A: 8A           lp       $0A
1D1B: 59           ldm
1D1C: 83           lp       $03
1D1D: 45           sbm
1D1E: 02 09        lia      $09
1D20: 78 56 5E     call     $565E
1D23: 38 03        jrzp     $1D27
1D25: 02 05        lia      $05
1D27: C7           cpma
1D28: 3A 0F        jrcp     $1D38
1D2A: 43           deca
1D2B: 34           push
1D2C: 02 0C        lia      $0C
1D2E: 03 F8        lib      $F8
1D30: F1 F5        cal      $11F5
1D32: 78 6B 41     call     $6B41
1D35: 5B           pop
1D36: 86           lp       $06
1D37: 44           adm
1D38: 02 4B        lia      $4B
1D3A: 26           iys
1D3B: 88           lp       $08
1D3C: 62 40        tsim     $40
1D3E: 02 11        lia      $11
1D40: 38 03        jrzp     $1D44
1D42: 02 36        lia      $36
1D44: 26           iys
1D45: 2C 01        jrp      $1D47
1D47: 02 00        lia      $00
1D49: A7           lp       $27
1D4A: DB           exam
1D4B: 00 01        lii      $01
1D4D: 03 02        lib      $02
1D4F: A8           lp       $28
1D50: 78 5C 85     call     $5C85
1D53: 29 05        jrnzm    $1D4F
1D55: 78 5C DA     call     $5CDA
1D58: 78 5C E0     call     $5CE0
1D5B: 78 5C 8F     call     $5C8F
1D5E: 37           rtn
1D5F: 06           iy
1D60: 03 09        lib      $09
1D62: 78 6B 46     call     $6B46
1D65: F1 72        cal      $1172
1D67: 67 40        cpia     $40
1D69: 28 04        jrnzp    $1D6E
1D6B: 25           dxl
1D6C: 39 06        jrzm     $1D67
1D6E: F1 77        cal      $1177
1D70: 2D 5F        jrm      $1D12
1D72: 03 0E        lib      $0E
1D74: 8F           lp       $0F
1D75: 59           ldm
1D76: 83           lp       $03
1D77: 45           sbm
1D78: DA           exab
1D79: 03 F8        lib      $F8
1D7B: F1 F5        cal      $11F5
1D7D: 78 6B 41     call     $6B41
1D80: 02 0C        lia      $0C
1D82: 03 F8        lib      $F8
1D84: F1 F5        cal      $11F5
1D86: 2D 93        jrm      $1CF4
1D88: F1 6E        cal      $116E
1D8A: 3A 6D        jrcp     $1DF8
1D8C: E1 FF        cal      $01FF
1D8E: F1 89        cal      $1189
1D90: 24           ixl
1D91: 67 FF        cpia     $FF
1D93: 38 5B        jrzp     $1DEF
1D95: 04           ix
1D96: 24           ixl
1D97: 67 12        cpia     $12
1D99: 38 08        jrzp     $1DA2
1D9B: 24           ixl
1D9C: 67 00        cpia     $00
1D9E: 29 04        jrnzm    $1D9B
1DA0: 2D 11        jrm      $1D90
1DA2: 02 43        lia      $43
1DA4: 03 F8        lib      $F8
1DA6: F1 EE        cal      $11EE
1DA8: 02 D0        lia      $D0
1DAA: 26           iys
1DAB: 04           ix
1DAC: 84           lp       $04
1DAD: 59           ldm
1DAE: 26           iys
1DAF: 85           lp       $05
1DB0: 59           ldm
1DB1: 26           iys
1DB2: 05           dx
1DB3: 88           lp       $08
1DB4: 02 00        lia      $00
1DB6: DB           exam
1DB7: 24           ixl
1DB8: 67 12        cpia     $12
1DBA: 38 08        jrzp     $1DC3
1DBC: 67 00        cpia     $00
1DBE: 38 04        jrzp     $1DC3
1DC0: 48           inck
1DC1: 2B 0B        jrncm    $1DB7
1DC3: 88           lp       $08
1DC4: 59           ldm
1DC5: 26           iys
1DC6: 06           iy
1DC7: 86           lp       $06
1DC8: 10 C6 F5     lidp     $C6F5
1DCB: 53           mvdm
1DCC: F1 C7        cal      $11C7
1DCE: EB DC        cal      $0BDC
1DD0: F1 D2        cal      $11D2
1DD2: A2           lp       $22
1DD3: 63 10        cpim     $10
1DD5: 38 0B        jrzp     $1DE1
1DD7: E2 0F        cal      $020F
1DD9: 05           dx
1DDA: 24           ixl
1DDB: 67 00        cpia     $00
1DDD: 29 43        jrnzm    $1D9B
1DDF: 2D 50        jrm      $1D90
1DE1: 25           dxl
1DE2: 67 12        cpia     $12
1DE4: 29 04        jrnzm    $1DE1
1DE6: 9A           lp       $1A
1DE7: 05           dx
1DE8: 05           dx
1DE9: 1A           mvbd
1DEA: 98           lp       $18
1DEB: 13 04        liq      $04
1DED: 0A           mvb
1DEE: 37           rtn
1DEF: 85           lp       $05
1DF0: 63 40        cpim     $40
1DF2: 2A 4A        jrncp    $1E3D
1DF4: F1 8F        cal      $118F
1DF6: 2D 67        jrm      $1D90
1DF8: 78 5E 76     call     $5E76
1DFB: 3A 41        jrcp     $1E3D
1DFD: 96           lp       $16
1DFE: 62 02        tsim     $02
1E00: 38 42        jrzp     $1E43
1E02: F1 89        cal      $1189
1E04: 24           ixl
1E05: 67 FF        cpia     $FF
1E07: 38 35        jrzp     $1E3D
1E09: 78 5E A2     call     $5EA2
1E0C: 2A 24        jrncp    $1E31
1E0E: 24           ixl
1E0F: 67 E0        cpia     $E0
1E11: 3B 04        jrcm     $1E0E
1E13: 67 FF        cpia     $FF
1E15: 38 27        jrzp     $1E3D
1E17: 82           lp       $02
1E18: 1A           mvbd
1E19: 9B           lp       $1B
1E1A: 13 03        liq      $03
1E1C: 0F           sbw
1E1D: 2A 1F        jrncp    $1E3D
1E1F: 78 5E B3     call     $5EB3
1E22: 3B 15        jrcm     $1E0E
1E24: 2A 0C        jrncp    $1E31
1E26: 2C 16        jrp      $1E3D
1E28: 9A           lp       $1A
1E29: 1A           mvbd
1E2A: 98           lp       $18
1E2B: 13 04        liq      $04
1E2D: 0A           mvb
1E2E: F7 13        cal      $1713
1E30: 37           rtn
1E31: 28 06        jrnzp    $1E38
1E33: 98           lp       $18
1E34: 13 04        liq      $04
1E36: 0A           mvb
1E37: 37           rtn
1E38: 78 5E 33     call     $5E33
1E3B: 2D 0E        jrm      $1E2E
1E3D: 02 00        lia      $00
1E3F: 9A           lp       $1A
1E40: DB           exam
1E41: 2D 14        jrm      $1E2E
1E43: 84           lp       $04
1E44: 13 1C        liq      $1C
1E46: 0A           mvb
1E47: 25           dxl
1E48: 67 E0        cpia     $E0
1E4A: 3B 04        jrcm     $1E47
1E4C: 78 5E A2     call     $5EA2
1E4F: 3B 42        jrcm     $1E0E
1E51: 39 1F        jrzm     $1E33
1E53: 25           dxl
1E54: 67 E0        cpia     $E0
1E56: 3B 04        jrcm     $1E53
1E58: 67 FF        cpia     $FF
1E5A: 38 14        jrzp     $1E6F
1E5C: 82           lp       $02
1E5D: 1A           mvbd
1E5E: 9B           lp       $1B
1E5F: 13 03        liq      $03
1E61: 0F           sbw
1E62: 3A 0C        jrcp     $1E6F
1E64: 38 0A        jrzp     $1E6F
1E66: 78 5E B3     call     $5EB3
1E69: 39 37        jrzm     $1E33
1E6B: 2B 19        jrncm    $1E53
1E6D: 3B 60        jrcm     $1E0E
1E6F: 24           ixl
1E70: 67 E0        cpia     $E0
1E72: 3B 04        jrcm     $1E6F
1E74: 2D 4D        jrm      $1E28
1E76: A8           lp       $28
1E77: 00 01        lii      $01
1E79: 02 00        lia      $00
1E7B: 1E           film
1E7C: A0           lp       $20
1E7D: 63 90        cpim     $90
1E7F: 2A 21        jrncp    $1EA1
1E81: 63 00        cpim     $00
1E83: 28 1C        jrnzp    $1EA0
1E85: A1           lp       $21
1E86: 62 08        tsim     $08
1E88: 28 17        jrnzp    $1EA0
1E8A: 59           ldm
1E8B: 58           swp
1E8C: 67 03        cpia     $03
1E8E: 2A 11        jrncp    $1EA0
1E90: A8           lp       $28
1E91: 13 22        liq      $22
1E93: 0A           mvb
1E94: 75 03        sbia     $03
1E96: A8           lp       $28
1E97: 1C           srw
1E98: 42           inca
1E99: 2B 04        jrncm    $1E96
1E9B: A8           lp       $28
1E9C: D1           rc
1E9D: 61 E0        orim     $E0
1E9F: 37           rtn
1EA0: D0           sc
1EA1: 37           rtn
1EA2: 9A           lp       $1A
1EA3: 1A           mvbd
1EA4: 82           lp       $02
1EA5: 13 1A        liq      $1A
1EA7: 0A           mvb
1EA8: 8C           lp       $0C
1EA9: 13 28        liq      $28
1EAB: 0A           mvb
1EAC: 00 01        lii      $01
1EAE: 83           lp       $03
1EAF: 13 0D        liq      $0D
1EB1: 0F           sbw
1EB2: 37           rtn
1EB3: 9A           lp       $1A
1EB4: 13 02        liq      $02
1EB6: 0A           mvb
1EB7: 2D 0A        jrm      $1EAE
1EB9: 78 5C D3     call     $5CD3
1EBC: 8F           lp       $0F
1EBD: 63 00        cpim     $00
1EBF: 38 89        jrzp     $1F49
1EC1: 63 01        cpim     $01
1EC3: 28 64        jrnzp    $1F28
1EC5: F7 1F        cal      $171F
1EC7: 37           rtn
1EC8: F7 1F        cal      $171F
1ECA: 37           rtn
1ECB: 78 6B 2D     call     $6B2D
1ECE: 90           lp       $10
1ECF: 63 00        cpim     $00
1ED1: 38 2F        jrzp     $1F01
1ED3: 59           ldm
1ED4: 43           deca
1ED5: 38 05        jrzp     $1EDB
1ED7: DA           exab
1ED8: 78 6B 46     call     $6B46
1EDB: 78 5C DA     call     $5CDA
1EDE: 78 5C E0     call     $5CE0
1EE1: 93           lp       $13
1EE2: 62 01        tsim     $01
1EE4: 38 B2        jrzp     $1F97
1EE6: 83           lp       $03
1EE7: 02 0D        lia      $0D
1EE9: 78 56 5E     call     $565E
1EEC: 38 03        jrzp     $1EF0
1EEE: 02 09        lia      $09
1EF0: C7           cpma
1EF1: 3A A5        jrcp     $1F97
1EF3: 43           deca
1EF4: 8A           lp       $0A
1EF5: DB           exam
1EF6: 44           adm
1EF7: DB           exam
1EF8: 67 0E        cpia     $0E
1EFA: 3B 33        jrcm     $1EC8
1EFC: 8B           lp       $0B
1EFD: DB           exam
1EFE: 59           ldm
1EFF: 2D 22        jrm      $1EDE
1F01: 07           dy
1F02: 2D 28        jrm      $1EDB
1F04: 02 0C        lia      $0C
1F06: 03 F8        lib      $F8
1F08: F1 F5        cal      $11F5
1F0A: 8D           lp       $0D
1F0B: 59           ldm
1F0C: 88           lp       $08
1F0D: DB           exam
1F0E: 78 6B 15     call     $6B15
1F11: 90           lp       $10
1F12: 59           ldm
1F13: DA           exab
1F14: C2           incb
1F15: 02 40        lia      $40
1F17: 26           iys
1F18: C3           decb
1F19: 39 3F        jrzm     $1EDB
1F1B: 06           iy
1F1C: C3           decb
1F1D: 39 43        jrzm     $1EDB
1F1F: 49           deck
1F20: 39 49        jrzm     $1ED8
1F22: C3           decb
1F23: 26           iys
1F24: 39 4A        jrzm     $1EDB
1F26: 2D 08        jrm      $1F1F
1F28: 02 0D        lia      $0D
1F2A: DA           exab
1F2B: 8F           lp       $0F
1F2C: 59           ldm
1F2D: 83           lp       $03
1F2E: 45           sbm
1F2F: DA           exab
1F30: 8A           lp       $0A
1F31: DB           exam
1F32: 88           lp       $08
1F33: 62 40        tsim     $40
1F35: 29 32        jrnzm    $1F04
1F37: F1 7C        cal      $117C
1F39: 05           dx
1F3A: 8A           lp       $0A
1F3B: 59           ldm
1F3C: 84           lp       $04
1F3D: C7           cpma
1F3E: 3B 77        jrcm     $1EC8
1F40: F1 77        cal      $1177
1F42: 78 6B 15     call     $6B15
1F45: 04           ix
1F46: 04           ix
1F47: 2D 7D        jrm      $1ECB
1F49: 90           lp       $10
1F4A: 63 00        cpim     $00
1F4C: 29 85        jrnzm    $1EC8
1F4E: 88           lp       $08
1F4F: 62 40        tsim     $40
1F51: 28 49        jrnzp    $1F9B
1F53: F1 7C        cal      $117C
1F55: 05           dx
1F56: F1 77        cal      $1177
1F58: 78 6B 41     call     $6B41
1F5B: 78 6B 15     call     $6B15
1F5E: 04           ix
1F5F: 04           ix
1F60: 78 6B 2D     call     $6B2D
1F63: 03 09        lib      $09
1F65: 78 6B 46     call     $6B46
1F68: F1 72        cal      $1172
1F6A: 67 40        cpia     $40
1F6C: 28 04        jrnzp    $1F71
1F6E: 25           dxl
1F6F: 2D 06        jrm      $1F6A
1F71: F1 77        cal      $1177
1F73: 78 5C DA     call     $5CDA
1F76: 78 5C E0     call     $5CE0
1F79: 93           lp       $13
1F7A: 62 01        tsim     $01
1F7C: 38 1A        jrzp     $1F97
1F7E: 83           lp       $03
1F7F: 02 0D        lia      $0D
1F81: 78 56 5E     call     $565E
1F84: 38 03        jrzp     $1F88
1F86: 02 09        lia      $09
1F88: C7           cpma
1F89: 3A 0D        jrcp     $1F97
1F8B: 8A           lp       $0A
1F8C: 43           deca
1F8D: 34           push
1F8E: DB           exam
1F8F: 44           adm
1F90: DB           exam
1F91: 67 0E        cpia     $0E
1F93: 5B           pop
1F94: 3B CD        jrcm     $1EC8
1F96: DA           exab
1F97: 78 5C 8F     call     $5C8F
1F9A: 37           rtn
1F9B: 02 0C        lia      $0C
1F9D: 03 F8        lib      $F8
1F9F: F1 F5        cal      $11F5
1FA1: 78 6B 41     call     $6B41
1FA4: 78 6B 15     call     $6B15
1FA7: 8D           lp       $0D
1FA8: 59           ldm
1FA9: 88           lp       $08
1FAA: DB           exam
1FAB: 02 40        lia      $40
1FAD: 26           iys
1FAE: 03 09        lib      $09
1FB0: 06           iy
1FB1: 49           deck
1FB2: 39 4E        jrzm     $1F65
1FB4: 26           iys
1FB5: C3           decb
1FB6: 29 06        jrnzm    $1FB1
1FB8: 78 5C 3F     call     $5C3F
1FBB: F1 6E        cal      $116E
1FBD: 2A 41        jrncp    $1FFF
1FBF: 10 F8 20     lidp     $F820
1FC2: 02 11        lia      $11
1FC4: 00 17        lii      $17
1FC6: 1F           fild
1FC7: 93           lp       $13
1FC8: 60 FC        anim     $FC
1FCA: 61 80        orim     $80
1FCC: 10 C6 E7     lidp     $C6E7
1FCF: D4 00        anid     $00
1FD1: 78 68 85     call     $6885
1FD4: 10 F8 20     lidp     $F820
1FD7: A0           lp       $20
1FD8: 00 17        lii      $17
1FDA: 19           exwd
1FDB: 10 F8 3C     lidp     $F83C
1FDE: D6 02        tsid     $02
1FE0: 38 06        jrzp     $1FE7
1FE2: 78 7C 8B     call     $7C8B
1FE5: 3A 15        jrcp     $1FFB
1FE7: F1 6A        cal      $116A
1FE9: D6 01        tsid     $01
1FEB: 38 0F        jrzp     $1FFB
1FED: F2 00        cal      $1200
1FEF: 00 0F        lii      $0F
1FF1: A0           lp       $20
1FF2: 13 28        liq      $28
1FF4: 08           mvw
1FF5: 78 69 D9     call     $69D9
1FF8: D1           rc
1FF9: F8 99        cal      $1899
1FFB: 78 62 A5     call     $62A5
1FFE: 37           rtn
1FFF: F2 00        cal      $1200
2001: 78 60 59     call     $6059
2004: 24           ixl
2005: 34           push
2006: 02 00        lia      $00
2008: 52           std
2009: 10 F8 3C     lidp     $F83C
200C: D6 02        tsid     $02
200E: 38 12        jrzp     $2021
2010: 02 20        lia      $20
2012: 88           lp       $08
2013: DB           exam
2014: 78 60 52     call     $6052
2017: 78 6A 62     call     $6A62
201A: 3A 1E        jrcp     $2039
201C: 95           lp       $15
201D: 62 20        tsim     $20
201F: 28 11        jrnzp    $2031
2021: F1 6A        cal      $116A
2023: D6 01        tsid     $01
2025: 38 0B        jrzp     $2031
2027: 02 20        lia      $20
2029: 88           lp       $08
202A: DB           exam
202B: 78 60 52     call     $6052
202E: 78 69 A7     call     $69A7
2031: 78 60 59     call     $6059
2034: 5B           pop
2035: 04           ix
2036: 52           std
2037: 2D 3F        jrm      $1FF9
2039: 78 60 59     call     $6059
203C: 5B           pop
203D: 04           ix
203E: 52           std
203F: D0           sc
2040: 2D 49        jrm      $1FF8
2042: 88           lp       $08
2043: 59           ldm
2044: 8A           lp       $0A
2045: C7           cpma
2046: 28 06        jrnzp    $204D
2048: 86           lp       $06
2049: 10 C6 E9     lidp     $C6E9
204C: 53           mvdm
204D: 30           stp
204E: 59           ldm
204F: FF BC        cal      $1FBC
2051: 37           rtn
2052: 84           lp       $04
2053: 10 C6 CB     lidp     $C6CB
2056: 1A           mvbd
2057: 05           dx
2058: 37           rtn
2059: 78 60 52     call     $6052
205C: 10 C6 CD     lidp     $C6CD
205F: 57           ldd
2060: 84           lp       $04
2061: 44           adm
2062: 50           incp
2063: 02 00        lia      $00
2065: C4           adcm
2066: 37           rtn
2067: 78 6A B3     call     $6AB3
206A: 93           lp       $13
206B: 60 FC        anim     $FC
206D: 04           ix
206E: 10 C6 F1     lidp     $C6F1
2071: 84           lp       $04
2072: 53           mvdm
2073: 05           dx
2074: 24           ixl
2075: 93           lp       $13
2076: 67 00        cpia     $00
2078: 38 FB        jrzp     $2174
207A: 67 12        cpia     $12
207C: 38 E5        jrzp     $2162
207E: 62 01        tsim     $01
2080: 28 DB        jrnzp    $215C
2082: 62 02        tsim     $02
2084: 28 D7        jrnzp    $215C
2086: 67 51        cpia     $51
2088: 3A BC        jrcp     $2145
208A: 67 6B        cpia     $6B
208C: 2A B8        jrncp    $2145
208E: 8E           lp       $0E
208F: 13 04        liq      $04
2091: 0A           mvb
2092: 8A           lp       $0A
2093: DB           exam
2094: 59           ldm
2095: F1 95        cal      $1195
2097: 75 51        sbia     $51
2099: 5A           sl
209A: 34           push
209B: 95           lp       $15
209C: 62 80        tsim     $80
209E: 38 E3        jrzp     $2182
20A0: 10 C6 D6     lidp     $C6D6
20A3: 57           ldd
20A4: 85           lp       $05
20A5: DB           exam
20A6: 02 2F        lia      $2F
20A8: 84           lp       $04
20A9: DB           exam
20AA: 5B           pop
20AB: 44           adm
20AC: 24           ixl
20AD: 67 00        cpia     $00
20AF: 38 3E        jrzp     $20EE
20B1: 78 61 A4     call     $61A4
20B4: F1 95        cal      $1195
20B6: 24           ixl
20B7: 67 4A        cpia     $4A
20B9: 38 77        jrzp     $2131
20BB: 67 11        cpia     $11
20BD: 39 08        jrzm     $20B6
20BF: 67 10        cpia     $10
20C1: 39 0C        jrzm     $20B6
20C3: F1 95        cal      $1195
20C5: DA           exab
20C6: 83           lp       $03
20C7: 24           ixl
20C8: 67 6B        cpia     $6B
20CA: 2A 1D        jrncp    $20E8
20CC: C7           cpma
20CD: 39 1A        jrzm     $20B4
20CF: 67 6B        cpia     $6B
20D1: 2A 16        jrncp    $20E8
20D3: 24           ixl
20D4: 67 6B        cpia     $6B
20D6: 3B 04        jrcm     $20D3
20D8: 04           ix
20D9: 04           ix
20DA: 24           ixl
20DB: 66 10        tsia     $10
20DD: 28 10        jrnzp    $20EE
20DF: 04           ix
20E0: F1 95        cal      $1195
20E2: 84           lp       $04
20E3: 13 0E        liq      $0E
20E5: 0A           mvb
20E6: 2D 31        jrm      $20B6
20E8: 26           iys
20E9: F1 95        cal      $1195
20EB: 05           dx
20EC: 2C 4F        jrp      $213C
20EE: 85           lp       $05
20EF: 63 40        cpim     $40
20F1: 2A 2C        jrncp    $211E
20F3: 02 00        lia      $00
20F5: 84           lp       $04
20F6: DB           exam
20F7: 85           lp       $05
20F8: 70 08        adim     $08
20FA: 63 40        cpim     $40
20FC: 05           dx
20FD: 2A 09        jrncp    $2107
20FF: 78 68 3A     call     $683A
2102: 2A 08        jrncp    $210B
2104: 04           ix
2105: 2D 13        jrm      $20F3
2107: 02 40        lia      $40
2109: 85           lp       $05
210A: DB           exam
210B: 8A           lp       $0A
210C: 59           ldm
210D: 75 51        sbia     $51
210F: 5A           sl
2110: 74 2F        adia     $2F
2112: 84           lp       $04
2113: DB           exam
2114: 24           ixl
2115: 67 00        cpia     $00
2117: 39 2A        jrzm     $20EE
2119: 78 61 A4     call     $61A4
211C: 2D 3D        jrm      $20E0
211E: 8A           lp       $0A
211F: 59           ldm
2120: 26           iys
2121: 84           lp       $04
2122: 13 0E        liq      $0E
2124: 0A           mvb
2125: 2D B2        jrm      $2074
2127: 24           ixl
2128: 67 6B        cpia     $6B
212A: 3B 04        jrcm     $2127
212C: 26           iys
212D: F1 95        cal      $1195
212F: 2C 0C        jrp      $213C
2131: F1 95        cal      $1195
2133: 24           ixl
2134: 67 6B        cpia     $6B
2136: 3B 10        jrcm     $2127
2138: 26           iys
2139: F1 95        cal      $1195
213B: 05           dx
213C: 67 D3        cpia     $D3
213E: 29 CB        jrnzm    $2074
2140: 93           lp       $13
2141: 61 02        orim     $02
2143: 2D D0        jrm      $2074
2145: 67 11        cpia     $11
2147: 39 D4        jrzm     $2074
2149: 67 10        cpia     $10
214B: 39 D8        jrzm     $2074
214D: 67 32        cpia     $32
214F: 38 36        jrzp     $2186
2151: 67 33        cpia     $33
2153: 38 3A        jrzp     $218E
2155: 26           iys
2156: 67 D3        cpia     $D3
2158: 39 19        jrzm     $2140
215A: 2D E7        jrm      $2074
215C: 67 10        cpia     $10
215E: 39 EB        jrzm     $2074
2160: 2D 0C        jrm      $2155
2162: 62 02        tsim     $02
2164: 38 03        jrzp     $2168
2166: 2D 12        jrm      $2155
2168: 62 01        tsim     $01
216A: 38 05        jrzp     $2170
216C: 60 FE        anim     $FE
216E: 2D 1A        jrm      $2155
2170: 61 01        orim     $01
2172: 2D 1E        jrm      $2155
2174: 26           iys
2175: 10 C6 F1     lidp     $C6F1
2178: 57           ldd
2179: 86           lp       $06
217A: C7           cpma
217B: 28 05        jrnzp    $2181
217D: 11 DA        lidl     $DA
217F: D4 DF        anid     $DF
2181: 37           rtn
2182: 02 40        lia      $40
2184: 2D E1        jrm      $20A4
2186: 24           ixl
2187: 67 34        cpia     $34
2189: 38 11        jrzp     $219B
218B: 25           dxl
218C: 2D 38        jrm      $2155
218E: 24           ixl
218F: 67 34        cpia     $34
2191: 38 0D        jrzp     $219F
2193: 67 32        cpia     $32
2195: 29 0B        jrnzm    $218B
2197: 02 84        lia      $84
2199: 2D 45        jrm      $2155
219B: 02 82        lia      $82
219D: 2D 49        jrm      $2155
219F: 02 83        lia      $83
21A1: 2D 4D        jrm      $2155
21A3: 24           ixl
21A4: DA           exab
21A5: 24           ixl
21A6: 84           lp       $04
21A7: 13 02        liq      $02
21A9: 0A           mvb
21AA: 37           rtn
21AB: 84           lp       $04
21AC: 13 18        liq      $18
21AE: 0A           mvb
21AF: 05           dx
21B0: 78 62 F9     call     $62F9
21B3: 24           ixl
21B4: 67 00        cpia     $00
21B6: 38 04        jrzp     $21BB
21B8: 26           iys
21B9: 29 07        jrnzm    $21B3
21BB: 26           iys
21BC: F1 9A        cal      $119A
21BE: 24           ixl
21BF: 05           dx
21C0: 67 40        cpia     $40
21C2: 3A 05        jrcp     $21C8
21C4: 67 4A        cpia     $4A
21C6: 3A 05        jrcp     $21CC
21C8: 78 6B 55     call     $6B55
21CB: 37           rtn
21CC: 78 62 26     call     $6226
21CF: 02 20        lia      $20
21D1: 88           lp       $08
21D2: DB           exam
21D3: 89           lp       $09
21D4: 02 05        lia      $05
21D6: DB           exam
21D7: 10 C6 EA     lidp     $C6EA
21DA: 57           ldd
21DB: 43           deca
21DC: DA           exab
21DD: DA           exab
21DE: 84           lp       $04
21DF: C7           cpma
21E0: DA           exab
21E1: 88           lp       $08
21E2: 59           ldm
21E3: 28 05        jrnzp    $21E9
21E5: 10 C6 E9     lidp     $C6E9
21E8: 52           std
21E9: 30           stp
21EA: 24           ixl
21EB: 67 40        cpia     $40
21ED: 3A 0C        jrcp     $21FA
21EF: 67 4A        cpia     $4A
21F1: 2A 08        jrncp    $21FA
21F3: DB           exam
21F4: 48           inck
21F5: C9           decl
21F6: 29 1A        jrnzm    $21DD
21F8: 50           incp
21F9: 04           ix
21FA: 10 C6 D9     lidp     $C6D9
21FD: D6 08        tsid     $08
21FF: 02 1D        lia      $1D
2201: 28 03        jrnzp    $2205
2203: 02 11        lia      $11
2205: DB           exam
2206: 89           lp       $09
2207: 70 0A        adim     $0A
2209: 48           inck
220A: 05           dx
220B: 10 C6 D7     lidp     $C6D7
220E: D6 04        tsid     $04
2210: 28 0F        jrnzp    $2220
2212: F1 6A        cal      $116A
2214: D6 20        tsid     $20
2216: 38 05        jrzp     $221C
2218: 78 62 2D     call     $622D
221B: 37           rtn
221C: 78 69 A7     call     $69A7
221F: 37           rtn
2220: D5 10        orid     $10
2222: 78 6A 4B     call     $6A4B
2225: 37           rtn
2226: 02 11        lia      $11
2228: 00 17        lii      $17
222A: A0           lp       $20
222B: 1E           film
222C: 37           rtn
222D: 78 6A B3     call     $6AB3
2230: 93           lp       $13
2231: 61 01        orim     $01
2233: 10 C6 EA     lidp     $C6EA
2236: 57           ldd
2237: 43           deca
2238: 84           lp       $04
2239: C7           cpma
223A: 2A 38        jrncp    $2273
223C: 8C           lp       $0C
223D: 13 04        liq      $04
223F: 0A           mvb
2240: 84           lp       $04
2241: DB           exam
2242: 04           ix
2243: 04           ix
2244: 25           dxl
2245: 67 6B        cpia     $6B
2247: 3A 33        jrcp     $227B
2249: 8B           lp       $0B
224A: DB           exam
224B: 59           ldm
224C: 67 82        cpia     $82
224E: 3A 05        jrcp     $2254
2250: 67 85        cpia     $85
2252: 3A 34        jrcp     $2287
2254: F1 77        cal      $1177
2256: 93           lp       $13
2257: 60 FE        anim     $FE
2259: 78 68 08     call     $6808
225C: F1 72        cal      $1172
225E: 3A 18        jrcp     $2277
2260: 80           lp       $00
2261: DB           exam
2262: 40           inci
2263: 80           lp       $00
2264: 59           ldm
2265: 89           lp       $09
2266: 45           sbm
2267: 2A 03        jrncp    $226B
2269: 2C 09        jrp      $2273
226B: 38 06        jrzp     $2272
226D: 78 62 8B     call     $628B
2270: 29 2D        jrnzm    $2244
2272: 05           dx
2273: 78 69 A7     call     $69A7
2276: 37           rtn
2277: 02 02        lia      $02
2279: 2D 15        jrm      $2265
227B: 02 01        lia      $01
227D: 93           lp       $13
227E: 62 01        tsim     $01
2280: 29 1C        jrnzm    $2265
2282: 61 01        orim     $01
2284: 42           inca
2285: 2D 21        jrm      $2265
2287: 02 02        lia      $02
2289: 2D 0D        jrm      $227D
228B: 8C           lp       $0C
228C: 59           ldm
228D: 42           inca
228E: 84           lp       $04
228F: C7           cpma
2290: 37           rtn
2291: 78 5C 3F     call     $5C3F
2294: 93           lp       $13
2295: 60 7E        anim     $7E
2297: 61 02        orim     $02
2299: 10 C6 E7     lidp     $C6E7
229C: D4 00        anid     $00
229E: 78 68 85     call     $6885
22A1: 78 62 A5     call     $62A5
22A4: 37           rtn
22A5: 10 C6 D2     lidp     $C6D2
22A8: 8E           lp       $0E
22A9: 00 03        lii      $03
22AB: 18           mvwd
22AC: 10 C6 F8     lidp     $C6F8
22AF: 8E           lp       $0E
22B0: 19           exwd
22B1: 37           rtn
22B2: 78 62 CB     call     $62CB
22B5: 10 C6 D7     lidp     $C6D7
22B8: D4 EF        anid     $EF
22BA: 11 D9        lidl     $D9
22BC: D4 7D        anid     $7D
22BE: 11 D8        lidl     $D8
22C0: D4 FE        anid     $FE
22C2: 95           lp       $15
22C3: 60 D0        anim     $D0
22C5: 61 10        orim     $10
22C7: 96           lp       $16
22C8: 60 14        anim     $14
22CA: 37           rtn
22CB: F1 6A        cal      $116A
22CD: D4 C0        anid     $C0
22CF: 37           rtn
22D0: 78 62 B2     call     $62B2
22D3: 9C           lp       $1C
22D4: 13 18        liq      $18
22D6: 0A           mvb
22D7: 13 1A        liq      $1A
22D9: 0A           mvb
22DA: 02 00        lia      $00
22DC: FF B1        cal      $1FB1
22DE: FA CF        cal      $1ACF
22E0: 37           rtn
22E1: 10 C6 EB     lidp     $C6EB
22E4: 86           lp       $06
22E5: 1B           exbd
22E6: 11 ED        lidl     $ED
22E8: 93           lp       $13
22E9: 62 04        tsim     $04
22EB: 28 05        jrnzp    $22F1
22ED: 02 88        lia      $88
22EF: 52           std
22F0: 37           rtn
22F1: 62 12        tsim     $12
22F3: 39 05        jrzm     $22EF
22F5: 02 00        lia      $00
22F7: 2D 09        jrm      $22EF
22F9: 78 68 4B     call     $684B
22FC: F1 F9        cal      $11F9
22FE: 24           ixl
22FF: 64 0F        ania     $0F
2301: 38 13        jrzp     $2315
2303: 65 40        oria     $40
2305: 26           iys
2306: 24           ixl
2307: 34           push
2308: 58           swp
2309: 64 0F        ania     $0F
230B: 65 40        oria     $40
230D: 26           iys
230E: 5B           pop
230F: 64 0F        ania     $0F
2311: 65 40        oria     $40
2313: 26           iys
2314: 37           rtn
2315: 24           ixl
2316: 34           push
2317: 64 F0        ania     $F0
2319: 39 0C        jrzm     $230E
231B: 2D 14        jrm      $2308
231D: 10 C6 C4     lidp     $C6C4
2320: 84           lp       $04
2321: 1A           mvbd
2322: 8A           lp       $0A
2323: 24           ixl
2324: C7           cpma
2325: 38 0A        jrzp     $2330
2327: 67 00        cpia     $00
2329: 38 05        jrzp     $232F
232B: 67 FF        cpia     $FF
232D: 29 0B        jrnzm    $2323
232F: D0           sc
2330: 37           rtn
2331: 10 C6 FE     lidp     $C6FE
2334: 98           lp       $18
2335: 1A           mvbd
2336: 99           lp       $19
2337: 63 40        cpim     $40
2339: 2A 09        jrncp    $2343
233B: 10 20 07     lidp     $2007
233E: 57           ldd
233F: 67 00        cpia     $00
2341: 28 39        jrnzp    $237B
2343: 10 C6 D9     lidp     $C6D9
2346: D5 08        orid     $08
2348: 11 DA        lidl     $DA
234A: D4 C0        anid     $C0
234C: D5 24        orid     $24
234E: F1 62        cal      $1162
2350: D5 02        orid     $02
2352: 78 63 7E     call     $637E
2355: 84           lp       $04
2356: 13 18        liq      $18
2358: 0A           mvb
2359: 25           dxl
235A: 67 E0        cpia     $E0
235C: 3B 04        jrcm     $2359
235E: 05           dx
235F: 78 62 F9     call     $62F9
2362: 82           lp       $02
2363: 13 04        liq      $04
2365: 0A           mvb
2366: 98           lp       $18
2367: 15           sbb
2368: 86           lp       $06
2369: 59           ldm
236A: 98           lp       $18
236B: 44           adm
236C: 59           ldm
236D: 10 C6 EA     lidp     $C6EA
2370: 52           std
2371: 05           dx
2372: 98           lp       $18
2373: 13 04        liq      $04
2375: 0A           mvb
2376: 04           ix
2377: 78 61 B3     call     $61B3
237A: 37           rtn
237B: F8 C5        cal      $18C5
237D: 37           rtn
237E: 02 CE        lia      $CE
2380: 03 FF        lib      $FF
2382: 10 F8 B8     lidp     $F8B8
2385: 82           lp       $02
2386: 1B           exbd
2387: 37           rtn
2388: 02 FC        lia      $FC
238A: 03 FF        lib      $FF
238C: 2D 0B        jrm      $2382
238E: 84           lp       $04
238F: 13 18        liq      $18
2391: 0A           mvb
2392: 24           ixl
2393: 67 E0        cpia     $E0
2395: 3B 04        jrcm     $2392
2397: 67 FF        cpia     $FF
2399: 38 16        jrzp     $23B0
239B: 98           lp       $18
239C: 13 04        liq      $04
239E: 0A           mvb
239F: 10 C6 D9     lidp     $C6D9
23A2: D5 08        orid     $08
23A4: F1 6A        cal      $116A
23A6: D4 DF        anid     $DF
23A8: F1 62        cal      $1162
23AA: D5 02        orid     $02
23AC: 78 61 AB     call     $61AB
23AF: 37           rtn
23B0: 85           lp       $05
23B1: 63 80        cpim     $80
23B3: 2A 08        jrncp    $23BC
23B5: F1 8F        cal      $118F
23B7: 24           ixl
23B8: 67 FF        cpia     $FF
23BA: 29 20        jrnzm    $239B
23BC: F1 62        cal      $1162
23BE: D4 FD        anid     $FD
23C0: 37           rtn
23C1: 84           lp       $04
23C2: 13 18        liq      $18
23C4: 0A           mvb
23C5: 25           dxl
23C6: 67 E0        cpia     $E0
23C8: 3B 04        jrcm     $23C5
23CA: 67 FF        cpia     $FF
23CC: 29 32        jrnzm    $239B
23CE: 85           lp       $05
23CF: 63 80        cpim     $80
23D1: 3B 16        jrcm     $23BC
23D3: 78 6A 31     call     $6A31
23D6: 3B 1B        jrcm     $23BC
23D8: 10 20 07     lidp     $2007
23DB: D6 FF        tsid     $FF
23DD: 29 22        jrnzm    $23BC
23DF: 10 20 08     lidp     $2008
23E2: 84           lp       $04
23E3: 1A           mvbd
23E4: 2D 20        jrm      $23C5
23E6: 96           lp       $16
23E7: 62 02        tsim     $02
23E9: 28 1A        jrnzp    $2404
23EB: 24           ixl
23EC: 67 12        cpia     $12
23EE: 28 11        jrnzp    $2400
23F0: 24           ixl
23F1: 67 00        cpia     $00
23F3: 38 0C        jrzp     $2400
23F5: 67 12        cpia     $12
23F7: 29 08        jrnzm    $23F0
23F9: 24           ixl
23FA: 67 1D        cpia     $1D
23FC: 38 07        jrzp     $2404
23FE: 67 00        cpia     $00
2400: 05           dx
2401: 7E 65 6A     jpz      $656A
2404: 24           ixl
2405: 05           dx
2406: 67 FF        cpia     $FF
2408: 7E 66 2F     jpz      $662F
240B: 67 00        cpia     $00
240D: 7E 66 2F     jpz      $662F
2410: 67 6B        cpia     $6B
2412: 7F 66 AA     jpc      $66AA
2415: 67 90        cpia     $90
2417: 7D 65 1A     jpnc     $651A
241A: 67 76        cpia     $76
241C: 7F 65 24     jpc      $6524
241F: 96           lp       $16
2420: 62 02        tsim     $02
2422: 38 37        jrzp     $245A
2424: 10 F8 3C     lidp     $F83C
2427: D6 02        tsid     $02
2429: 38 2E        jrzp     $2458
242B: 78 6B 4F     call     $6B4F
242E: 38 24        jrzp     $2453
2430: 78 6A 62     call     $6A62
2433: 7F 66 F2     jpc      $66F2
2436: 95           lp       $15
2437: 62 20        tsim     $20
2439: 38 1E        jrzp     $2458
243B: 60 DF        anim     $DF
243D: 78 67 4F     call     $674F
2440: 10 F8 3D     lidp     $F83D
2443: D4 FE        anid     $FE
2445: F8 C5        cal      $18C5
2447: D0           sc
2448: F1 E0        cal      $11E0
244A: 37           rtn
244B: F1 6A        cal      $116A
244D: D6 04        tsid     $04
244F: 39 10        jrzm     $2440
2451: 2D 0B        jrm      $2447
2453: 10 F8 3C     lidp     $F83C
2456: D4 FD        anid     $FD
2458: F1 9A        cal      $119A
245A: 96           lp       $16
245B: 62 02        tsim     $02
245D: 7E 66 F7     jpz      $66F7
2460: 78 67 20     call     $6720
2463: F2 05        cal      $1205
2465: 7F 66 36     jpc      $6636
2468: 78 67 34     call     $6734
246B: 78 5B E0     call     $5BE0
246E: 24           ixl
246F: 67 00        cpia     $00
2471: 28 1D        jrnzp    $248F
2473: F1 6A        cal      $116A
2475: D5 01        orid     $01
2477: 78 5F B8     call     $5FB8
247A: 7F 66 F2     jpc      $66F2
247D: 95           lp       $15
247E: 62 20        tsim     $20
2480: 7C 66 CF     jpnz     $66CF
2483: F2 00        cal      $1200
2485: F1 E0        cal      $11E0
2487: 37           rtn
2488: 10 F8 3C     lidp     $F83C
248B: D4 FD        anid     $FD
248D: 2C 1E        jrp      $24AC
248F: 67 1B        cpia     $1B
2491: 7C 66 F0     jpnz     $66F0
2494: 10 F8 3C     lidp     $F83C
2497: D6 02        tsid     $02
2499: 38 12        jrzp     $24AC
249B: 78 6B 4F     call     $6B4F
249E: 39 17        jrzm     $2488
24A0: 78 5F B8     call     $5FB8
24A3: 7F 66 F2     jpc      $66F2
24A6: 95           lp       $15
24A7: 62 20        tsim     $20
24A9: 7C 66 CF     jpnz     $66CF
24AC: 24           ixl
24AD: 05           dx
24AE: 67 6B        cpia     $6B
24B0: 3A 30        jrcp     $24E1
24B2: 67 90        cpia     $90
24B4: 2A 08        jrncp    $24BD
24B6: 67 76        cpia     $76
24B8: 2B 5F        jrncm    $245A
24BA: 79 66 F0     jp       $66F0
24BD: 67 A0        cpia     $A0
24BF: 7F 66 F0     jpc      $66F0
24C2: 67 B0        cpia     $B0
24C4: 3B 6B        jrcm     $245A
24C6: 67 B2        cpia     $B2
24C8: 39 6F        jrzm     $245A
24CA: 67 BD        cpia     $BD
24CC: 39 73        jrzm     $245A
24CE: 67 BF        cpia     $BF
24D0: 39 77        jrzm     $245A
24D2: 79 66 F0     jp       $66F0
24D5: 78 67 34     call     $6734
24D8: 79 66 FC     jp       $66FC
24DB: 78 67 34     call     $6734
24DE: 79 66 26     jp       $6626
24E1: 67 51        cpia     $51
24E3: 3B 8A        jrcm     $245A
24E5: 78 67 44     call     $6744
24E8: 93           lp       $13
24E9: 60 9F        anim     $9F
24EB: 78 67 20     call     $6720
24EE: 78 59 2C     call     $592C
24F1: 3B 1D        jrcm     $24D5
24F3: 78 67 34     call     $6734
24F6: 34           push
24F7: 24           ixl
24F8: 67 34        cpia     $34
24FA: 5B           pop
24FB: 38 06        jrzp     $2502
24FD: 78 67 49     call     $6749
2500: 2D A7        jrm      $245A
2502: 78 67 20     call     $6720
2505: 78 54 23     call     $5423
2508: 3B 34        jrcm     $24D5
250A: 78 67 34     call     $6734
250D: 96           lp       $16
250E: 62 02        tsim     $02
2510: 29 A3        jrnzm    $246E
2512: 24           ixl
2513: 67 1B        cpia     $1B
2515: 39 31        jrzm     $24E5
2517: 05           dx
2518: 2C 51        jrp      $256A
251A: 67 B0        cpia     $B0
251C: 7D 67 08     jpnc     $6708
251F: 67 A0        cpia     $A0
2521: 7D 64 1F     jpnc     $641F
2524: 8B           lp       $0B
2525: DB           exam
2526: 04           ix
2527: FA CF        cal      $1ACF
2529: 78 6A B3     call     $6AB3
252C: 78 68 08     call     $6808
252F: 7F 66 95     jpc      $6695
2532: 03 00        lib      $00
2534: 84           lp       $04
2535: 14           adb
2536: 04           ix
2537: 78 59 22     call     $5922
253A: 24           ixl
253B: 26           iys
253C: 24           ixl
253D: 26           iys
253E: 04           ix
253F: 96           lp       $16
2540: 62 02        tsim     $02
2542: FA CF        cal      $1ACF
2544: 28 F6        jrnzp    $263B
2546: D6 20        tsid     $20
2548: 38 E6        jrzp     $262F
254A: 78 67 20     call     $6720
254D: 78 C6 DB     call     $C6DB
2550: 3B 76        jrcm     $24DB
2552: 78 67 34     call     $6734
2555: 3A D0        jrcp     $2626
2557: 10 C6 D8     lidp     $C6D8
255A: D6 01        tsid     $01
255C: 95           lp       $15
255D: 7C 66 D7     jpnz     $66D7
2560: 62 2E        tsim     $2E
2562: 7C 66 E4     jpnz     $66E4
2565: 96           lp       $16
2566: 62 60        tsim     $60
2568: 28 B3        jrnzp    $261C
256A: 78 68 60     call     $6860
256D: 24           ixl
256E: 67 1D        cpia     $1D
2570: 96           lp       $16
2571: 38 84        jrzp     $25F6
2573: 67 00        cpia     $00
2575: 28 B9        jrnzp    $262F
2577: 62 08        tsim     $08
2579: 38 67        jrzp     $25E1
257B: 9C           lp       $1C
257C: 13 18        liq      $18
257E: 0A           mvb
257F: 13 1A        liq      $1A
2581: 0A           mvb
2582: F8 99        cal      $1899
2584: 95           lp       $15
2585: 62 20        tsim     $20
2587: 28 23        jrnzp    $25AB
2589: 96           lp       $16
258A: 60 F7        anim     $F7
258C: 62 05        tsim     $05
258E: 28 31        jrnzp    $25C0
2590: 6B 08        test     $08
2592: 28 1A        jrnzp    $25AD
2594: 12 5D        lip      $5D
2596: 60 F0        anim     $F0
2598: 61 08        orim     $08
259A: DD           outb
259B: 4E 0F        wait     $0F
259D: CC           inb
259E: 66 07        tsia     $07
25A0: 28 0C        jrnzp    $25AD
25A2: 9E           lp       $1E
25A3: 63 FF        cpim     $FF
25A5: 7C 63 EB     jpnz     $63EB
25A8: 79 67 1A     jp       $671A
25AB: 60 DF        anim     $DF
25AD: 78 67 4F     call     $674F
25B0: 10 C7 02     lidp     $C702
25B3: 84           lp       $04
25B4: 1B           exbd
25B5: 9E           lp       $1E
25B6: 11 04        lidl     $04
25B8: 1B           exbd
25B9: 78 4E 28     call     $4E28
25BC: F1 E0        cal      $11E0
25BE: D0           sc
25BF: 37           rtn
25C0: 60 FE        anim     $FE
25C2: 95           lp       $15
25C3: 61 01        orim     $01
25C5: 10 C7 02     lidp     $C702
25C8: 84           lp       $04
25C9: 1B           exbd
25CA: 9E           lp       $1E
25CB: 11 04        lidl     $04
25CD: 1B           exbd
25CE: 02 B0        lia      $B0
25D0: 03 C7        lib      $C7
25D2: 78 68 54     call     $6854
25D5: 02 1D        lia      $1D
25D7: 26           iys
25D8: 02 00        lia      $00
25DA: 26           iys
25DB: F1 AF        cal      $11AF
25DD: F1 E0        cal      $11E0
25DF: D1           rc
25E0: 37           rtn
25E1: 04           ix
25E2: 9E           lp       $1E
25E3: 1A           mvbd
25E4: 82           lp       $02
25E5: 13 1E        liq      $1E
25E7: 0A           mvb
25E8: 00 01        lii      $01
25EA: 8B           lp       $0B
25EB: 13 03        liq      $03
25ED: 0F           sbw
25EE: 3A 04        jrcp     $25F3
25F0: 9E           lp       $1E
25F1: 61 FF        orim     $FF
25F3: 04           ix
25F4: 2D 71        jrm      $2584
25F6: 62 08        tsim     $08
25F8: 29 7E        jrnzm    $257B
25FA: 95           lp       $15
25FB: 62 20        tsim     $20
25FD: 29 53        jrnzm    $25AB
25FF: 2D 70        jrm      $2590
2601: 10 C7 02     lidp     $C702
2604: 84           lp       $04
2605: 1B           exbd
2606: 11 04        lidl     $04
2608: 9E           lp       $1E
2609: 1B           exbd
260A: 11 02        lidl     $02
260C: 8A           lp       $0A
260D: 00 03        lii      $03
260F: 18           mvwd
2610: 10 C6 FE     lidp     $C6FE
2613: 8A           lp       $0A
2614: 19           exwd
2615: 96           lp       $16
2616: 60 FE        anim     $FE
2618: F1 E0        cal      $11E0
261A: D0           sc
261B: 37           rtn
261C: 62 20        tsim     $20
261E: 7C 64 40     jpnz     $6440
2621: 60 BF        anim     $BF
2623: 79 64 04     jp       $6404
2626: 10 C6 D8     lidp     $C6D8
2629: D6 01        tsid     $01
262B: 28 D7        jrnzp    $2703
262D: 2C 03        jrp      $2631
262F: F7 05        cal      $1705
2631: 78 48 42     call     $4842
2634: D0           sc
2635: 37           rtn
2636: 78 67 34     call     $6734
2639: 2C B8        jrp      $26F2
263B: D6 40        tsid     $40
263D: 38 B2        jrzp     $26F0
263F: 78 67 20     call     $6720
2642: 78 C6 DB     call     $C6DB
2645: 3B 10        jrcm     $2636
2647: 78 67 34     call     $6734
264A: 95           lp       $15
264B: 62 20        tsim     $20
264D: 28 81        jrnzp    $26CF
264F: 24           ixl
2650: 67 00        cpia     $00
2652: 28 9D        jrnzp    $26F0
2654: 96           lp       $16
2655: 62 10        tsim     $10
2657: 7E 64 4B     jpz      $644B
265A: 60 FD        anim     $FD
265C: 95           lp       $15
265D: 62 0E        tsim     $0E
265F: 38 30        jrzp     $2690
2661: 62 06        tsim     $06
2663: 38 1C        jrzp     $2680
2665: A0           lp       $20
2666: 02 13        lia      $13
2668: DB           exam
2669: A1           lp       $21
266A: 02 11        lia      $11
266C: 00 16        lii      $16
266E: 1E           film
266F: F1 62        cal      $1162
2671: D4 E1        anid     $E1
2673: 78 69 D9     call     $69D9
2676: 78 62 CB     call     $62CB
2679: 11 F1        lidl     $F1
267B: 02 B0        lia      $B0
267D: 52           std
267E: 2D 67        jrm      $2618
2680: F1 BD        cal      $11BD
2682: 95           lp       $15
2683: 60 F1        anim     $F1
2685: 96           lp       $16
2686: 60 FD        anim     $FD
2688: 78 62 CB     call     $62CB
268B: F1 E5        cal      $11E5
268D: 79 65 6A     jp       $656A
2690: 78 62 D0     call     $62D0
2693: 2D F2        jrm      $25A2
2695: FA CF        cal      $1ACF
2697: 78 50 6A     call     $506A
269A: 96           lp       $16
269B: 62 02        tsim     $02
269D: 29 4F        jrnzm    $264F
269F: 79 65 57     jp       $6557
26A2: 10 F8 3C     lidp     $F83C
26A5: D4 FD        anid     $FD
26A7: 79 64 E5     jp       $64E5
26AA: 67 51        cpia     $51
26AC: 7F 64 1F     jpc      $641F
26AF: 96           lp       $16
26B0: 62 02        tsim     $02
26B2: 7E 64 E5     jpz      $64E5
26B5: 10 F8 3C     lidp     $F83C
26B8: D6 02        tsid     $02
26BA: 7E 64 E5     jpz      $64E5
26BD: 78 6B 4F     call     $6B4F
26C0: 39 1F        jrzm     $26A2
26C2: 78 6A 62     call     $6A62
26C5: 3A 2C        jrcp     $26F2
26C7: F1 9A        cal      $119A
26C9: 95           lp       $15
26CA: 62 20        tsim     $20
26CC: 7E 64 E5     jpz      $64E5
26CF: 60 DF        anim     $DF
26D1: 78 67 4F     call     $674F
26D4: 79 64 40     jp       $6440
26D7: D4 FE        anid     $FE
26D9: 62 20        tsim     $20
26DB: 7E 63 EB     jpz      $63EB
26DE: 78 46 E6     call     $46E6
26E1: 79 64 40     jp       $6440
26E4: 62 20        tsim     $20
26E6: 28 03        jrnzp    $26EA
26E8: 2D E8        jrm      $2601
26EA: 78 50 6A     call     $506A
26ED: 79 65 6A     jp       $656A
26F0: F7 05        cal      $1705
26F2: 78 6A 09     call     $6A09
26F5: D0           sc
26F6: 37           rtn
26F7: 04           ix
26F8: F7 27        cal      $1727
26FA: 2D CA        jrm      $2631
26FC: 96           lp       $16
26FD: 62 02        tsim     $02
26FF: 39 DA        jrzm     $2626
2701: 2D 10        jrm      $26F2
2703: 78 46 E6     call     $46E6
2706: 2D 15        jrm      $26F2
2708: 67 B2        cpia     $B2
270A: 7E 64 1F     jpz      $641F
270D: 67 BD        cpia     $BD
270F: 7E 64 1F     jpz      $641F
2712: 67 BF        cpia     $BF
2714: 7E 64 1F     jpz      $641F
2717: 79 65 24     jp       $6524
271A: 95           lp       $15
271B: 60 EF        anim     $EF
271D: 79 64 40     jp       $6440
2720: DA           exab
2721: 22           ldr
2722: 10 C6 A3     lidp     $C6A3
2725: 00 03        lii      $03
2727: 74 02        adia     $02
2729: 30           stp
272A: 19           exwd
272B: 22           ldr
272C: 31           stq
272D: 74 04        adia     $04
272F: 30           stp
2730: 0A           mvb
2731: 32           str
2732: DA           exab
2733: 37           rtn
2734: DA           exab
2735: 22           ldr
2736: 31           stq
2737: 75 04        sbia     $04
2739: 30           stp
273A: 0A           mvb
273B: 10 C6 A3     lidp     $C6A3
273E: 00 03        lii      $03
2740: 18           mvwd
2741: 32           str
2742: DA           exab
2743: 37           rtn
2744: 10 C6 B1     lidp     $C6B1
2747: 84           lp       $04
2748: 1B           exbd
2749: 10 C6 B1     lidp     $C6B1
274C: 84           lp       $04
274D: 1A           mvbd
274E: 37           rtn
274F: F1 62        cal      $1162
2751: D4 E0        anid     $E0
2753: D5 01        orid     $01
2755: 11 BF        lidl     $BF
2757: 02 07        lia      $07
2759: 52           std
275A: 37           rtn
275B: DA           exab
275C: 84           lp       $04
275D: C7           cpma
275E: 28 05        jrnzp    $2764
2760: 11 E9        lidl     $E9
2762: 88           lp       $08
2763: 53           mvdm
2764: DA           exab
2765: 37           rtn
2766: 78 6A B3     call     $6AB3
2769: 93           lp       $13
276A: 61 01        orim     $01
276C: 24           ixl
276D: 84           lp       $04
276E: 63 00        cpim     $00
2770: 38 78        jrzp     $27E9
2772: DA           exab
2773: 10 C6 EA     lidp     $C6EA
2776: 57           ldd
2777: DA           exab
2778: 67 6B        cpia     $6B
277A: 3A 65        jrcp     $27E0
277C: 67 82        cpia     $82
277E: 3A 23        jrcp     $27A2
2780: 67 85        cpia     $85
2782: 2A 1F        jrncp    $27A2
2784: 93           lp       $13
2785: 60 FE        anim     $FE
2787: 78 67 5B     call     $675B
278A: DA           exab
278B: 88           lp       $08
278C: 59           ldm
278D: 30           stp
278E: DA           exab
278F: 67 82        cpia     $82
2791: 38 70        jrzp     $2802
2793: DA           exab
2794: 02 33        lia      $33
2796: DB           exam
2797: 50           incp
2798: DA           exab
2799: 67 83        cpia     $83
279B: 38 61        jrzp     $27FD
279D: 02 32        lia      $32
279F: DB           exam
27A0: 2C 2F        jrp      $27D0
27A2: F1 77        cal      $1177
27A4: 8B           lp       $0B
27A5: DB           exam
27A6: 93           lp       $13
27A7: 62 01        tsim     $01
27A9: 28 08        jrnzp    $27B2
27AB: 88           lp       $08
27AC: 59           ldm
27AD: 30           stp
27AE: 02 11        lia      $11
27B0: DB           exam
27B1: 48           inck
27B2: 93           lp       $13
27B3: 61 01        orim     $01
27B5: 78 67 5B     call     $675B
27B8: 78 68 08     call     $6808
27BB: 88           lp       $08
27BC: 59           ldm
27BD: 30           stp
27BE: 3A 1B        jrcp     $27DA
27C0: 24           ixl
27C1: 67 6B        cpia     $6B
27C3: 2A 05        jrncp    $27C9
27C5: DB           exam
27C6: 50           incp
27C7: 2D 08        jrm      $27C0
27C9: 02 11        lia      $11
27CB: DB           exam
27CC: 20           ldp
27CD: F1 72        cal      $1172
27CF: 30           stp
27D0: 20           ldp
27D1: 42           inca
27D2: 67 38        cpia     $38
27D4: 2A 27        jrncp    $27FC
27D6: 88           lp       $08
27D7: DB           exam
27D8: 2D 6D        jrm      $276C
27DA: 02 4D        lia      $4D
27DC: DB           exam
27DD: 50           incp
27DE: 2D 16        jrm      $27C9
27E0: 93           lp       $13
27E1: 60 FE        anim     $FE
27E3: 78 67 5B     call     $675B
27E6: 67 00        cpia     $00
27E8: DA           exab
27E9: 88           lp       $08
27EA: 59           ldm
27EB: 30           stp
27EC: 38 05        jrzp     $27F2
27EE: DA           exab
27EF: DB           exam
27F0: 2D 21        jrm      $27D0
27F2: 02 4F        lia      $4F
27F4: DB           exam
27F5: 50           incp
27F6: 20           ldp
27F7: 67 38        cpia     $38
27F9: 3B 08        jrcm     $27F2
27FB: 05           dx
27FC: 37           rtn
27FD: 02 34        lia      $34
27FF: DB           exam
2800: 2D 31        jrm      $27D0
2802: 02 32        lia      $32
2804: DB           exam
2805: 50           incp
2806: 2D 0A        jrm      $27FD
2808: 78 6A D9     call     $6AD9
280B: 2A 1D        jrncp    $2829
280D: 8B           lp       $0B
280E: 59           ldm
280F: 75 7D        sbia     $7D
2811: 3A 17        jrcp     $2829
2813: 5A           sl
2814: 74 64        adia     $64
2816: 03 40        lib      $40
2818: 2A 02        jrncp    $281B
281A: C2           incb
281B: F1 F1        cal      $11F1
281D: 24           ixl
281E: 67 00        cpia     $00
2820: 38 09        jrzp     $282A
2822: DA           exab
2823: 24           ixl
2824: F1 F1        cal      $11F1
2826: 57           ldd
2827: 64 0F        ania     $0F
2829: 37           rtn
282A: D0           sc
282B: 37           rtn
282C: 85           lp       $05
282D: 59           ldm
282E: DA           exab
282F: 8B           lp       $0B
2830: 59           ldm
2831: 75 6B        sbia     $6B
2833: 3B 0B        jrcm     $2829
2835: 5A           sl
2836: 74 64        adia     $64
2838: 2D 21        jrm      $2818
283A: 00 04        lii      $04
283C: 03 50        lib      $50
283E: 83           lp       $03
283F: 24           ixl
2840: C7           cpma
2841: 38 03        jrzp     $2845
2843: D0           sc
2844: 37           rtn
2845: C2           incb
2846: 41           deci
2847: 29 09        jrnzm    $283F
2849: D1           rc
284A: 37           rtn
284B: 10 C7 B0     lidp     $C7B0
284E: 02 00        lia      $00
2850: 00 4F        lii      $4F
2852: 1F           fild
2853: 37           rtn
2854: F1 F5        cal      $11F5
2856: 02 00        lia      $00
2858: 03 C7        lib      $C7
285A: F1 F1        cal      $11F1
285C: 78 62 FE     call     $62FE
285F: 37           rtn
2860: F2 00        cal      $1200
2862: 8A           lp       $0A
2863: 13 1E        liq      $1E
2865: 0A           mvb
2866: 10 C6 FE     lidp     $C6FE
2869: 9C           lp       $1C
286A: 00 03        lii      $03
286C: 19           exwd
286D: 9E           lp       $1E
286E: 13 0A        liq      $0A
2870: 0A           mvb
2871: 37           rtn
2872: 78 56 64     call     $5664
2875: 28 06        jrnzp    $287C
2877: 10 C6 D7     lidp     $C6D7
287A: D5 40        orid     $40
287C: 78 68 85     call     $6885
287F: 10 C6 D7     lidp     $C6D7
2882: D4 BF        anid     $BF
2884: 37           rtn
2885: 10 C6 F8     lidp     $C6F8
2888: FA CF        cal      $1ACF
288A: 8E           lp       $0E
288B: 00 03        lii      $03
288D: 18           mvwd
288E: F1 6E        cal      $116E
2890: 2A 65        jrncp    $28F6
2892: 10 F8 00     lidp     $F800
2895: 02 11        lia      $11
2897: 00 1B        lii      $1B
2899: 1F           fild
289A: 10 F8 0E     lidp     $F80E
289D: 02 4A        lia      $4A
289F: 52           std
28A0: 78 5C 56     call     $5C56
28A3: 8F           lp       $0F
28A4: 63 00        cpim     $00
28A6: 28 3D        jrnzp    $28E4
28A8: 02 0A        lia      $0A
28AA: 78 56 5E     call     $565E
28AD: 38 08        jrzp     $28B6
28AF: 93           lp       $13
28B0: 62 01        tsim     $01
28B2: 38 03        jrzp     $28B6
28B4: 02 06        lia      $06
28B6: A9           lp       $29
28B7: 62 40        tsim     $40
28B9: 28 0B        jrnzp    $28C5
28BB: 8D           lp       $0D
28BC: C7           cpma
28BD: 3A 21        jrcp     $28DF
28BF: 78 5C E6     call     $5CE6
28C2: FA CF        cal      $1ACF
28C4: 37           rtn
28C5: 34           push
28C6: 02 0A        lia      $0A
28C8: B0           lp       $30
28C9: 00 05        lii      $05
28CB: 13 22        liq      $22
28CD: 08           mvw
28CE: B0           lp       $30
28CF: 1C           srw
28D0: B5           lp       $35
28D1: 63 00        cpim     $00
28D3: 28 04        jrnzp    $28D8
28D5: 43           deca
28D6: 29 09        jrnzm    $28CE
28D8: 83           lp       $03
28D9: 44           adm
28DA: 5B           pop
28DB: 42           inca
28DC: C7           cpma
28DD: 2B 1F        jrncm    $28BF
28DF: 78 5E B9     call     $5EB9
28E2: 2D 21        jrm      $28C2
28E4: 8E           lp       $0E
28E5: 62 08        tsim     $08
28E7: 29 29        jrnzm    $28BF
28E9: A9           lp       $29
28EA: 62 40        tsim     $40
28EC: 29 0E        jrnzm    $28DF
28EE: 67 0A        cpia     $0A
28F0: 3B 12        jrcm     $28DF
28F2: F7 1F        cal      $171F
28F4: 2D 33        jrm      $28C2
28F6: A7           lp       $27
28F7: 59           ldm
28F8: DA           exab
28F9: 84           lp       $04
28FA: 13 25        liq      $25
28FC: 0A           mvb
28FD: 05           dx
28FE: 93           lp       $13
28FF: 62 01        tsim     $01
2901: 38 09        jrzp     $290B
2903: DA           exab
2904: 67 0D        cpia     $0D
2906: 3A 03        jrcp     $290A
2908: 02 0C        lia      $0C
290A: DA           exab
290B: 91           lp       $11
290C: 63 00        cpim     $00
290E: 28 0B        jrnzp    $291A
2910: 93           lp       $13
2911: 62 80        tsim     $80
2913: 29 52        jrnzm    $28C2
2915: 78 69 4F     call     $694F
2918: 2C 33        jrp      $294C
291A: DA           exab
291B: C7           cpma
291C: 3A 2A        jrcp     $2947
291E: DA           exab
291F: 78 69 4F     call     $694F
2922: 3A 03        jrcp     $2926
2924: 2D 63        jrm      $28C2
2926: 91           lp       $11
2927: 59           ldm
2928: DA           exab
2929: A7           lp       $27
292A: 59           ldm
292B: 83           lp       $03
292C: 45           sbm
292D: 39 6C        jrzm     $28C2
292F: 02 4F        lia      $4F
2931: 88           lp       $08
2932: DB           exam
2933: 45           sbm
2934: 39 73        jrzm     $28C2
2936: 02 11        lia      $11
2938: 26           iys
2939: C3           decb
293A: 38 09        jrzp     $2944
293C: 49           deck
293D: 29 06        jrnzm    $2938
293F: 78 69 9C     call     $699C
2942: 2C 09        jrp      $294C
2944: 49           deck
2945: 2D 07        jrm      $293F
2947: 59           ldm
2948: DA           exab
2949: 78 69 4F     call     $694F
294C: D1           rc
294D: 2D 8C        jrm      $28C2
294F: 93           lp       $13
2950: 62 80        tsim     $80
2952: 38 17        jrzp     $296A
2954: 83           lp       $03
2955: 63 00        cpim     $00
2957: 38 10        jrzp     $2968
2959: 10 C6 E7     lidp     $C6E7
295C: 57           ldd
295D: 74 20        adia     $20
295F: 86           lp       $06
2960: DB           exam
2961: 87           lp       $07
2962: 02 F8        lia      $F8
2964: DB           exam
2965: 07           dy
2966: FF B6        cal      $1FB6
2968: D0           sc
2969: 37           rtn
296A: 10 C6 E7     lidp     $C6E7
296D: 57           ldd
296E: 67 4F        cpia     $4F
2970: 3A 02        jrcp     $2973
2972: 37           rtn
2973: 34           push
2974: DA           exab
2975: 8A           lp       $0A
2976: DB           exam
2977: F1 F9        cal      $11F9
2979: 03 00        lib      $00
297B: 5B           pop
297C: 86           lp       $06
297D: 14           adb
297E: DA           exab
297F: 02 4F        lia      $4F
2981: 88           lp       $08
2982: DB           exam
2983: DA           exab
2984: 45           sbm
2985: 8A           lp       $0A
2986: 59           ldm
2987: 67 00        cpia     $00
2989: 38 12        jrzp     $299C
298B: DA           exab
298C: 24           ixl
298D: 26           iys
298E: C3           decb
298F: 38 0B        jrzp     $299B
2991: 49           deck
2992: 29 07        jrnzm    $298C
2994: 02 4F        lia      $4F
2996: 10 C6 E7     lidp     $C6E7
2999: 52           std
299A: 37           rtn
299B: 49           deck
299C: 02 4F        lia      $4F
299E: 88           lp       $08
299F: DB           exam
29A0: 45           sbm
29A1: 10 C6 E7     lidp     $C6E7
29A4: 53           mvdm
29A5: D0           sc
29A6: 37           rtn
29A7: 78 67 66     call     $6766
29AA: F1 6A        cal      $116A
29AC: D6 01        tsid     $01
29AE: 28 05        jrnzp    $29B4
29B0: D6 20        tsid     $20
29B2: 28 07        jrnzp    $29BA
29B4: F1 62        cal      $1162
29B6: D4 FB        anid     $FB
29B8: 2C 20        jrp      $29D9
29BA: 11 E9        lidl     $E9
29BC: 57           ldd
29BD: 8A           lp       $0A
29BE: DB           exam
29BF: 59           ldm
29C0: 30           stp
29C1: F1 62        cal      $1162
29C3: D5 10        orid     $10
29C5: D4 FB        anid     $FB
29C7: 63 4F        cpim     $4F
29C9: 38 0C        jrzp     $29D6
29CB: D5 04        orid     $04
29CD: 10 C6 E8     lidp     $C6E8
29D0: 53           mvdm
29D1: 02 4C        lia      $4C
29D3: DB           exam
29D4: 2C 04        jrp      $29D9
29D6: 02 4E        lia      $4E
29D8: DB           exam
29D9: 02 00        lia      $00
29DB: 03 F8        lib      $F8
29DD: F1 F5        cal      $11F5
29DF: A0           lp       $20
29E0: 20           ldp
29E1: 88           lp       $08
29E2: DB           exam
29E3: 02 0C        lia      $0C
29E5: 89           lp       $09
29E6: DB           exam
29E7: 78 60 42     call     $6042
29EA: 03 05        lib      $05
29EC: FF B6        cal      $1FB6
29EE: 48           inck
29EF: C9           decl
29F0: 29 0A        jrnzm    $29E7
29F2: 02 7C        lia      $7C
29F4: 86           lp       $06
29F5: DB           exam
29F6: 02 04        lia      $04
29F8: 89           lp       $09
29F9: DB           exam
29FA: 78 60 42     call     $6042
29FD: 03 05        lib      $05
29FF: 24           ixl
2A00: 27           dys
2A01: C3           decb
2A02: 29 04        jrnzm    $29FF
2A04: 48           inck
2A05: C9           decl
2A06: 29 0D        jrnzm    $29FA
2A08: 37           rtn
2A09: A0           lp       $20
2A0A: 00 17        lii      $17
2A0C: 02 11        lia      $11
2A0E: 1E           film
2A0F: F2 00        cal      $1200
2A11: 10 40 2B     lidp     $402B
2A14: A1           lp       $21
2A15: 00 04        lii      $04
2A17: 18           mvwd
2A18: 94           lp       $14
2A19: 60 7F        anim     $7F
2A1B: 61 40        orim     $40
2A1D: 59           ldm
2A1E: A7           lp       $27
2A1F: DB           exam
2A20: F1 62        cal      $1162
2A22: D4 E1        anid     $E1
2A24: 78 69 D9     call     $69D9
2A27: F1 6A        cal      $116A
2A29: D4 FA        anid     $FA
2A2B: D5 02        orid     $02
2A2D: 78 48 95     call     $4895
2A30: 37           rtn
2A31: 02 00        lia      $00
2A33: 03 20        lib      $20
2A35: F1 F1        cal      $11F1
2A37: 78 68 3A     call     $683A
2A3A: 3A 0F        jrcp     $2A4A
2A3C: 10 20 04     lidp     $2004
2A3F: D6 FF        tsid     $FF
2A41: 38 07        jrzp     $2A49
2A43: 10 20 05     lidp     $2005
2A46: 84           lp       $04
2A47: 1A           mvbd
2A48: 37           rtn
2A49: D0           sc
2A4A: 37           rtn
2A4B: 88           lp       $08
2A4C: 63 24        cpim     $24
2A4E: 38 26        jrzp     $2A75
2A50: 03 03        lib      $03
2A52: A2           lp       $22
2A53: 59           ldm
2A54: 50           incp
2A55: DB           exam
2A56: 51           decp
2A57: 51           decp
2A58: C3           decb
2A59: 29 07        jrnzm    $2A53
2A5B: 48           inck
2A5C: 50           incp
2A5D: 02 11        lia      $11
2A5F: DB           exam
2A60: 2D 16        jrm      $2A4B
2A62: 95           lp       $15
2A63: 60 DF        anim     $DF
2A65: 10 C6 D7     lidp     $C6D7
2A68: D6 10        tsid     $10
2A6A: A0           lp       $20
2A6B: 38 06        jrzp     $2A72
2A6D: 00 03        lii      $03
2A6F: 02 11        lia      $11
2A71: 1E           film
2A72: 20           ldp
2A73: 88           lp       $08
2A74: DB           exam
2A75: 78 67 66     call     $6766
2A78: 67 39        cpia     $39
2A7A: 3A 09        jrcp     $2A84
2A7C: 28 28        jrnzp    $2AA5
2A7E: 43           deca
2A7F: 30           stp
2A80: 63 11        cpim     $11
2A82: 28 22        jrnzp    $2AA5
2A84: 24           ixl
2A85: 67 00        cpia     $00
2A87: 38 14        jrzp     $2A9C
2A89: 05           dx
2A8A: 78 7C 8B     call     $7C8B
2A8D: 3A 11        jrcp     $2A9F
2A8F: 95           lp       $15
2A90: 62 20        tsim     $20
2A92: 28 0C        jrnzp    $2A9F
2A94: 6B 08        test     $08
2A96: 39 32        jrzm     $2A65
2A98: 61 20        orim     $20
2A9A: 2C 04        jrp      $2A9F
2A9C: 78 7C 8B     call     $7C8B
2A9F: 10 C6 D7     lidp     $C6D7
2AA2: D4 EF        anid     $EF
2AA4: 37           rtn
2AA5: 88           lp       $08
2AA6: 59           ldm
2AA7: 30           stp
2AA8: 02 4F        lia      $4F
2AAA: DB           exam
2AAB: 50           incp
2AAC: 20           ldp
2AAD: 67 38        cpia     $38
2AAF: 3B 08        jrcm     $2AA8
2AB1: 2D 29        jrm      $2A89
2AB3: F1 C7        cal      $11C7
2AB5: 02 00        lia      $00
2AB7: 03 20        lib      $20
2AB9: F1 F1        cal      $11F1
2ABB: 78 68 3A     call     $683A
2ABE: 2A 07        jrncp    $2AC6
2AC0: 95           lp       $15
2AC1: 60 7F        anim     $7F
2AC3: F1 D2        cal      $11D2
2AC5: 37           rtn
2AC6: 84           lp       $04
2AC7: 02 03        lia      $03
2AC9: DB           exam
2ACA: 24           ixl
2ACB: 67 02        cpia     $02
2ACD: 2B 0E        jrncm    $2AC0
2ACF: 95           lp       $15
2AD0: 61 80        orim     $80
2AD2: 10 C6 D6     lidp     $C6D6
2AD5: 85           lp       $05
2AD6: 53           mvdm
2AD7: 2D 15        jrm      $2AC3
2AD9: 95           lp       $15
2ADA: 62 80        tsim     $80
2ADC: 38 22        jrzp     $2AFF
2ADE: 10 C6 D6     lidp     $C6D6
2AE1: 85           lp       $05
2AE2: 55           mvmd
2AE3: 78 68 2C     call     $682C
2AE6: 2A 17        jrncp    $2AFE
2AE8: 85           lp       $05
2AE9: 70 08        adim     $08
2AEB: 63 08        cpim     $08
2AED: 2A 11        jrncp    $2AFF
2AEF: 51           decp
2AF0: 02 00        lia      $00
2AF2: DB           exam
2AF3: 05           dx
2AF4: 78 68 3A     call     $683A
2AF7: 3B 10        jrcm     $2AE8
2AF9: 78 68 2C     call     $682C
2AFC: 3B 15        jrcm     $2AE8
2AFE: 37           rtn
2AFF: D0           sc
2B00: 37           rtn
2B01: 84           lp       $04
2B02: 03 00        lib      $00
2B04: 14           adb
2B05: 04           ix
2B06: 78 59 22     call     $5922
2B09: 24           ixl
2B0A: 26           iys
2B0B: 24           ixl
2B0C: 26           iys
2B0D: 78 C6 DB     call     $C6DB
2B10: 37           rtn
2B11: 02 36        lia      $36
2B13: 26           iys
2B14: 37           rtn
2B15: A1           lp       $21
2B16: 62 08        tsim     $08
2B18: 29 08        jrnzm    $2B11
2B1A: 8F           lp       $0F
2B1B: 63 00        cpim     $00
2B1D: 28 0D        jrnzp    $2B2B
2B1F: 93           lp       $13
2B20: 62 02        tsim     $02
2B22: 38 02        jrzp     $2B25
2B24: 06           iy
2B25: 86           lp       $06
2B26: 59           ldm
2B27: 8A           lp       $0A
2B28: DB           exam
2B29: 28 02        jrnzp    $2B2C
2B2B: 06           iy
2B2C: 37           rtn
2B2D: 03 01        lib      $01
2B2F: 78 6B 46     call     $6B46
2B32: 24           ixl
2B33: 67 1B        cpia     $1B
2B35: 38 07        jrzp     $2B3D
2B37: 67 4A        cpia     $4A
2B39: 29 0D        jrnzm    $2B2D
2B3B: 06           iy
2B3C: 37           rtn
2B3D: 06           iy
2B3E: 04           ix
2B3F: 2D 13        jrm      $2B2D
2B41: 86           lp       $06
2B42: 59           ldm
2B43: 8A           lp       $0A
2B44: DB           exam
2B45: 37           rtn
2B46: 00 05        lii      $05
2B48: AE           lp       $2E
2B49: 78 5C 85     call     $5C85
2B4C: 29 05        jrnzm    $2B48
2B4E: 37           rtn
2B4F: 10 C6 BB     lidp     $C6BB
2B52: D6 04        tsid     $04
2B54: 37           rtn
2B55: 02 10        lia      $10
2B57: 79 11 A3     jp       $11A3
2B5A: 24           ixl
2B5B: 67 00        cpia     $00
2B5D: 38 0C        jrzp     $2B6A
2B5F: 96           lp       $16
2B60: 62 02        tsim     $02
2B62: 28 05        jrnzp    $2B68
2B64: 67 1D        cpia     $1D
2B66: 38 03        jrzp     $2B6A
2B68: D0           sc
2B69: 37           rtn
2B6A: 05           dx
2B6B: 10 C6 B5     lidp     $C6B5
2B6E: 84           lp       $04
2B6F: 1B           exbd
2B70: 11 B5        lidl     $B5
2B72: 84           lp       $04
2B73: 1A           mvbd
2B74: D1           rc
2B75: 37           rtn
2B76: B0           lp       $30
2B77: 00 07        lii      $07
2B79: 02 FF        lia      $FF
2B7B: 1E           film
2B7C: 37           rtn
2B7D: E2 21        cal      $0221
2B7F: 22           ldr
2B80: DA           exab
2B81: 02 30        lia      $30
2B83: 32           str
2B84: A8           lp       $28
2B85: 5B           pop
2B86: C7           cpma
2B87: 28 0B        jrnzp    $2B93
2B89: 50           incp
2B8A: 20           ldp
2B8B: 67 30        cpia     $30
2B8D: 29 09        jrnzm    $2B85
2B8F: D0           sc
2B90: DA           exab
2B91: 32           str
2B92: 37           rtn
2B93: D1           rc
2B94: 2D 05        jrm      $2B90
2B96: F1 51        cal      $1151
2B98: 02 2B        lia      $2B
2B9A: 78 7D 6F     call     $7D6F
2B9D: 3A 2C        jrcp     $2BCA
2B9F: 02 AF        lia      $AF
2BA1: 88           lp       $08
2BA2: DB           exam
2BA3: 10 C6 F7     lidp     $C6F7
2BA6: 57           ldd
2BA7: 43           deca
2BA8: 86           lp       $06
2BA9: DB           exam
2BAA: 02 C7        lia      $C7
2BAC: 87           lp       $07
2BAD: DB           exam
2BAE: 57           ldd
2BAF: 88           lp       $08
2BB0: 45           sbm
2BB1: 78 7C 3E     call     $7C3E
2BB4: 67 0D        cpia     $0D
2BB6: 38 05        jrzp     $2BBC
2BB8: F1 36        cal      $1136
2BBA: 2D 0A        jrm      $2BB1
2BBC: F1 44        cal      $1144
2BBE: 06           iy
2BBF: 86           lp       $06
2BC0: 59           ldm
2BC1: A7           lp       $27
2BC2: DB           exam
2BC3: 10 C6 F7     lidp     $C6F7
2BC6: 57           ldd
2BC7: 45           sbm
2BC8: 07           dy
2BC9: D1           rc
2BCA: 37           rtn
2BCB: F1 25        cal      $1125
2BCD: 02 08        lia      $08
2BCF: 2C 03        jrp      $2BD3
2BD1: 02 01        lia      $01
2BD3: 94           lp       $14
2BD4: DB           exam
2BD5: F1 44        cal      $1144
2BD7: D0           sc
2BD8: 37           rtn
2BD9: F1 51        cal      $1151
2BDB: 02 77        lia      $77
2BDD: 78 7D 6F     call     $7D6F
2BE0: 3A 17        jrcp     $2BF8
2BE2: 78 7C 3E     call     $7C3E
2BE5: A8           lp       $28
2BE6: DB           exam
2BE7: 78 7C 3E     call     $7C3E
2BEA: 67 0D        cpia     $0D
2BEC: 29 22        jrnzm    $2BCB
2BEE: A9           lp       $29
2BEF: 60 00        anim     $00
2BF1: ED 42        cal      $0D42
2BF3: F1 25        cal      $1125
2BF5: F1 44        cal      $1144
2BF7: D1           rc
2BF8: 37           rtn
2BF9: F1 51        cal      $1151
2BFB: F2 05        cal      $1205
2BFD: 3A 31        jrcp     $2C2F
2BFF: 78 6B 5A     call     $6B5A
2C02: 3B 32        jrcm     $2BD1
2C04: A4           lp       $24
2C05: 63 D0        cpim     $D0
2C07: 28 05        jrnzp    $2C0D
2C09: 02 09        lia      $09
2C0B: 2D 39        jrm      $2BD3
2C0D: F0 DC        cal      $10DC
2C0F: F7 37        cal      $1737
2C11: 3A 1D        jrcp     $2C2F
2C13: F1 18        cal      $1118
2C15: 02 71        lia      $71
2C17: 78 7D 6F     call     $7D6F
2C1A: 3A 14        jrcp     $2C2F
2C1C: A8           lp       $28
2C1D: 59           ldm
2C1E: 78 7B 91     call     $7B91
2C21: 02 0D        lia      $0D
2C23: 78 7B 91     call     $7B91
2C26: 78 7C 02     call     $7C02
2C29: F1 44        cal      $1144
2C2B: F1 25        cal      $1125
2C2D: D1           rc
2C2E: 37           rtn
2C2F: D0           sc
2C30: 37           rtn
2C31: 78 6B 5A     call     $6B5A
2C34: 2A 0D        jrncp    $2C42
2C36: 2C 05        jrp      $2C3C
2C38: 02 08        lia      $08
2C3A: 2C 03        jrp      $2C3E
2C3C: 02 01        lia      $01
2C3E: 94           lp       $14
2C3F: DB           exam
2C40: D0           sc
2C41: 37           rtn
2C42: 78 7D D6     call     $7DD6
2C45: 2B 0E        jrncm    $2C38
2C47: F1 66        cal      $1166
2C49: D4 80        anid     $80
2C4B: D5 20        orid     $20
2C4D: 2D 23        jrm      $2C2B
2C4F: 78 6B 5A     call     $6B5A
2C52: 3B 17        jrcm     $2C3C
2C54: 78 7D D6     call     $7DD6
2C57: 2B 20        jrncm    $2C38
2C59: F1 66        cal      $1166
2C5B: D4 DF        anid     $DF
2C5D: 2D 33        jrm      $2C2B
2C5F: F1 51        cal      $1151
2C61: 24           ixl
2C62: 67 CC        cpia     $CC
2C64: 39 34        jrzm     $2C31
2C66: 67 CD        cpia     $CD
2C68: 39 1A        jrzm     $2C4F
2C6A: 2D 2F        jrm      $2C3C
2C6C: F1 51        cal      $1151
2C6E: 24           ixl
2C6F: 67 00        cpia     $00
2C71: 29 36        jrnzm    $2C3C
2C73: F1 5E        cal      $115E
2C75: D6 04        tsid     $04
2C77: 29 3C        jrnzm    $2C3C
2C79: F1 66        cal      $1166
2C7B: D5 40        orid     $40
2C7D: 90           lp       $10
2C7E: 60 FC        anim     $FC
2C80: 91           lp       $11
2C81: 60 EF        anim     $EF
2C83: 79 72 10     jp       $7210
2C86: F1 51        cal      $1151
2C88: 02 7F        lia      $7F
2C8A: F1 66        cal      $1166
2C8C: D6 01        tsid     $01
2C8E: 28 0A        jrnzp    $2C99
2C90: D6 20        tsid     $20
2C92: 28 08        jrnzp    $2C9B
2C94: A7           lp       $27
2C95: 60 00        anim     $00
2C97: D1           rc
2C98: 37           rtn
2C99: 02 79        lia      $79
2C9B: 78 7D 6F     call     $7D6F
2C9E: 3B 0B        jrcm     $2C94
2CA0: A7           lp       $27
2CA1: 60 00        anim     $00
2CA3: 2C 05        jrp      $2CA9
2CA5: 26           iys
2CA6: A7           lp       $27
2CA7: 70 01        adim     $01
2CA9: 78 7C 3E     call     $7C3E
2CAC: 67 0D        cpia     $0D
2CAE: 29 0A        jrnzm    $2CA5
2CB0: F1 44        cal      $1144
2CB2: D1           rc
2CB3: 37           rtn
2CB4: F1 51        cal      $1151
2CB6: F1 66        cal      $1166
2CB8: D6 20        tsid     $20
2CBA: 28 15        jrnzp    $2CD0
2CBC: D6 01        tsid     $01
2CBE: 38 6B        jrzp     $2D2A
2CC0: 95           lp       $15
2CC1: 59           ldm
2CC2: 64 11        ania     $11
2CC4: 67 10        cpia     $10
2CC6: 28 63        jrnzp    $2D2A
2CC8: 62 06        tsim     $06
2CCA: 38 5F        jrzp     $2D2A
2CCC: 02 78        lia      $78
2CCE: 2C 03        jrp      $2CD2
2CD0: 02 7E        lia      $7E
2CD2: 78 7D 6F     call     $7D6F
2CD5: 3A 52        jrcp     $2D28
2CD7: 78 7C 3E     call     $7C3E
2CDA: 67 20        cpia     $20
2CDC: 38 0C        jrzp     $2CE9
2CDE: DA           exab
2CDF: 78 7C 3E     call     $7C3E
2CE2: DA           exab
2CE3: 67 FF        cpia     $FF
2CE5: 38 40        jrzp     $2D26
2CE7: 2C 35        jrp      $2D1D
2CE9: 10 C6 DA     lidp     $C6DA
2CEC: D6 20        tsid     $20
2CEE: 28 08        jrnzp    $2CF7
2CF0: 78 68 4B     call     $684B
2CF3: 02 AF        lia      $AF
2CF5: 2C 06        jrp      $2CFC
2CF7: 10 C6 EA     lidp     $C6EA
2CFA: 57           ldd
2CFB: 43           deca
2CFC: 86           lp       $06
2CFD: DB           exam
2CFE: 02 C7        lia      $C7
2D00: 87           lp       $07
2D01: DB           exam
2D02: 78 7C 3E     call     $7C3E
2D05: 67 0D        cpia     $0D
2D07: 38 09        jrzp     $2D11
2D09: 88           lp       $08
2D0A: 26           iys
2D0B: DB           exam
2D0C: 86           lp       $06
2D0D: 63 FF        cpim     $FF
2D0F: 29 0E        jrnzm    $2D02
2D11: 86           lp       $06
2D12: 59           ldm
2D13: 10 C6 EA     lidp     $C6EA
2D16: 52           std
2D17: 11 DA        lidl     $DA
2D19: D5 20        orid     $20
2D1B: 88           lp       $08
2D1C: 59           ldm
2D1D: F1 44        cal      $1144
2D1F: F1 62        cal      $1162
2D21: D4 FD        anid     $FD
2D23: D1           rc
2D24: 37           rtn
2D25: 4D           nopw
2D26: F1 44        cal      $1144
2D28: 00 FF        lii      $FF
2D2A: 79 1E 66     jp       $1E66
2D2D: B8           lp       $38
2D2E: E0 A3        cal      $00A3
2D30: B8           lp       $38
2D31: 61 F5        orim     $F5
2D33: 24           ixl
2D34: 67 12        cpia     $12
2D36: 38 04        jrzp     $2D3B
2D38: 05           dx
2D39: 2C 0E        jrp      $2D48
2D3B: 78 77 38     call     $7738
2D3E: 91           lp       $11
2D3F: 61 10        orim     $10
2D41: E1 F6        cal      $01F6
2D43: 24           ixl
2D44: 67 1C        cpia     $1C
2D46: 28 5C        jrnzp    $2DA3
2D48: 78 6D BB     call     $6DBB
2D4B: F2 05        cal      $1205
2D4D: 2A 02        jrncp    $2D50
2D4F: 37           rtn
2D50: 24           ixl
2D51: 67 1B        cpia     $1B
2D53: 28 4F        jrnzp    $2DA3
2D55: F1 18        cal      $1118
2D57: 78 6D A9     call     $6DA9
2D5A: 3A 17        jrcp     $2D72
2D5C: F1 25        cal      $1125
2D5E: 8C           lp       $0C
2D5F: 13 0E        liq      $0E
2D61: 01 01        lij      $01
2D63: 0A           mvb
2D64: F2 05        cal      $1205
2D66: 3B 18        jrcm     $2D4F
2D68: 78 6B 5A     call     $6B5A
2D6B: 3A 37        jrcp     $2DA3
2D6D: 78 6D A9     call     $6DA9
2D70: 2A 04        jrncp    $2D75
2D72: F1 25        cal      $1125
2D74: 37           rtn
2D75: 13 0C        liq      $0C
2D77: 84           lp       $04
2D78: 0A           mvb
2D79: 13 0C        liq      $0C
2D7B: AA           lp       $2A
2D7C: 0A           mvb
2D7D: 13 0C        liq      $0C
2D7F: 82           lp       $02
2D80: 0A           mvb
2D81: A8           lp       $28
2D82: 15           sbb
2D83: 2A 07        jrncp    $2D8B
2D85: F1 25        cal      $1125
2D87: 02 09        lia      $09
2D89: 2C 1B        jrp      $2DA5
2D8B: 10 C6 D9     lidp     $C6D9
2D8E: D6 20        tsid     $20
2D90: 28 FB        jrnzp    $2E8C
2D92: 78 6D C1     call     $6DC1
2D95: 91           lp       $11
2D96: 61 60        orim     $60
2D98: B0           lp       $30
2D99: E2 10        cal      $0210
2D9B: 78 6E A1     call     $6EA1
2D9E: 79 6E 49     jp       $6E49
2DA1: F1 25        cal      $1125
2DA3: 02 01        lia      $01
2DA5: 94           lp       $14
2DA6: DB           exam
2DA7: D0           sc
2DA8: 37           rtn
2DA9: 93           lp       $13
2DAA: 61 80        orim     $80
2DAC: 92           lp       $12
2DAD: 60 F0        anim     $F0
2DAF: F7 37        cal      $1737
2DB1: 3A 08        jrcp     $2DBA
2DB3: 8E           lp       $0E
2DB4: 01 01        lij      $01
2DB6: 13 28        liq      $28
2DB8: 0A           mvb
2DB9: D1           rc
2DBA: 37           rtn
2DBB: 10 C6 A0     lidp     $C6A0
2DBE: 90           lp       $10
2DBF: 1B           exbd
2DC0: 37           rtn
2DC1: 10 C6 A0     lidp     $C6A0
2DC4: 90           lp       $10
2DC5: 1A           mvbd
2DC6: 37           rtn
2DC7: F1 51        cal      $1151
2DC9: 91           lp       $11
2DCA: 60 8F        anim     $8F
2DCC: 24           ixl
2DCD: 67 5D        cpia     $5D
2DCF: 7E 6D 2D     jpz      $6D2D
2DD2: 05           dx
2DD3: F1 47        cal      $1147
2DD5: 78 6B 5A     call     $6B5A
2DD8: 2A 2E        jrncp    $2E07
2DDA: F1 66        cal      $1166
2DDC: D6 10        tsid     $10
2DDE: 29 3C        jrnzm    $2DA3
2DE0: 67 12        cpia     $12
2DE2: 28 0E        jrnzp    $2DF1
2DE4: 78 77 38     call     $7738
2DE7: 91           lp       $11
2DE8: 61 10        orim     $10
2DEA: E1 F3        cal      $01F3
2DEC: 78 6B 5A     call     $6B5A
2DEF: 2A 17        jrncp    $2E07
2DF1: 67 1B        cpia     $1B
2DF3: 29 51        jrnzm    $2DA3
2DF5: 24           ixl
2DF6: 67 12        cpia     $12
2DF8: 29 56        jrnzm    $2DA3
2DFA: 78 77 38     call     $7738
2DFD: E2 21        cal      $0221
2DFF: 78 6B 5A     call     $6B5A
2E02: 3B 60        jrcm     $2DA3
2E04: 91           lp       $11
2E05: 61 20        orim     $20
2E07: 10 C6 D9     lidp     $C6D9
2E0A: D6 20        tsid     $20
2E0C: 28 7F        jrnzp    $2E8C
2E0E: F1 5E        cal      $115E
2E10: D6 04        tsid     $04
2E12: 38 0C        jrzp     $2E1F
2E14: 8E           lp       $0E
2E15: F1 04        cal      $1104
2E17: 03 00        lib      $00
2E19: 02 30        lia      $30
2E1B: 8E           lp       $0E
2E1C: 14           adb
2E1D: 2C 1C        jrp      $2E3A
2E1F: 01 01        lij      $01
2E21: 10 C6 E3     lidp     $C6E3
2E24: 8E           lp       $0E
2E25: 1A           mvbd
2E26: 02 01        lia      $01
2E28: 03 00        lib      $00
2E2A: 8E           lp       $0E
2E2B: 15           sbb
2E2C: 11 E1        lidl     $E1
2E2E: 57           ldd
2E2F: 8E           lp       $0E
2E30: C7           cpma
2E31: 28 08        jrnzp    $2E3A
2E33: 11 E2        lidl     $E2
2E35: 57           ldd
2E36: 8F           lp       $0F
2E37: C7           cpma
2E38: 38 55        jrzp     $2E8E
2E3A: F1 18        cal      $1118
2E3C: F1 66        cal      $1166
2E3E: D6 10        tsid     $10
2E40: 28 9B        jrnzp    $2EDC
2E42: 78 6E A1     call     $6EA1
2E45: 78 6E 90     call     $6E90
2E48: 04           ix
2E49: F1 0B        cal      $110B
2E4B: 05           dx
2E4C: 89           lp       $09
2E4D: 02 09        lia      $09
2E4F: DB           exam
2E50: 8B           lp       $0B
2E51: 60 00        anim     $00
2E53: 88           lp       $08
2E54: 02 07        lia      $07
2E56: DB           exam
2E57: 24           ixl
2E58: 58           swp
2E59: 78 6F 0B     call     $6F0B
2E5C: 78 6F 18     call     $6F18
2E5F: 6B 08        test     $08
2E61: 7C 7D F6     jpnz     $7DF6
2E64: 78 6E CC     call     $6ECC
2E67: 3A 10        jrcp     $2E78
2E69: F1 0B        cal      $110B
2E6B: 49           deck
2E6C: 2B 16        jrncm    $2E57
2E6E: 78 6F 7A     call     $6F7A
2E71: F1 0B        cal      $110B
2E73: C9           decl
2E74: 2B 22        jrncm    $2E53
2E76: 2D 2B        jrm      $2E4C
2E78: F1 0B        cal      $110B
2E7A: 49           deck
2E7B: 2A 06        jrncp    $2E82
2E7D: 78 6F 7A     call     $6F7A
2E80: F1 0B        cal      $110B
2E82: 02 0F        lia      $0F
2E84: 78 6F 18     call     $6F18
2E87: F1 0B        cal      $110B
2E89: 78 7E 24     call     $7E24
2E8C: F1 25        cal      $1125
2E8E: D1           rc
2E8F: 37           rtn
2E90: F1 5E        cal      $115E
2E92: D6 04        tsid     $04
2E94: 38 04        jrzp     $2E99
2E96: F1 03        cal      $1103
2E98: 37           rtn
2E99: 10 C6 E1     lidp     $C6E1
2E9C: 84           lp       $04
2E9D: 01 01        lij      $01
2E9F: 1A           mvbd
2EA0: 37           rtn
2EA1: 78 7E 0C     call     $7E0C
2EA4: 78 6F 81     call     $6F81
2EA7: 91           lp       $11
2EA8: 62 20        tsim     $20
2EAA: 38 0B        jrzp     $2EB6
2EAC: 02 62        lia      $62
2EAE: 62 40        tsim     $40
2EB0: 28 07        jrnzp    $2EB8
2EB2: 02 12        lia      $12
2EB4: 2C 03        jrp      $2EB8
2EB6: 02 02        lia      $02
2EB8: 78 6F 18     call     $6F18
2EBB: F1 0B        cal      $110B
2EBD: 78 6F 55     call     $6F55
2EC0: 91           lp       $11
2EC1: 62 20        tsim     $20
2EC3: 28 02        jrnzp    $2EC6
2EC5: 37           rtn
2EC6: 60 DF        anim     $DF
2EC8: E2 3D        cal      $023D
2ECA: 2D 10        jrm      $2EBB
2ECC: 84           lp       $04
2ECD: 59           ldm
2ECE: 8E           lp       $0E
2ECF: C7           cpma
2ED0: 28 09        jrnzp    $2EDA
2ED2: 85           lp       $05
2ED3: 59           ldm
2ED4: 8F           lp       $0F
2ED5: C7           cpma
2ED6: 28 03        jrnzp    $2EDA
2ED8: D0           sc
2ED9: 37           rtn
2EDA: D1           rc
2EDB: 37           rtn
2EDC: 02 75        lia      $75
2EDE: 78 7D 6F     call     $7D6F
2EE1: 3A 25        jrcp     $2F07
2EE3: F1 5E        cal      $115E
2EE5: D6 04        tsid     $04
2EE7: 38 05        jrzp     $2EED
2EE9: F1 03        cal      $1103
2EEB: 2C 08        jrp      $2EF4
2EED: 10 C6 E1     lidp     $C6E1
2EF0: 84           lp       $04
2EF1: 01 01        lij      $01
2EF3: 1A           mvbd
2EF4: 24           ixl
2EF5: 78 7B 91     call     $7B91
2EF8: 78 6E CC     call     $6ECC
2EFB: 2B 08        jrncm    $2EF4
2EFD: 79 6C 21     jp       $6C21
2F00: 11 F8        lidl     $F8
2F02: 02 00        lia      $00
2F04: 00 03        lii      $03
2F06: 1F           fild
2F07: 37           rtn
2F08: 86           lp       $06
2F09: 2D 3D        jrm      $2ECD
2F0B: 34           push
2F0C: 8B           lp       $0B
2F0D: 64 0F        ania     $0F
2F0F: 44           adm
2F10: 5B           pop
2F11: 34           push
2F12: 58           swp
2F13: 64 0F        ania     $0F
2F15: C4           adcm
2F16: 5B           pop
2F17: 37           rtn
2F18: 78 6F 27     call     $6F27
2F1B: 6B 02        test     $02
2F1D: 39 03        jrzm     $2F1B
2F1F: 6B 02        test     $02
2F21: 39 03        jrzm     $2F1F
2F23: 78 6F 27     call     $6F27
2F26: 37           rtn
2F27: 6B 02        test     $02
2F29: 39 03        jrzm     $2F27
2F2B: D1           rc
2F2C: 78 6F 41     call     $6F41
2F2F: 78 6F 40     call     $6F40
2F32: 78 6F 40     call     $6F40
2F35: 78 6F 40     call     $6F40
2F38: 78 6F 40     call     $6F40
2F3B: D0           sc
2F3C: 78 6F 41     call     $6F41
2F3F: 37           rtn
2F40: D2           sr
2F41: 12 5F        lip      $5F
2F43: 60 01        anim     $01
2F45: 2A 05        jrncp    $2F4B
2F47: 61 30        orim     $30
2F49: 2C 05        jrp      $2F4F
2F4B: 61 20        orim     $20
2F4D: 4D           nopw
2F4E: 4D           nopw
2F4F: 6B 02        test     $02
2F51: 39 03        jrzm     $2F4F
2F53: DF           outc
2F54: 37           rtn
2F55: 02 37        lia      $37
2F57: 8A           lp       $0A
2F58: DB           exam
2F59: 8B           lp       $0B
2F5A: 60 00        anim     $00
2F5C: 88           lp       $08
2F5D: 02 07        lia      $07
2F5F: DB           exam
2F60: 8A           lp       $0A
2F61: 59           ldm
2F62: 30           stp
2F63: 59           ldm
2F64: 78 6F 0B     call     $6F0B
2F67: 78 6F 18     call     $6F18
2F6A: 8A           lp       $0A
2F6B: 71 01        sbim     $01
2F6D: 49           deck
2F6E: 3A 05        jrcp     $2F74
2F70: F1 0B        cal      $110B
2F72: 2D 13        jrm      $2F60
2F74: F1 0B        cal      $110B
2F76: 78 6F 7A     call     $6F7A
2F79: 37           rtn
2F7A: 8B           lp       $0B
2F7B: 59           ldm
2F7C: 58           swp
2F7D: 78 6F 18     call     $6F18
2F80: 37           rtn
2F81: 03 0F        lib      $0F
2F83: 12 5F        lip      $5F
2F85: 60 01        anim     $01
2F87: 61 30        orim     $30
2F89: DF           outc
2F8A: 02 F9        lia      $F9
2F8C: 6B 02        test     $02
2F8E: 39 03        jrzm     $2F8C
2F90: 43           deca
2F91: 2B 06        jrncm    $2F8C
2F93: C3           decb
2F94: 3A 08        jrcp     $2F9D
2F96: 6B 08        test     $08
2F98: 39 0F        jrzm     $2F8A
2F9A: 79 7D F6     jp       $7DF6
2F9D: 37           rtn
2F9E: 03 03        lib      $03
2FA0: 2D 1E        jrm      $2F83
2FA2: 24           ixl
2FA3: 67 00        cpia     $00
2FA5: 28 05        jrnzp    $2FAB
2FA7: F1 18        cal      $1118
2FA9: 2C 46        jrp      $2FF0
2FAB: 67 12        cpia     $12
2FAD: 38 04        jrzp     $2FB2
2FAF: 05           dx
2FB0: 2C 1C        jrp      $2FCD
2FB2: 78 77 38     call     $7738
2FB5: 2A 07        jrncp    $2FBD
2FB7: 94           lp       $14
2FB8: 02 01        lia      $01
2FBA: DB           exam
2FBB: D0           sc
2FBC: 37           rtn
2FBD: E2 21        cal      $0221
2FBF: E1 F6        cal      $01F6
2FC1: 91           lp       $11
2FC2: 61 10        orim     $10
2FC4: 78 6B 5A     call     $6B5A
2FC7: 2A 28        jrncp    $2FF0
2FC9: 67 1C        cpia     $1C
2FCB: 29 15        jrnzm    $2FB7
2FCD: 78 6D BB     call     $6DBB
2FD0: F2 05        cal      $1205
2FD2: 3B 17        jrcm     $2FBC
2FD4: 78 6B 5A     call     $6B5A
2FD7: 3B 21        jrcm     $2FB7
2FD9: 78 6D C1     call     $6DC1
2FDC: 78 6D A9     call     $6DA9
2FDF: 3A 0C        jrcp     $2FEC
2FE1: E2 6A        cal      $026A
2FE3: 13 0E        liq      $0E
2FE5: B8           lp       $38
2FE6: 0A           mvb
2FE7: 91           lp       $11
2FE8: 61 80        orim     $80
2FEA: 2C 05        jrp      $2FF0
2FEC: F1 25        cal      $1125
2FEE: 2D 38        jrm      $2FB7
2FF0: 78 72 E5     call     $72E5
2FF3: 67 02        cpia     $02
2FF5: 29 06        jrnzm    $2FF0
2FF7: 78 73 13     call     $7313
2FFA: 67 06        cpia     $06
2FFC: 29 0D        jrnzm    $2FF0
2FFE: 78 73 57     call     $7357
3001: 3B 12        jrcm     $2FF0
3003: 78 79 BE     call     $79BE
3006: 78 71 80     call     $7180
3009: 58           swp
300A: 8B           lp       $0B
300B: C7           cpma
300C: 28 41        jrnzp    $304E
300E: 91           lp       $11
300F: 62 80        tsim     $80
3011: 28 05        jrnzp    $3017
3013: 13 32        liq      $32
3015: 2C 03        jrp      $3019
3017: 13 38        liq      $38
3019: 86           lp       $06
301A: 0A           mvb
301B: 07           dy
301C: 89           lp       $09
301D: 02 09        lia      $09
301F: DB           exam
3020: 8B           lp       $0B
3021: 60 00        anim     $00
3023: 88           lp       $08
3024: 02 07        lia      $07
3026: DB           exam
3027: 78 71 80     call     $7180
302A: 78 6F 0B     call     $6F0B
302D: 58           swp
302E: 26           iys
302F: 03 00        lib      $00
3031: 02 01        lia      $01
3033: B0           lp       $30
3034: 15           sbb
3035: 3A 11        jrcp     $3047
3037: 49           deck
3038: 2B 12        jrncm    $3027
303A: 78 71 80     call     $7180
303D: 58           swp
303E: 8B           lp       $0B
303F: C7           cpma
3040: 28 0D        jrnzp    $304E
3042: C9           decl
3043: 2B 21        jrncm    $3023
3045: 2D 2A        jrm      $301C
3047: 78 7E 24     call     $7E24
304A: F1 25        cal      $1125
304C: D1           rc
304D: 37           rtn
304E: 79 72 68     jp       $7268
3051: F1 51        cal      $1151
3053: 91           lp       $11
3054: 60 6F        anim     $6F
3056: 90           lp       $10
3057: 60 FC        anim     $FC
3059: 24           ixl
305A: 67 5D        cpia     $5D
305C: 7E 6F A2     jpz      $6FA2
305F: 67 13        cpia     $13
3061: 7E 73 E7     jpz      $73E7
3064: 05           dx
3065: 2C 11        jrp      $3077
3067: F1 51        cal      $1151
3069: 90           lp       $10
306A: 60 FC        anim     $FC
306C: 61 02        orim     $02
306E: 91           lp       $11
306F: 60 EF        anim     $EF
3071: F1 5E        cal      $115E
3073: D6 04        tsid     $04
3075: 29 BF        jrnzm    $2FB7
3077: 24           ixl
3078: 67 12        cpia     $12
307A: 28 16        jrnzp    $3091
307C: F1 66        cal      $1166
307E: D6 08        tsid     $08
3080: 29 CA        jrnzm    $2FB7
3082: 78 77 38     call     $7738
3085: E2 21        cal      $0221
3087: 78 6B 5A     call     $6B5A
308A: 3B D4        jrcm     $2FB7
308C: 91           lp       $11
308D: 61 10        orim     $10
308F: 2C 11        jrp      $30A1
3091: 67 00        cpia     $00
3093: 29 DD        jrnzm    $2FB7
3095: F1 66        cal      $1166
3097: D6 08        tsid     $08
3099: 38 07        jrzp     $30A1
309B: 90           lp       $10
309C: 62 02        tsim     $02
309E: 7E 72 10     jpz      $7210
30A1: 78 73 2A     call     $732A
30A4: 91           lp       $11
30A5: 62 20        tsim     $20
30A7: 38 13        jrzp     $30BB
30A9: 78 79 BE     call     $79BE
30AC: 78 71 80     call     $7180
30AF: 10 C6 D9     lidp     $C6D9
30B2: 90           lp       $10
30B3: 62 02        tsim     $02
30B5: 38 05        jrzp     $30BB
30B7: D6 20        tsid     $20
30B9: 28 95        jrnzp    $314F
30BB: 90           lp       $10
30BC: 62 01        tsim     $01
30BE: 38 08        jrzp     $30C7
30C0: 10 C6 D8     lidp     $C6D8
30C3: D5 01        orid     $01
30C5: 2C 09        jrp      $30CF
30C7: 78 46 E8     call     $46E8
30CA: 10 F8 3D     lidp     $F83D
30CD: D5 01        orid     $01
30CF: 90           lp       $10
30D0: 62 02        tsim     $02
30D2: 38 08        jrzp     $30DB
30D4: 10 C6 E3     lidp     $C6E3
30D7: 86           lp       $06
30D8: 1A           mvbd
30D9: 2C 10        jrp      $30EA
30DB: F1 5E        cal      $115E
30DD: D6 04        tsid     $04
30DF: 38 07        jrzp     $30E7
30E1: 86           lp       $06
30E2: F1 04        cal      $1104
30E4: 06           iy
30E5: 2C 04        jrp      $30EA
30E7: 78 71 6B     call     $716B
30EA: 07           dy
30EB: 89           lp       $09
30EC: 02 09        lia      $09
30EE: DB           exam
30EF: 8B           lp       $0B
30F0: 60 00        anim     $00
30F2: 88           lp       $08
30F3: 02 07        lia      $07
30F5: DB           exam
30F6: 78 71 80     call     $7180
30F9: 78 6F 0B     call     $6F0B
30FC: 58           swp
30FD: 67 F0        cpia     $F0
30FF: 38 22        jrzp     $3122
3101: 78 71 BE     call     $71BE
3104: 2A 05        jrncp    $310A
3106: 03 06        lib      $06
3108: 2C 0E        jrp      $3117
310A: 49           deck
310B: 2B 16        jrncm    $30F6
310D: 78 71 80     call     $7180
3110: 58           swp
3111: 8B           lp       $0B
3112: C7           cpma
3113: 38 09        jrzp     $311D
3115: 03 08        lib      $08
3117: 78 71 60     call     $7160
311A: 79 72 4F     jp       $724F
311D: C9           decl
311E: 2B 2D        jrncm    $30F2
3120: 2D 36        jrm      $30EB
3122: F1 5E        cal      $115E
3124: D6 04        tsid     $04
3126: 28 0F        jrnzp    $3136
3128: 02 FF        lia      $FF
312A: 78 71 BE     call     $71BE
312D: 3B 28        jrcm     $3106
312F: 10 C6 E3     lidp     $C6E3
3132: 86           lp       $06
3133: 01 01        lij      $01
3135: 1B           exbd
3136: F1 25        cal      $1125
3138: F1 5E        cal      $115E
313A: D6 04        tsid     $04
313C: 28 12        jrnzp    $314F
313E: 91           lp       $11
313F: 62 20        tsim     $20
3141: 38 0D        jrzp     $314F
3143: 10 C6 D9     lidp     $C6D9
3146: D5 20        orid     $20
3148: 10 F8 A8     lidp     $F8A8
314B: B0           lp       $30
314C: 00 07        lii      $07
314E: 19           exwd
314F: 78 7E 24     call     $7E24
3152: F1 44        cal      $1144
3154: D1           rc
3155: 90           lp       $10
3156: 62 01        tsim     $01
3158: 28 02        jrnzp    $315B
315A: 37           rtn
315B: E2 06        cal      $0206
315D: 79 5C 03     jp       $5C03
3160: 10 C6 E3     lidp     $C6E3
3163: 86           lp       $06
3164: 1A           mvbd
3165: 07           dy
3166: 02 FF        lia      $FF
3168: 26           iys
3169: DA           exab
316A: 37           rtn
316B: 10 C6 E1     lidp     $C6E1
316E: 86           lp       $06
316F: 1A           mvbd
3170: 06           iy
3171: 10 C6 E3     lidp     $C6E3
3174: 86           lp       $06
3175: 1B           exbd
3176: 11 E3        lidl     $E3
3178: 86           lp       $06
3179: 1A           mvbd
317A: 10 C6 D9     lidp     $C6D9
317D: D4 DF        anid     $DF
317F: 37           rtn
3180: 78 72 8C     call     $728C
3183: 78 72 CF     call     $72CF
3186: 78 72 CF     call     $72CF
3189: 78 72 CF     call     $72CF
318C: 78 72 CF     call     $72CF
318F: 8C           lp       $0C
3190: 60 00        anim     $00
3192: 78 71 AA     call     $71AA
3195: 8C           lp       $0C
3196: DB           exam
3197: 78 72 8C     call     $728C
319A: 78 72 CF     call     $72CF
319D: 78 72 CF     call     $72CF
31A0: 78 72 CF     call     $72CF
31A3: 78 72 CF     call     $72CF
31A6: 78 71 AA     call     $71AA
31A9: 37           rtn
31AA: 02 03        lia      $03
31AC: DA           exab
31AD: 8C           lp       $0C
31AE: 59           ldm
31AF: A0           lp       $20
31B0: 63 06        cpim     $06
31B2: 2A 04        jrncp    $31B7
31B4: D1           rc
31B5: 2C 02        jrp      $31B8
31B7: D0           sc
31B8: D2           sr
31B9: 50           incp
31BA: C3           decb
31BB: 2B 0C        jrncm    $31B0
31BD: 37           rtn
31BE: 34           push
31BF: F1 5E        cal      $115E
31C1: D6 04        tsid     $04
31C3: 28 31        jrnzp    $31F5
31C5: 10 C6 FC     lidp     $C6FC
31C8: 57           ldd
31C9: 86           lp       $06
31CA: C7           cpma
31CB: 28 1B        jrnzp    $31E7
31CD: 11 FD        lidl     $FD
31CF: 57           ldd
31D0: 87           lp       $07
31D1: C7           cpma
31D2: 28 14        jrnzp    $31E7
31D4: 02 D0        lia      $D0
31D6: 10 C6 FC     lidp     $C6FC
31D9: 52           std
31DA: 11 CE        lidl     $CE
31DC: 52           std
31DD: 02 C5        lia      $C5
31DF: 11 FD        lidl     $FD
31E1: 52           std
31E2: 11 CF        lidl     $CF
31E4: 52           std
31E5: 2C 0B        jrp      $31F1
31E7: 86           lp       $06
31E8: 63 CF        cpim     $CF
31EA: 28 06        jrnzp    $31F1
31EC: 87           lp       $07
31ED: 63 C5        cpim     $C5
31EF: 38 1D        jrzp     $320D
31F1: 5B           pop
31F2: 26           iys
31F3: D1           rc
31F4: 37           rtn
31F5: F1 03        cal      $1103
31F7: 03 00        lib      $00
31F9: 02 30        lia      $30
31FB: 84           lp       $04
31FC: 14           adb
31FD: 13 06        liq      $06
31FF: 82           lp       $02
3200: 0A           mvb
3201: 84           lp       $04
3202: 15           sbb
3203: 29 13        jrnzm    $31F1
3205: F1 03        cal      $1103
3207: 04           ix
3208: 00 2F        lii      $2F
320A: 02 00        lia      $00
320C: 1F           fild
320D: 5B           pop
320E: D0           sc
320F: 37           rtn
3210: 02 7A        lia      $7A
3212: F1 66        cal      $1166
3214: D6 40        tsid     $40
3216: 38 05        jrzp     $321C
3218: D4 BF        anid     $BF
321A: 02 7C        lia      $7C
321C: 78 7D 6F     call     $7D6F
321F: 3A 38        jrcp     $3258
3221: F1 5E        cal      $115E
3223: D6 04        tsid     $04
3225: 28 07        jrnzp    $322D
3227: 78 71 6B     call     $716B
322A: 07           dy
322B: 2C 04        jrp      $3230
322D: 86           lp       $06
322E: F1 04        cal      $1104
3230: 89           lp       $09
3231: 02 09        lia      $09
3233: DB           exam
3234: 8B           lp       $0B
3235: 60 00        anim     $00
3237: 88           lp       $08
3238: 02 07        lia      $07
323A: DB           exam
323B: 78 7C 3E     call     $7C3E
323E: 78 6F 0B     call     $6F0B
3241: 67 0D        cpia     $0D
3243: 38 28        jrzp     $326C
3245: 78 71 BE     call     $71BE
3248: 2A 15        jrncp    $325E
324A: 03 06        lib      $06
324C: 78 71 60     call     $7160
324F: 94           lp       $14
3250: DB           exam
3251: F1 25        cal      $1125
3253: 78 7E 24     call     $7E24
3256: F1 44        cal      $1144
3258: F1 66        cal      $1166
325A: D4 BF        anid     $BF
325C: D0           sc
325D: 37           rtn
325E: 49           deck
325F: 2B 25        jrncm    $323B
3261: 78 7C 3E     call     $7C3E
3264: 8B           lp       $0B
3265: C7           cpma
3266: 38 20        jrzp     $3287
3268: 03 08        lib      $08
326A: 2D 1F        jrm      $324C
326C: 02 08        lia      $08
326E: 03 00        lib      $00
3270: 86           lp       $06
3271: 15           sbb
3272: 13 06        liq      $06
3274: 84           lp       $04
3275: 0A           mvb
3276: 24           ixl
3277: 91           lp       $11
3278: 60 DF        anim     $DF
327A: 67 F5        cpia     $F5
327C: 28 07        jrnzp    $3284
327E: 61 20        orim     $20
3280: 00 07        lii      $07
3282: B0           lp       $30
3283: 18           mvwd
3284: 79 71 22     jp       $7122
3287: C9           decl
3288: 3B 59        jrcm     $3230
328A: 2D 54        jrm      $3237
328C: 00 FF        lii      $FF
328E: 6B 08        test     $08
3290: 28 38        jrnzp    $32C9
3292: 4F           waiti
3293: 7E 72 8C     jpz      $728C
3296: CE           nopt
3297: CE           nopt
3298: 6B 08        test     $08
329A: 28 2E        jrnzp    $32C9
329C: 80           lp       $00
329D: 6F           ???
329E: 4F           waiti
329F: 20           ldp
32A0: 67 09        cpia     $09
32A2: 7F 72 98     jpc      $7298
32A5: 4E 02        wait     $02
32A7: 80           lp       $00
32A8: 6F           ???
32A9: 4F           waiti
32AA: 20           ldp
32AB: 67 09        cpia     $09
32AD: 7F 72 98     jpc      $7298
32B0: 4E 02        wait     $02
32B2: 80           lp       $00
32B3: 6F           ???
32B4: 4F           waiti
32B5: 20           ldp
32B6: 67 09        cpia     $09
32B8: 7F 72 98     jpc      $7298
32BB: 00 03        lii      $03
32BD: 02 00        lia      $00
32BF: A0           lp       $20
32C0: 1E           film
32C1: A0           lp       $20
32C2: 00 12        lii      $12
32C4: 02 01        lia      $01
32C6: 4E 28        wait     $28
32C8: 37           rtn
32C9: 79 7D F6     jp       $7DF6
32CC: 41           deci
32CD: 3A 12        jrcp     $32E0
32CF: 6B 80        test     $80
32D1: 39 06        jrzm     $32CC
32D3: 44           adm
32D4: 41           deci
32D5: 3A 0A        jrcp     $32E0
32D7: 6B 80        test     $80
32D9: 39 0E        jrzm     $32CC
32DB: 41           deci
32DC: 2B 06        jrncm    $32D7
32DE: CE           nopt
32DF: CE           nopt
32E0: 50           incp
32E1: 00 12        lii      $12
32E3: 4D           nopw
32E4: 37           rtn
32E5: 78 7E 0C     call     $7E0C
32E8: 12 5F        lip      $5F
32EA: 60 01        anim     $01
32EC: 61 70        orim     $70
32EE: DF           outc
32EF: 00 FF        lii      $FF
32F1: 6B 08        test     $08
32F3: 28 16        jrnzp    $330A
32F5: 03 80        lib      $80
32F7: 4F           waiti
32F8: 39 0A        jrzm     $32EF
32FA: 4E 02        wait     $02
32FC: C3           decb
32FD: 3A 15        jrcp     $3313
32FF: 12 7D        lip      $7D
3301: 6F           ???
3302: 4F           waiti
3303: 20           ldp
3304: 67 07        cpia     $07
3306: 3B 0B        jrcm     $32FC
3308: 2D 1A        jrm      $32EF
330A: 4E 04        wait     $04
330C: 6B 08        test     $08
330E: 39 1A        jrzm     $32F5
3310: 79 7D F6     jp       $7DF6
3313: 78 72 8C     call     $728C
3316: 78 72 CF     call     $72CF
3319: 78 72 CF     call     $72CF
331C: 78 72 CF     call     $72CF
331F: 78 72 CF     call     $72CF
3322: 8C           lp       $0C
3323: 60 00        anim     $00
3325: 78 71 AA     call     $71AA
3328: 58           swp
3329: 37           rtn
332A: 78 72 E5     call     $72E5
332D: 67 02        cpia     $02
332F: 28 11        jrnzp    $3341
3331: 78 73 13     call     $7313
3334: 67 01        cpia     $01
3336: 38 17        jrzp     $334E
3338: 67 00        cpia     $00
333A: 29 11        jrnzm    $332A
333C: 91           lp       $11
333D: 60 DF        anim     $DF
333F: 2C 11        jrp      $3351
3341: 67 08        cpia     $08
3343: 29 1A        jrnzm    $332A
3345: 78 73 13     call     $7313
3348: 67 00        cpia     $00
334A: 29 21        jrnzm    $332A
334C: 2D 11        jrm      $333C
334E: 91           lp       $11
334F: 61 20        orim     $20
3351: 78 73 57     call     $7357
3354: 3B 2B        jrcm     $332A
3356: 37           rtn
3357: 90           lp       $10
3358: 60 3F        anim     $3F
335A: 61 40        orim     $40
335C: 78 79 C1     call     $79C1
335F: 2A 0B        jrncp    $336B
3361: 91           lp       $11
3362: 62 10        tsim     $10
3364: 38 08        jrzp     $336D
3366: 78 6B 7F     call     $6B7F
3369: 3A 08        jrcp     $3372
336B: D0           sc
336C: 37           rtn
336D: B0           lp       $30
336E: 63 F5        cpim     $F5
3370: 29 06        jrnzm    $336B
3372: 78 71 80     call     $7180
3375: 58           swp
3376: 8B           lp       $0B
3377: C7           cpma
3378: 29 0E        jrnzm    $336B
337A: 10 F8 00     lidp     $F800
337D: 02 00        lia      $00
337F: 00 3B        lii      $3B
3381: 1F           fild
3382: 00 13        lii      $13
3384: 11 68        lidl     $68
3386: 1F           fild
3387: 10 44 D7     lidp     $44D7
338A: A0           lp       $20
338B: 00 04        lii      $04
338D: 18           mvwd
338E: 10 F8 68     lidp     $F868
3391: A0           lp       $20
3392: 19           exwd
3393: 12 5F        lip      $5F
3395: 61 01        orim     $01
3397: DF           outc
3398: 10 F8 3D     lidp     $F83D
339B: D5 01        orid     $01
339D: D1           rc
339E: 37           rtn
339F: F1 51        cal      $1151
33A1: 91           lp       $11
33A2: 60 EF        anim     $EF
33A4: 90           lp       $10
33A5: 61 01        orim     $01
33A7: 60 FD        anim     $FD
33A9: 24           ixl
33AA: 67 12        cpia     $12
33AC: 38 09        jrzp     $33B6
33AE: 78 6B 5B     call     $6B5B
33B1: 2A 19        jrncp    $33CB
33B3: 05           dx
33B4: 2C 1E        jrp      $33D3
33B6: 78 77 38     call     $7738
33B9: 2A 07        jrncp    $33C1
33BB: 94           lp       $14
33BC: 02 01        lia      $01
33BE: DB           exam
33BF: D0           sc
33C0: 37           rtn
33C1: E2 21        cal      $0221
33C3: 91           lp       $11
33C4: 61 10        orim     $10
33C6: 78 6B 5A     call     $6B5A
33C9: 3A 05        jrcp     $33CF
33CB: E0 9F        cal      $009F
33CD: 2C 14        jrp      $33E2
33CF: 67 1B        cpia     $1B
33D1: 29 17        jrnzm    $33BB
33D3: 78 6D BB     call     $6DBB
33D6: F2 05        cal      $1205
33D8: 3B 19        jrcm     $33C0
33DA: 78 6D C1     call     $6DC1
33DD: 78 6B 5A     call     $6B5A
33E0: 3B 26        jrcm     $33BB
33E2: E1 F6        cal      $01F6
33E4: 79 70 A1     jp       $70A1
33E7: 24           ixl
33E8: 67 12        cpia     $12
33EA: 28 0C        jrnzp    $33F7
33EC: 78 77 38     call     $7738
33EF: 3B 35        jrcm     $33BB
33F1: E2 21        cal      $0221
33F3: 91           lp       $11
33F4: 61 10        orim     $10
33F6: 24           ixl
33F7: 78 6B 5B     call     $6B5B
33FA: 3B 40        jrcm     $33BB
33FC: 78 73 2A     call     $732A
33FF: 91           lp       $11
3400: 62 20        tsim     $20
3402: 38 07        jrzp     $340A
3404: 78 79 BE     call     $79BE
3407: 78 71 80     call     $7180
340A: 78 6E 90     call     $6E90
340D: 89           lp       $09
340E: 02 09        lia      $09
3410: DB           exam
3411: 8B           lp       $0B
3412: 60 00        anim     $00
3414: 88           lp       $08
3415: 02 07        lia      $07
3417: DB           exam
3418: 78 71 80     call     $7180
341B: 78 6F 0B     call     $6F0B
341E: 58           swp
341F: 67 F0        cpia     $F0
3421: 38 17        jrzp     $3439
3423: 83           lp       $03
3424: DB           exam
3425: 24           ixl
3426: C7           cpma
3427: 28 2F        jrnzp    $3457
3429: 49           deck
342A: 2B 13        jrncm    $3418
342C: 78 71 80     call     $7180
342F: 58           swp
3430: 8B           lp       $0B
3431: C7           cpma
3432: 28 24        jrnzp    $3457
3434: C9           decl
3435: 2B 22        jrncm    $3414
3437: 2D 2B        jrm      $340D
3439: F1 5E        cal      $115E
343B: D6 04        tsid     $04
343D: 38 0D        jrzp     $344B
343F: 10 C6 C4     lidp     $C6C4
3442: 57           ldd
3443: 74 30        adia     $30
3445: 84           lp       $04
3446: C7           cpma
3447: 28 0F        jrnzp    $3457
3449: 2C 06        jrp      $3450
344B: 24           ixl
344C: 67 FF        cpia     $FF
344E: 28 08        jrnzp    $3457
3450: 78 7E 24     call     $7E24
3453: F1 25        cal      $1125
3455: D1           rc
3456: 37           rtn
3457: 79 70 4E     jp       $704E
345A: F1 51        cal      $1151
345C: F1 47        cal      $1147
345E: 95           lp       $15
345F: 60 BF        anim     $BF
3461: 90           lp       $10
3462: 60 FB        anim     $FB
3464: 24           ixl
3465: 67 12        cpia     $12
3467: 28 26        jrnzp    $348E
3469: 95           lp       $15
346A: 62 40        tsim     $40
346C: 7C 77 70     jpnz     $7770
346F: F1 66        cal      $1166
3471: D6 10        tsid     $10
3473: 28 06        jrnzp    $347A
3475: 78 77 38     call     $7738
3478: 2A 07        jrncp    $3480
347A: 94           lp       $14
347B: 02 01        lia      $01
347D: DB           exam
347E: D0           sc
347F: 37           rtn
3480: E1 F3        cal      $01F3
3482: 24           ixl
3483: 67 1C        cpia     $1C
3485: 38 D2        jrzp     $3558
3487: 78 6B 5B     call     $6B5B
348A: 3B 11        jrcm     $347A
348C: 2C 06        jrp      $3493
348E: 78 6B 5B     call     $6B5B
3491: 3A C5        jrcp     $3557
3493: 89           lp       $09
3494: 02 19        lia      $19
3496: DB           exam
3497: 02 98        lia      $98
3499: 95           lp       $15
349A: 62 40        tsim     $40
349C: 7C 77 89     jpnz     $7789
349F: 84           lp       $04
34A0: DB           exam
34A1: 85           lp       $05
34A2: 02 C6        lia      $C6
34A4: DB           exam
34A5: F1 66        cal      $1166
34A7: D6 10        tsid     $10
34A9: 38 10        jrzp     $34BA
34AB: 78 76 EA     call     $76EA
34AE: 2A 61        jrncp    $3510
34B0: F1 44        cal      $1144
34B2: F1 25        cal      $1125
34B4: 94           lp       $14
34B5: 02 08        lia      $08
34B7: DB           exam
34B8: D0           sc
34B9: 37           rtn
34BA: 78 76 B7     call     $76B7
34BD: 78 77 0B     call     $770B
34C0: C9           decl
34C1: 3A 09        jrcp     $34CB
34C3: 6B 08        test     $08
34C5: 28 1D        jrnzp    $34E3
34C7: F1 0B        cal      $110B
34C9: 2D 0D        jrm      $34BD
34CB: 10 C6 D8     lidp     $C6D8
34CE: D6 08        tsid     $08
34D0: 38 15        jrzp     $34E6
34D2: F1 0B        cal      $110B
34D4: 78 77 22     call     $7722
34D7: 78 77 0B     call     $770B
34DA: F1 0B        cal      $110B
34DC: C9           decl
34DD: 3A 0B        jrcp     $34E9
34DF: 6B 08        test     $08
34E1: 39 0B        jrzm     $34D7
34E3: 79 7D F6     jp       $7DF6
34E6: 78 77 5D     call     $775D
34E9: 02 0F        lia      $0F
34EB: 78 6F 18     call     $6F18
34EE: F1 0B        cal      $110B
34F0: F1 0F        cal      $110F
34F2: F1 25        cal      $1125
34F4: 24           ixl
34F5: 67 1B        cpia     $1B
34F7: 28 09        jrnzp    $3501
34F9: 90           lp       $10
34FA: 61 04        orim     $04
34FC: 78 6F 9E     call     $6F9E
34FF: 2C 58        jrp      $3558
3501: 78 6B 5B     call     $6B5B
3504: 3A 04        jrcp     $3509
3506: 79 78 D7     jp       $78D7
3509: F1 44        cal      $1144
350B: 78 7E 24     call     $7E24
350E: 2D 95        jrm      $347A
3510: 88           lp       $08
3511: 02 07        lia      $07
3513: DB           exam
3514: 25           dxl
3515: 78 7B 91     call     $7B91
3518: 49           deck
3519: 2B 06        jrncm    $3514
351B: C9           decl
351C: 2B 0D        jrncm    $3510
351E: 10 C6 D8     lidp     $C6D8
3521: D6 08        tsid     $08
3523: 38 12        jrzp     $3536
3525: 78 77 22     call     $7722
3528: 88           lp       $08
3529: 02 07        lia      $07
352B: DB           exam
352C: 25           dxl
352D: 78 7B 91     call     $7B91
3530: 49           deck
3531: 2B 06        jrncm    $352C
3533: C9           decl
3534: 2B 0D        jrncm    $3528
3536: 02 0F        lia      $0F
3538: 78 7B 91     call     $7B91
353B: F1 25        cal      $1125
353D: 24           ixl
353E: 67 1B        cpia     $1B
3540: 28 06        jrnzp    $3547
3542: 90           lp       $10
3543: 61 04        orim     $04
3545: 2C 12        jrp      $3558
3547: 78 6B 5B     call     $6B5B
354A: 3B 42        jrcm     $3509
354C: 02 0D        lia      $0D
354E: 78 7B 91     call     $7B91
3551: 78 7C 02     call     $7C02
3554: 79 78 DA     jp       $78DA
3557: 05           dx
3558: 78 6D BB     call     $6DBB
355B: F6 C0        cal      $16C0
355D: 2A 08        jrncp    $3566
355F: 78 7E 24     call     $7E24
3562: F1 44        cal      $1144
3564: D0           sc
3565: 37           rtn
3566: 93           lp       $13
3567: 62 12        tsim     $12
3569: 38 8B        jrzp     $35F5
356B: 62 10        tsim     $10
356D: 28 2C        jrnzp    $359A
356F: F1 77        cal      $1177
3571: F5 A3        cal      $15A3
3573: F1 72        cal      $1172
3575: 3B 17        jrcm     $355F
3577: F0 DC        cal      $10DC
3579: 93           lp       $13
357A: 60 7F        anim     $7F
357C: F7 37        cal      $1737
357E: 3B 20        jrcm     $355F
3580: A8           lp       $28
3581: 63 1B        cpim     $1B
3583: 3A 16        jrcp     $359A
3585: 10 C6 D8     lidp     $C6D8
3588: D6 08        tsid     $08
358A: 38 0A        jrzp     $3595
358C: 11 DE        lidl     $DE
358E: 57           ldd
358F: A8           lp       $28
3590: C7           cpma
3591: 38 08        jrzp     $359A
3593: 3A 06        jrcp     $359A
3595: 95           lp       $15
3596: 62 40        tsim     $40
3598: 38 2A        jrzp     $35C3
359A: 93           lp       $13
359B: 60 9F        anim     $9F
359D: FA 0E        cal      $1A0E
359F: 3B 41        jrcm     $355F
35A1: 78 6D C1     call     $6DC1
35A4: F1 18        cal      $1118
35A6: A8           lp       $28
35A7: 63 1A        cpim     $1A
35A9: 2A 1F        jrncp    $35C9
35AB: 89           lp       $09
35AC: 02 19        lia      $19
35AE: DB           exam
35AF: A8           lp       $28
35B0: 59           ldm
35B1: 89           lp       $09
35B2: 45           sbm
35B3: 95           lp       $15
35B4: 62 40        tsim     $40
35B6: 7C 78 F5     jpnz     $78F5
35B9: 84           lp       $04
35BA: 13 06        liq      $06
35BC: 01 01        lij      $01
35BE: 0A           mvb
35BF: 04           ix
35C0: 79 74 A5     jp       $74A5
35C3: 02 03        lia      $03
35C5: 94           lp       $14
35C6: DB           exam
35C7: 2D 69        jrm      $355F
35C9: 10 C6 DE     lidp     $C6DE
35CC: 57           ldd
35CD: 89           lp       $09
35CE: DB           exam
35CF: A8           lp       $28
35D0: 59           ldm
35D1: 89           lp       $09
35D2: 45           sbm
35D3: 95           lp       $15
35D4: 62 40        tsim     $40
35D6: 7C 78 F9     jpnz     $78F9
35D9: 84           lp       $04
35DA: 13 06        liq      $06
35DC: 01 01        lij      $01
35DE: 0A           mvb
35DF: 04           ix
35E0: F1 66        cal      $1166
35E2: D6 10        tsid     $10
35E4: 28 07        jrnzp    $35EC
35E6: 78 76 B7     call     $76B7
35E9: 79 74 D7     jp       $74D7
35EC: 78 76 EA     call     $76EA
35EF: 7F 74 B0     jpc      $74B0
35F2: 79 75 28     jp       $7528
35F5: 62 08        tsim     $08
35F7: 39 EF        jrzm     $3509
35F9: 24           ixl
35FA: 67 37        cpia     $37
35FC: 29 F4        jrnzm    $3509
35FE: 24           ixl
35FF: 67 31        cpia     $31
3601: 29 F9        jrnzm    $3509
3603: F1 18        cal      $1118
3605: F8 72        cal      $1872
3607: 2A 05        jrncp    $360D
3609: F1 25        cal      $1125
360B: 2D AD        jrm      $355F
360D: 78 6D C1     call     $6DC1
3610: 95           lp       $15
3611: 62 40        tsim     $40
3613: 7C 79 18     jpnz     $7918
3616: F1 66        cal      $1166
3618: D6 10        tsid     $10
361A: 28 73        jrnzp    $368E
361C: 90           lp       $10
361D: 62 04        tsim     $04
361F: 28 13        jrnzp    $3633
3621: 78 7E 0C     call     $7E0C
3624: 78 6F 81     call     $6F81
3627: 02 42        lia      $42
3629: 78 6F 18     call     $6F18
362C: F1 0B        cal      $110B
362E: 78 6F 55     call     $6F55
3631: F1 0B        cal      $110B
3633: 78 76 70     call     $7670
3636: 24           ixl
3637: 78 6F 0B     call     $6F0B
363A: 78 6F 18     call     $6F18
363D: F1 0B        cal      $110B
363F: 41           deci
3640: 2B 0B        jrncm    $3636
3642: 78 6F 7A     call     $6F7A
3645: F1 0B        cal      $110B
3647: 00 07        lii      $07
3649: 8B           lp       $0B
364A: 60 00        anim     $00
364C: 24           ixl
364D: 78 6F 0B     call     $6F0B
3650: 78 6F 18     call     $6F18
3653: F1 0B        cal      $110B
3655: 49           deck
3656: 2A 0A        jrncp    $3661
3658: C9           decl
3659: 2A 07        jrncp    $3661
365B: 78 6F 7A     call     $6F7A
365E: 79 74 EE     jp       $74EE
3661: 41           deci
3662: 2B 17        jrncm    $364C
3664: 78 6F 7A     call     $6F7A
3667: F1 0B        cal      $110B
3669: 6B 08        test     $08
366B: 39 25        jrzm     $3647
366D: 79 7D F6     jp       $7DF6
3670: 24           ixl
3671: 89           lp       $09
3672: DB           exam
3673: 24           ixl
3674: 88           lp       $08
3675: DB           exam
3676: 03 00        lib      $00
3678: 02 04        lia      $04
367A: 15           sbb
367B: 05           dx
367C: 05           dx
367D: 00 04        lii      $04
367F: 8B           lp       $0B
3680: 60 00        anim     $00
3682: 37           rtn
3683: 10 C6 FC     lidp     $C6FC
3686: 82           lp       $02
3687: 1A           mvbd
3688: 11 CE        lidl     $CE
368A: 1A           mvbd
368B: 84           lp       $04
368C: 15           sbb
368D: 37           rtn
368E: 90           lp       $10
368F: 62 04        tsim     $04
3691: 28 09        jrnzp    $369B
3693: 02 76        lia      $76
3695: 78 7D 6F     call     $7D6F
3698: 7F 74 B0     jpc      $74B0
369B: 78 76 70     call     $7670
369E: 24           ixl
369F: 78 7B 91     call     $7B91
36A2: 41           deci
36A3: 2B 06        jrncm    $369E
36A5: 00 07        lii      $07
36A7: 24           ixl
36A8: 78 7B 91     call     $7B91
36AB: 49           deck
36AC: 2A 05        jrncp    $36B2
36AE: C9           decl
36AF: 7F 75 3B     jpc      $753B
36B2: 41           deci
36B3: 2B 0D        jrncm    $36A7
36B5: 2D 11        jrm      $36A5
36B7: 90           lp       $10
36B8: 62 04        tsim     $04
36BA: 28 13        jrnzp    $36CE
36BC: 78 7E 0C     call     $7E0C
36BF: 78 6F 81     call     $6F81
36C2: 02 42        lia      $42
36C4: 78 6F 18     call     $6F18
36C7: F1 0B        cal      $110B
36C9: 78 6F 55     call     $6F55
36CC: F1 0B        cal      $110B
36CE: 02 08        lia      $08
36D0: 03 00        lib      $00
36D2: 84           lp       $04
36D3: 14           adb
36D4: 00 04        lii      $04
36D6: 02 FE        lia      $FE
36D8: 78 6F 18     call     $6F18
36DB: F1 0B        cal      $110B
36DD: 02 00        lia      $00
36DF: 41           deci
36E0: 2B 09        jrncm    $36D8
36E2: 02 D1        lia      $D1
36E4: 78 6F 18     call     $6F18
36E7: F1 0B        cal      $110B
36E9: 37           rtn
36EA: 90           lp       $10
36EB: 62 04        tsim     $04
36ED: 28 09        jrnzp    $36F7
36EF: 02 76        lia      $76
36F1: 78 7D 6F     call     $7D6F
36F4: 2A 02        jrncp    $36F7
36F6: 37           rtn
36F7: 02 08        lia      $08
36F9: 03 00        lib      $00
36FB: 84           lp       $04
36FC: 14           adb
36FD: 00 04        lii      $04
36FF: 02 FE        lia      $FE
3701: 78 7B 91     call     $7B91
3704: 02 00        lia      $00
3706: 41           deci
3707: 2B 07        jrncm    $3701
3709: D1           rc
370A: 37           rtn
370B: 8B           lp       $0B
370C: 60 00        anim     $00
370E: 88           lp       $08
370F: 02 07        lia      $07
3711: DB           exam
3712: 25           dxl
3713: 78 6F 0B     call     $6F0B
3716: 78 6F 18     call     $6F18
3719: F1 0B        cal      $110B
371B: 49           deck
371C: 2B 0B        jrncm    $3712
371E: 78 6F 7A     call     $6F7A
3721: 37           rtn
3722: 10 C6 DE     lidp     $C6DE
3725: 57           ldd
3726: 89           lp       $09
3727: DB           exam
3728: 71 1B        sbim     $1B
372A: 10 C6 CE     lidp     $C6CE
372D: 84           lp       $04
372E: 01 01        lij      $01
3730: 1A           mvbd
3731: 24           ixl
3732: DA           exab
3733: 24           ixl
3734: 84           lp       $04
3735: 14           adb
3736: 04           ix
3737: 37           rtn
3738: E0 9F        cal      $009F
373A: 88           lp       $08
373B: 02 06        lia      $06
373D: DB           exam
373E: A0           lp       $20
373F: 02 F5        lia      $F5
3741: DB           exam
3742: 50           incp
3743: 24           ixl
3744: 67 12        cpia     $12
3746: 38 14        jrzp     $375B
3748: 67 00        cpia     $00
374A: 38 0F        jrzp     $375A
374C: DB           exam
374D: 50           incp
374E: 49           deck
374F: 2B 0D        jrncm    $3743
3751: 24           ixl
3752: 67 12        cpia     $12
3754: 38 06        jrzp     $375B
3756: 67 00        cpia     $00
3758: 29 08        jrnzm    $3751
375A: 05           dx
375B: D1           rc
375C: 37           rtn
375D: 02 31        lia      $31
375F: F1 0F        cal      $110F
3761: 43           deca
3762: 2B 04        jrncm    $375F
3764: 37           rtn
3765: F1 51        cal      $1151
3767: 91           lp       $11
3768: 60 EF        anim     $EF
376A: 95           lp       $15
376B: 61 40        orim     $40
376D: 79 74 61     jp       $7461
3770: F1 66        cal      $1166
3772: D6 08        tsid     $08
3774: 28 06        jrnzp    $377B
3776: 78 77 38     call     $7738
3779: 2A 07        jrncp    $3781
377B: 94           lp       $14
377C: 02 01        lia      $01
377E: DB           exam
377F: D0           sc
3780: 37           rtn
3781: E1 F6        cal      $01F6
3783: 91           lp       $11
3784: 61 10        orim     $10
3786: 79 74 82     jp       $7482
3789: 86           lp       $06
378A: DB           exam
378B: 87           lp       $07
378C: 02 C6        lia      $C6
378E: DB           exam
378F: 78 79 61     call     $7961
3792: 3A 1C        jrcp     $37AF
3794: 8B           lp       $0B
3795: C7           cpma
3796: 38 0E        jrzp     $37A5
3798: 02 08        lia      $08
379A: 94           lp       $14
379B: DB           exam
379C: 78 7E 24     call     $7E24
379F: F1 44        cal      $1144
37A1: F1 25        cal      $1125
37A3: D0           sc
37A4: 37           rtn
37A5: E0 A9        cal      $00A9
37A7: A8           lp       $28
37A8: 61 FE        orim     $FE
37AA: 78 6B 7F     call     $6B7F
37AD: 2B 16        jrncm    $3798
37AF: 02 08        lia      $08
37B1: 03 00        lib      $00
37B3: 86           lp       $06
37B4: 14           adb
37B5: 8B           lp       $0B
37B6: 60 00        anim     $00
37B8: 88           lp       $08
37B9: 02 07        lia      $07
37BB: DB           exam
37BC: 78 79 B4     call     $79B4
37BF: 67 0F        cpia     $0F
37C1: 38 F0        jrzp     $38B2
37C3: 78 6F 0B     call     $6F0B
37C6: 27           dys
37C7: 49           deck
37C8: 2B 0D        jrncm    $37BC
37CA: 78 78 E8     call     $78E8
37CD: 8B           lp       $0B
37CE: C7           cpma
37CF: 29 38        jrnzm    $3798
37D1: C9           decl
37D2: 2B 1E        jrncm    $37B5
37D4: 10 C6 D8     lidp     $C6D8
37D7: D6 08        tsid     $08
37D9: 38 0C        jrzp     $37E6
37DB: 78 77 22     call     $7722
37DE: 13 04        liq      $04
37E0: 86           lp       $06
37E1: 01 01        lij      $01
37E3: 0A           mvb
37E4: 2C 11        jrp      $37F6
37E6: 10 C6 FC     lidp     $C6FC
37E9: 86           lp       $06
37EA: 01 01        lij      $01
37EC: 1A           mvbd
37ED: 11 DE        lidl     $DE
37EF: 02 1A        lia      $1A
37F1: 52           std
37F2: 89           lp       $09
37F3: 02 FF        lia      $FF
37F5: DB           exam
37F6: 90           lp       $10
37F7: 60 EF        anim     $EF
37F9: 8B           lp       $0B
37FA: 60 00        anim     $00
37FC: 88           lp       $08
37FD: 02 07        lia      $07
37FF: DB           exam
3800: 78 79 B4     call     $79B4
3803: 67 0F        cpia     $0F
3805: 38 4C        jrzp     $3852
3807: 78 6F 0B     call     $6F0B
380A: 27           dys
380B: 10 C6 E3     lidp     $C6E3
380E: 57           ldd
380F: 86           lp       $06
3810: C7           cpma
3811: 28 0D        jrnzp    $381F
3813: 10 C6 E4     lidp     $C6E4
3816: 57           ldd
3817: 87           lp       $07
3818: C7           cpma
3819: 28 05        jrnzp    $381F
381B: 02 06        lia      $06
381D: 2D 84        jrm      $379A
381F: 49           deck
3820: 2B 21        jrncm    $3800
3822: 90           lp       $10
3823: 61 10        orim     $10
3825: 78 78 E8     call     $78E8
3828: 8B           lp       $0B
3829: C7           cpma
382A: 29 93        jrnzm    $3798
382C: C9           decl
382D: 2B 35        jrncm    $37F9
382F: 78 76 83     call     $7683
3832: 28 07        jrnzp    $383A
3834: 11 D8        lidl     $D8
3836: D4 F7        anid     $F7
3838: 2D 40        jrm      $37F9
383A: 78 79 B4     call     $79B4
383D: 67 0F        cpia     $0F
383F: 38 72        jrzp     $38B2
3841: 90           lp       $10
3842: 62 08        tsim     $08
3844: 28 6D        jrnzp    $38B2
3846: 6B 08        test     $08
3848: 39 0F        jrzm     $383A
384A: 78 7E 24     call     $7E24
384D: F1 44        cal      $1144
384F: 79 7D F9     jp       $7DF9
3852: 88           lp       $08
3853: 63 07        cpim     $07
3855: 29 BE        jrnzm    $3798
3857: 10 C6 D8     lidp     $C6D8
385A: D6 08        tsid     $08
385C: 28 55        jrnzp    $38B2
385E: 90           lp       $10
385F: 62 10        tsim     $10
3861: 38 50        jrzp     $38B2
3863: 60 EF        anim     $EF
3865: 11 FC        lidl     $FC
3867: 84           lp       $04
3868: 1A           mvbd
3869: 82           lp       $02
386A: 13 06        liq      $06
386C: 0A           mvb
386D: 15           sbb
386E: 3A 3E        jrcp     $38AD
3870: 02 08        lia      $08
3872: 27           dys
3873: 02 00        lia      $00
3875: 27           dys
3876: 27           dys
3877: 02 FF        lia      $FF
3879: 89           lp       $09
387A: DB           exam
387B: 45           sbm
387C: 10 C6 DE     lidp     $C6DE
387F: 57           ldd
3880: 44           adm
3881: 7F 75 C3     jpc      $75C3
3884: 59           ldm
3885: 52           std
3886: 75 1A        sbia     $1A
3888: DB           exam
3889: 02 00        lia      $00
388B: DB           exam
388C: 00 02        lii      $02
388E: D1           rc
388F: 5A           sl
3890: DB           exam
3891: 5A           sl
3892: DB           exam
3893: 41           deci
3894: 2B 07        jrncm    $388E
3896: 74 03        adia     $03
3898: 27           dys
3899: 02 00        lia      $00
389B: C4           adcm
389C: 59           ldm
389D: 27           dys
389E: 02 51        lia      $51
38A0: 27           dys
38A1: 84           lp       $04
38A2: 13 06        liq      $06
38A4: 0A           mvb
38A5: 84           lp       $04
38A6: 10 C6 FC     lidp     $C6FC
38A9: 1B           exbd
38AA: 11 CE        lidl     $CE
38AC: 1B           exbd
38AD: 10 C6 D8     lidp     $C6D8
38B0: D5 08        orid     $08
38B2: F1 25        cal      $1125
38B4: 24           ixl
38B5: 67 1B        cpia     $1B
38B7: 28 0D        jrnzp    $38C5
38B9: 90           lp       $10
38BA: 62 08        tsim     $08
38BC: 7C 77 98     jpnz     $7798
38BF: 90           lp       $10
38C0: 61 04        orim     $04
38C2: 79 75 58     jp       $7558
38C5: 78 6B 5B     call     $6B5B
38C8: 3A 17        jrcp     $38E0
38CA: F1 66        cal      $1166
38CC: D6 08        tsid     $08
38CE: 38 08        jrzp     $38D7
38D0: 78 7C 3E     call     $7C3E
38D3: 67 0D        cpia     $0D
38D5: 29 06        jrnzm    $38D0
38D7: 78 7E 24     call     $7E24
38DA: F1 44        cal      $1144
38DC: F1 25        cal      $1125
38DE: D1           rc
38DF: 37           rtn
38E0: 78 7E 24     call     $7E24
38E3: F1 44        cal      $1144
38E5: 79 77 7B     jp       $777B
38E8: 78 79 B4     call     $79B4
38EB: 01 01        lij      $01
38ED: F1 66        cal      $1166
38EF: D6 08        tsid     $08
38F1: 28 02        jrnzp    $38F4
38F3: 58           swp
38F4: 37           rtn
38F5: 06           iy
38F6: 79 77 8F     jp       $778F
38F9: 02 09        lia      $09
38FB: 03 00        lib      $00
38FD: 86           lp       $06
38FE: 14           adb
38FF: 78 79 61     call     $7961
3902: 3A 0F        jrcp     $3912
3904: 8B           lp       $0B
3905: C7           cpma
3906: 28 0E        jrnzp    $3915
3908: E0 A9        cal      $00A9
390A: A8           lp       $28
390B: 61 FE        orim     $FE
390D: 78 6B 7F     call     $6B7F
3910: 2A 04        jrncp    $3915
3912: 79 77 F6     jp       $77F6
3915: 79 77 98     jp       $7798
3918: 78 79 61     call     $7961
391B: 7F 77 9C     jpc      $779C
391E: 8B           lp       $0B
391F: C7           cpma
3920: 29 0C        jrnzm    $3915
3922: 78 76 70     call     $7670
3925: 04           ix
3926: E0 A9        cal      $00A9
3928: 00 04        lii      $04
392A: A8           lp       $28
392B: 18           mvwd
392C: 78 6B 7F     call     $6B7F
392F: 2B 1B        jrncm    $3915
3931: 04           ix
3932: 04           ix
3933: 04           ix
3934: 04           ix
3935: 86           lp       $06
3936: 13 04        liq      $04
3938: 0A           mvb
3939: 01 07        lij      $07
393B: 8B           lp       $0B
393C: 60 00        anim     $00
393E: 78 79 B4     call     $79B4
3941: 78 6F 0B     call     $6F0B
3944: 26           iys
3945: 49           deck
3946: 2A 04        jrncp    $394B
3948: C9           decl
3949: 3A 0D        jrcp     $3957
394B: C1           decj
394C: 2B 0F        jrncm    $393E
394E: 78 78 E8     call     $78E8
3951: 8B           lp       $0B
3952: C7           cpma
3953: 39 1B        jrzm     $3939
3955: 2D 41        jrm      $3915
3957: 78 78 E8     call     $78E8
395A: 8B           lp       $0B
395B: C7           cpma
395C: 29 48        jrnzm    $3915
395E: 79 78 B2     jp       $78B2
3961: F1 66        cal      $1166
3963: D6 08        tsid     $08
3965: 28 35        jrnzp    $399B
3967: 90           lp       $10
3968: 62 04        tsim     $04
396A: 28 41        jrnzp    $39AC
396C: E2 6A        cal      $026A
396E: 90           lp       $10
396F: 60 F7        anim     $F7
3971: 78 72 E5     call     $72E5
3974: 67 08        cpia     $08
3976: 28 0D        jrnzp    $3984
3978: 78 73 13     call     $7313
397B: 67 0F        cpia     $0F
397D: 29 10        jrnzm    $396E
397F: 90           lp       $10
3980: 61 08        orim     $08
3982: 2C 0C        jrp      $398F
3984: 67 02        cpia     $02
3986: 29 19        jrnzm    $396E
3988: 78 73 13     call     $7313
398B: 67 04        cpia     $04
398D: 29 20        jrnzm    $396E
398F: 78 73 57     call     $7357
3992: 3B 25        jrcm     $396E
3994: 90           lp       $10
3995: 62 08        tsim     $08
3997: 38 14        jrzp     $39AC
3999: D0           sc
399A: 37           rtn
399B: 90           lp       $10
399C: 60 F7        anim     $F7
399E: 62 04        tsim     $04
39A0: 28 0B        jrnzp    $39AC
39A2: 02 7B        lia      $7B
39A4: 78 7D 6F     call     $7D6F
39A7: 2A 04        jrncp    $39AC
39A9: 5B           pop
39AA: 5B           pop
39AB: 37           rtn
39AC: 78 79 C9     call     $79C9
39AF: 78 78 E8     call     $78E8
39B2: D1           rc
39B3: 37           rtn
39B4: F1 66        cal      $1166
39B6: D6 08        tsid     $08
39B8: 7C 7C 3E     jpnz     $7C3E
39BB: 79 71 80     jp       $7180
39BE: 90           lp       $10
39BF: 60 3F        anim     $3F
39C1: 8E           lp       $0E
39C2: 02 37        lia      $37
39C4: DB           exam
39C5: 02 07        lia      $07
39C7: 2C 0C        jrp      $39D4
39C9: E0 AF        cal      $00AF
39CB: 8E           lp       $0E
39CC: 02 30        lia      $30
39CE: DB           exam
39CF: 90           lp       $10
39D0: 61 80        orim     $80
39D2: 02 04        lia      $04
39D4: 88           lp       $08
39D5: DB           exam
39D6: 8B           lp       $0B
39D7: 60 00        anim     $00
39D9: 90           lp       $10
39DA: 62 80        tsim     $80
39DC: 38 06        jrzp     $39E3
39DE: 78 79 B4     call     $79B4
39E1: 2C 11        jrp      $39F3
39E3: 78 71 80     call     $7180
39E6: 90           lp       $10
39E7: 62 40        tsim     $40
39E9: 38 09        jrzp     $39F3
39EB: 66 F0        tsia     $F0
39ED: 28 05        jrnzp    $39F3
39EF: 66 FF        tsia     $FF
39F1: 29 40        jrnzm    $39B2
39F3: 78 6F 0B     call     $6F0B
39F6: 34           push
39F7: 8E           lp       $0E
39F8: 59           ldm
39F9: 30           stp
39FA: 5B           pop
39FB: DB           exam
39FC: 90           lp       $10
39FD: 62 80        tsim     $80
39FF: 38 06        jrzp     $3A06
3A01: 8E           lp       $0E
3A02: 70 01        adim     $01
3A04: 2C 04        jrp      $3A09
3A06: 8E           lp       $0E
3A07: 71 01        sbim     $01
3A09: 49           deck
3A0A: 2B 32        jrncm    $39D9
3A0C: 37           rtn
3A0D: F1 51        cal      $1151
3A0F: F1 5E        cal      $115E
3A11: D6 04        tsid     $04
3A13: 38 05        jrzp     $3A19
3A15: 02 01        lia      $01
3A17: 2C 91        jrp      $3AA9
3A19: 10 C6 BB     lidp     $C6BB
3A1C: D6 04        tsid     $04
3A1E: 7E 7B 66     jpz      $7B66
3A21: 11 D9        lidl     $D9
3A23: D6 20        tsid     $20
3A25: 7C 7B 66     jpnz     $7B66
3A28: 11 E1        lidl     $E1
3A2A: 88           lp       $08
3A2B: 1A           mvbd
3A2C: 02 01        lia      $01
3A2E: 03 00        lib      $00
3A30: 88           lp       $08
3A31: 14           adb
3A32: 82           lp       $02
3A33: 11 E3        lidl     $E3
3A35: 1A           mvbd
3A36: 88           lp       $08
3A37: 15           sbb
3A38: 7E 7B 66     jpz      $7B66
3A3B: 11 D7        lidl     $D7
3A3D: D5 04        orid     $04
3A3F: 11 D9        lidl     $D9
3A41: D5 08        orid     $08
3A43: 24           ixl
3A44: 67 00        cpia     $00
3A46: 28 4F        jrnzp    $3A96
3A48: 10 C6 E1     lidp     $C6E1
3A4B: 98           lp       $18
3A4C: 01 01        lij      $01
3A4E: 1A           mvbd
3A4F: 02 01        lia      $01
3A51: 03 00        lib      $00
3A53: 98           lp       $18
3A54: 14           adb
3A55: F1 18        cal      $1118
3A57: 78 7D 0B     call     $7D0B
3A5A: 2A 0B        jrncp    $3A66
3A5C: 02 08        lia      $08
3A5E: 94           lp       $14
3A5F: DB           exam
3A60: F1 44        cal      $1144
3A62: F1 25        cal      $1125
3A64: D0           sc
3A65: 37           rtn
3A66: F1 6A        cal      $116A
3A68: D4 DF        anid     $DF
3A6A: 78 61 AB     call     $61AB
3A6D: 3B 12        jrcm     $3A5C
3A6F: 02 03        lia      $03
3A71: 78 7B 91     call     $7B91
3A74: 78 7B 20     call     $7B20
3A77: 2B 12        jrncm    $3A66
3A79: F1 66        cal      $1166
3A7B: D6 04        tsid     $04
3A7D: 38 06        jrzp     $3A84
3A7F: 02 0D        lia      $0D
3A81: 78 7B 91     call     $7B91
3A84: 78 7C 02     call     $7C02
3A87: F1 44        cal      $1144
3A89: 78 7E E1     call     $7EE1
3A8C: 84           lp       $04
3A8D: 02 FE        lia      $FE
3A8F: DB           exam
3A90: 85           lp       $05
3A91: 02 C7        lia      $C7
3A93: DB           exam
3A94: D1           rc
3A95: 37           rtn
3A96: 05           dx
3A97: F2 05        cal      $1205
3A99: 3A 11        jrcp     $3AAB
3A9B: F1 18        cal      $1118
3A9D: 78 5D 88     call     $5D88
3AA0: F1 25        cal      $1125
3AA2: 9A           lp       $1A
3AA3: 63 00        cpim     $00
3AA5: 28 0A        jrnzp    $3AB0
3AA7: 02 04        lia      $04
3AA9: 94           lp       $14
3AAA: DB           exam
3AAB: 78 7E E1     call     $7EE1
3AAE: D0           sc
3AAF: 37           rtn
3AB0: 24           ixl
3AB1: 67 1B        cpia     $1B
3AB3: 29 9F        jrnzm    $3A15
3AB5: F2 05        cal      $1205
3AB7: 3B 0D        jrcm     $3AAB
3AB9: F1 18        cal      $1118
3ABB: A4           lp       $24
3ABC: 63 D0        cpim     $D0
3ABE: 39 AA        jrzm     $3A15
3AC0: 78 7B 00     call     $7B00
3AC3: 78 5D 88     call     $5D88
3AC6: F1 25        cal      $1125
3AC8: 9A           lp       $1A
3AC9: 63 00        cpim     $00
3ACB: 39 25        jrzm     $3AA7
3ACD: 2C 01        jrp      $3ACF
3ACF: 24           ixl
3AD0: 67 00        cpia     $00
3AD2: 29 BE        jrnzm    $3A15
3AD4: 05           dx
3AD5: F1 18        cal      $1118
3AD7: 78 7D 0B     call     $7D0B
3ADA: 3B 7F        jrcm     $3A5C
3ADC: 10 C6 B9     lidp     $C6B9
3ADF: 98           lp       $18
3AE0: 01 01        lij      $01
3AE2: 1B           exbd
3AE3: 78 7B 0D     call     $7B0D
3AE6: 2B D2        jrncm    $3A15
3AE8: F1 6A        cal      $116A
3AEA: D4 DF        anid     $DF
3AEC: 78 61 AB     call     $61AB
3AEF: 3B 94        jrcm     $3A5C
3AF1: 02 03        lia      $03
3AF3: 78 7B 91     call     $7B91
3AF6: 78 7B 0D     call     $7B0D
3AF9: 2B 81        jrncm    $3A79
3AFB: 78 7B 20     call     $7B20
3AFE: 2D 17        jrm      $3AE8
3B00: 10 C6 B9     lidp     $C6B9
3B03: 98           lp       $18
3B04: 01 01        lij      $01
3B06: 1B           exbd
3B07: 10 C6 B9     lidp     $C6B9
3B0A: 98           lp       $18
3B0B: 1A           mvbd
3B0C: 37           rtn
3B0D: 10 C6 B9     lidp     $C6B9
3B10: 82           lp       $02
3B11: 01 01        lij      $01
3B13: 1A           mvbd
3B14: 98           lp       $18
3B15: 15           sbb
3B16: 2A 05        jrncp    $3B1C
3B18: 98           lp       $18
3B19: 14           adb
3B1A: D0           sc
3B1B: 37           rtn
3B1C: 98           lp       $18
3B1D: 14           adb
3B1E: D1           rc
3B1F: 37           rtn
3B20: 78 7C 08     call     $7C08
3B23: 13 18        liq      $18
3B25: 84           lp       $04
3B26: 0A           mvb
3B27: 04           ix
3B28: 24           ixl
3B29: 67 00        cpia     $00
3B2B: 29 04        jrnzm    $3B28
3B2D: 24           ixl
3B2E: 67 FF        cpia     $FF
3B30: 28 04        jrnzp    $3B35
3B32: D0           sc
3B33: 2C 02        jrp      $3B36
3B35: D1           rc
3B36: 13 04        liq      $04
3B38: 98           lp       $18
3B39: 0A           mvb
3B3A: 37           rtn
3B3B: F1 51        cal      $1151
3B3D: F1 66        cal      $1166
3B3F: D6 04        tsid     $04
3B41: 38 1E        jrzp     $3B60
3B43: 02 73        lia      $73
3B45: 78 7D 6F     call     $7D6F
3B48: 3A 1D        jrcp     $3B66
3B4A: F1 25        cal      $1125
3B4C: 10 C6 D7     lidp     $C6D7
3B4F: D5 04        orid     $04
3B51: 78 59 BA     call     $59BA
3B54: 78 55 E5     call     $55E5
3B57: 10 C6 D7     lidp     $C6D7
3B5A: D4 FB        anid     $FB
3B5C: 78 7D 1C     call     $7D1C
3B5F: 37           rtn
3B60: 11 BB        lidl     $BB
3B62: D6 04        tsid     $04
3B64: 29 19        jrnzm    $3B4C
3B66: 78 50 6A     call     $506A
3B69: D1           rc
3B6A: 37           rtn
3B6B: F1 51        cal      $1151
3B6D: 10 C6 D7     lidp     $C6D7
3B70: D4 FB        anid     $FB
3B72: F1 66        cal      $1166
3B74: D6 02        tsid     $02
3B76: 38 18        jrzp     $3B8F
3B78: 02 72        lia      $72
3B7A: 78 7D 6F     call     $7D6F
3B7D: 2A 07        jrncp    $3B85
3B7F: 02 08        lia      $08
3B81: 94           lp       $14
3B82: DB           exam
3B83: D0           sc
3B84: 37           rtn
3B85: 78 5C 3F     call     $5C3F
3B88: 10 C6 D7     lidp     $C6D7
3B8B: D5 20        orid     $20
3B8D: F1 25        cal      $1125
3B8F: D1           rc
3B90: 37           rtn
3B91: 10 C6 B4     lidp     $C6B4
3B94: 52           std
3B95: 12 5D        lip      $5D
3B97: 60 3F        anim     $3F
3B99: DD           outb
3B9A: 12 5E        lip      $5E
3B9C: 60 FE        anim     $FE
3B9E: 5F           outf
3B9F: 02 07        lia      $07
3BA1: 34           push
3BA2: 10 C6 B4     lidp     $C6B4
3BA5: 57           ldd
3BA6: D2           sr
3BA7: 52           std
3BA8: 12 5E        lip      $5E
3BAA: 60 FD        anim     $FD
3BAC: 2A 03        jrncp    $3BB0
3BAE: 61 02        orim     $02
3BB0: 5F           outf
3BB1: 12 5D        lip      $5D
3BB3: 62 20        tsim     $20
3BB5: 38 15        jrzp     $3BCB
3BB7: 03 05        lib      $05
3BB9: 78 7C 20     call     $7C20
3BBC: 2A 11        jrncp    $3BCE
3BBE: 66 80        tsia     $80
3BC0: 39 0A        jrzm     $3BB7
3BC2: 6B 01        test     $01
3BC4: 39 0C        jrzm     $3BB9
3BC6: C3           decb
3BC7: 2B 0F        jrncm    $3BB9
3BC9: 2C 30        jrp      $3BFA
3BCB: 78 7C 02     call     $7C02
3BCE: 12 5E        lip      $5E
3BD0: 61 01        orim     $01
3BD2: 5F           outf
3BD3: 12 5D        lip      $5D
3BD5: 62 20        tsim     $20
3BD7: 38 11        jrzp     $3BE9
3BD9: 03 05        lib      $05
3BDB: 78 7C 30     call     $7C30
3BDE: 2A 0D        jrncp    $3BEC
3BE0: 6B 01        test     $01
3BE2: 39 08        jrzm     $3BDB
3BE4: C3           decb
3BE5: 2B 0B        jrncm    $3BDB
3BE7: 2C 12        jrp      $3BFA
3BE9: 78 7C 1A     call     $7C1A
3BEC: 12 5E        lip      $5E
3BEE: 60 FE        anim     $FE
3BF0: 5F           outf
3BF1: 2F 50        loop     $3BA2
3BF3: CC           inb
3BF4: 66 80        tsia     $80
3BF6: 28 04        jrnzp    $3BFB
3BF8: D1           rc
3BF9: 37           rtn
3BFA: 5B           pop
3BFB: 5B           pop
3BFC: 79 7D B9     jp       $7DB9
3BFF: 78 7C 08     call     $7C08
3C02: 78 7C 20     call     $7C20
3C05: 3B 07        jrcm     $3BFF
3C07: 37           rtn
3C08: 6B 08        test     $08
3C0A: 38 21        jrzp     $3C2C
3C0C: 4E 5E        wait     $5E
3C0E: 6B 08        test     $08
3C10: 38 1B        jrzp     $3C2C
3C12: F1 44        cal      $1144
3C14: 79 7D F9     jp       $7DF9
3C17: 78 7C 08     call     $7C08
3C1A: 78 7C 30     call     $7C30
3C1D: 3B 07        jrcm     $3C17
3C1F: 37           rtn
3C20: CC           inb
3C21: 66 40        tsia     $40
3C23: 28 0A        jrnzp    $3C2E
3C25: 4E 00        wait     $00
3C27: CC           inb
3C28: 66 40        tsia     $40
3C2A: 28 03        jrnzp    $3C2E
3C2C: D1           rc
3C2D: 37           rtn
3C2E: D0           sc
3C2F: 37           rtn
3C30: CC           inb
3C31: 66 40        tsia     $40
3C33: 39 06        jrzm     $3C2E
3C35: 4E 00        wait     $00
3C37: CC           inb
3C38: 66 40        tsia     $40
3C3A: 39 0D        jrzm     $3C2E
3C3C: D1           rc
3C3D: 37           rtn
3C3E: 12 5D        lip      $5D
3C40: 60 3F        anim     $3F
3C42: DD           outb
3C43: 12 5E        lip      $5E
3C45: 60 FE        anim     $FE
3C47: 5F           outf
3C48: 10 C6 B4     lidp     $C6B4
3C4B: D4 00        anid     $00
3C4D: 02 07        lia      $07
3C4F: 34           push
3C50: 78 7C 1A     call     $7C1A
3C53: CC           inb
3C54: 66 80        tsia     $80
3C56: 38 04        jrzp     $3C5B
3C58: D0           sc
3C59: 2C 02        jrp      $3C5C
3C5B: D1           rc
3C5C: 10 C6 B4     lidp     $C6B4
3C5F: 57           ldd
3C60: D2           sr
3C61: 52           std
3C62: 12 5E        lip      $5E
3C64: 61 01        orim     $01
3C66: 5F           outf
3C67: 78 7C 02     call     $7C02
3C6A: 12 5E        lip      $5E
3C6C: 60 FE        anim     $FE
3C6E: 5F           outf
3C6F: 2F 20        loop     $3C50
3C71: 10 C6 B4     lidp     $C6B4
3C74: 57           ldd
3C75: 37           rtn
3C76: 10 C6 D7     lidp     $C6D7
3C79: D6 04        tsid     $04
3C7B: 38 09        jrzp     $3C85
3C7D: 11 B7        lidl     $B7
3C7F: D6 04        tsid     $04
3C81: 38 07        jrzp     $3C89
3C83: D0           sc
3C84: 37           rtn
3C85: D6 20        tsid     $20
3C87: 29 05        jrnzm    $3C83
3C89: D1           rc
3C8A: 37           rtn
3C8B: 10 C6 D7     lidp     $C6D7
3C8E: D6 24        tsid     $24
3C90: 28 03        jrnzp    $3C94
3C92: F1 51        cal      $1151
3C94: 10 C6 C2     lidp     $C6C2
3C97: 84           lp       $04
3C98: 1B           exbd
3C99: 78 7C 76     call     $7C76
3C9C: 3A 04        jrcp     $3CA1
3C9E: 78 7D 12     call     $7D12
3CA1: 88           lp       $08
3CA2: 02 17        lia      $17
3CA4: DB           exam
3CA5: 10 C6 BE     lidp     $C6BE
3CA8: 02 20        lia      $20
3CAA: 52           std
3CAB: 10 C6 BE     lidp     $C6BE
3CAE: 57           ldd
3CAF: 30           stp
3CB0: 42           inca
3CB1: 52           std
3CB2: 59           ldm
3CB3: 67 4F        cpia     $4F
3CB5: 38 18        jrzp     $3CCE
3CB7: 78 7C 76     call     $7C76
3CBA: 2A 09        jrncp    $3CC4
3CBC: 78 7B 91     call     $7B91
3CBF: 49           deck
3CC0: 2B 16        jrncm    $3CAB
3CC2: 2C 27        jrp      $3CEA
3CC4: EF E2        cal      $0FE2
3CC6: 78 7B 91     call     $7B91
3CC9: 49           deck
3CCA: 2B 20        jrncm    $3CAB
3CCC: 2C 0E        jrp      $3CDB
3CCE: 78 7C 76     call     $7C76
3CD1: 3A 18        jrcp     $3CEA
3CD3: 02 20        lia      $20
3CD5: 78 7B 91     call     $7B91
3CD8: 49           deck
3CD9: 2B 07        jrncm    $3CD3
3CDB: 02 0D        lia      $0D
3CDD: 78 7B 91     call     $7B91
3CE0: 10 C6 D7     lidp     $C6D7
3CE3: D6 04        tsid     $04
3CE5: 28 04        jrnzp    $3CEA
3CE7: 78 7D 1C     call     $7D1C
3CEA: 10 C6 C2     lidp     $C6C2
3CED: 84           lp       $04
3CEE: 1A           mvbd
3CEF: D1           rc
3CF0: 37           rtn
3CF1: 78 7C 76     call     $7C76
3CF4: 2A 14        jrncp    $3D09
3CF6: 02 0D        lia      $0D
3CF8: 78 7B 91     call     $7B91
3CFB: 78 7C 02     call     $7C02
3CFE: F1 44        cal      $1144
3D00: F1 66        cal      $1166
3D02: D6 02        tsid     $02
3D04: 38 04        jrzp     $3D09
3D06: 78 62 A5     call     $62A5
3D09: D1           rc
3D0A: 37           rtn
3D0B: F1 66        cal      $1166
3D0D: D6 04        tsid     $04
3D0F: 28 5D        jrnzp    $3D6D
3D11: D1           rc
3D12: 12 5D        lip      $5D
3D14: 60 0F        anim     $0F
3D16: 61 20        orim     $20
3D18: DD           outb
3D19: 4E DC        wait     $DC
3D1B: 37           rtn
3D1C: 12 5D        lip      $5D
3D1E: 60 0F        anim     $0F
3D20: 2D 09        jrm      $3D18
3D22: 4E C8        wait     $C8
3D24: 12 5E        lip      $5E
3D26: 60 FC        anim     $FC
3D28: 5F           outf
3D29: 51           decp
3D2A: 60 0F        anim     $0F
3D2C: 61 20        orim     $20
3D2E: DD           outb
3D2F: 61 30        orim     $30
3D31: DD           outb
3D32: 4E FF        wait     $FF
3D34: 37           rtn
3D35: 78 7D 22     call     $7D22
3D38: 78 7D 12     call     $7D12
3D3B: 10 C6 BB     lidp     $C6BB
3D3E: D4 FB        anid     $FB
3D40: 03 0C        lib      $0C
3D42: CC           inb
3D43: 66 40        tsia     $40
3D45: 38 06        jrzp     $3D4C
3D47: C3           decb
3D48: 2B 07        jrncm    $3D42
3D4A: 2C 19        jrp      $3D64
3D4C: 03 0C        lib      $0C
3D4E: 50           incp
3D4F: 61 01        orim     $01
3D51: 5F           outf
3D52: CC           inb
3D53: 66 40        tsia     $40
3D55: 38 08        jrzp     $3D5E
3D57: 78 7D 22     call     $7D22
3D5A: D5 04        orid     $04
3D5C: 2C 0C        jrp      $3D69
3D5E: C3           decb
3D5F: 2B 0E        jrncm    $3D52
3D61: 60 FE        anim     $FE
3D63: 5F           outf
3D64: 10 F8 3C     lidp     $F83C
3D67: D4 FD        anid     $FD
3D69: 78 7D 1C     call     $7D1C
3D6C: 37           rtn
3D6D: 02 74        lia      $74
3D6F: 10 C6 B4     lidp     $C6B4
3D72: 52           std
3D73: 78 7D 12     call     $7D12
3D76: 50           incp
3D77: 60 FC        anim     $FC
3D79: 5F           outf
3D7A: 03 E5        lib      $E5
3D7C: 78 7C 20     call     $7C20
3D7F: 2A 08        jrncp    $3D88
3D81: F1 0B        cal      $110B
3D83: C3           decb
3D84: 2B 09        jrncm    $3D7C
3D86: 2C 33        jrp      $3DBA
3D88: 78 7D 22     call     $7D22
3D8B: 60 2F        anim     $2F
3D8D: DD           outb
3D8E: 60 0F        anim     $0F
3D90: DD           outb
3D91: 4E FF        wait     $FF
3D93: 02 07        lia      $07
3D95: 34           push
3D96: 10 C6 B4     lidp     $C6B4
3D99: 57           ldd
3D9A: D2           sr
3D9B: 52           std
3D9C: 12 5E        lip      $5E
3D9E: 60 FD        anim     $FD
3DA0: 2A 03        jrncp    $3DA4
3DA2: 61 02        orim     $02
3DA4: 5F           outf
3DA5: 78 7C 02     call     $7C02
3DA8: 12 5E        lip      $5E
3DAA: 61 01        orim     $01
3DAC: 5F           outf
3DAD: 03 10        lib      $10
3DAF: 78 7C 30     call     $7C30
3DB2: 2A 10        jrncp    $3DC3
3DB4: F1 0B        cal      $110B
3DB6: C3           decb
3DB7: 2B 09        jrncm    $3DAF
3DB9: 5B           pop
3DBA: F1 44        cal      $1144
3DBC: 94           lp       $14
3DBD: 02 08        lia      $08
3DBF: DB           exam
3DC0: D0           sc
3DC1: 2C 43        jrp      $3E05
3DC3: 12 5E        lip      $5E
3DC5: 60 FE        anim     $FE
3DC7: 5F           outf
3DC8: 2F 33        loop     $3D96
3DCA: CC           inb
3DCB: 66 80        tsia     $80
3DCD: 29 14        jrnzm    $3DBA
3DCF: 79 7C 02     jp       $7C02
3DD2: 02 2D        lia      $2D
3DD4: 2C 03        jrp      $3DD8
3DD6: 02 2E        lia      $2E
3DD8: 8E           lp       $0E
3DD9: DB           exam
3DDA: 59           ldm
3DDB: 78 7D 6F     call     $7D6F
3DDE: 3A 13        jrcp     $3DF2
3DE0: 78 7C 3E     call     $7C3E
3DE3: 8E           lp       $0E
3DE4: C7           cpma
3DE5: 28 0C        jrnzp    $3DF2
3DE7: 78 7C 3E     call     $7C3E
3DEA: 67 0D        cpia     $0D
3DEC: 28 05        jrnzp    $3DF2
3DEE: F1 44        cal      $1144
3DF0: D0           sc
3DF1: 37           rtn
3DF2: F1 44        cal      $1144
3DF4: D1           rc
3DF5: 37           rtn
3DF6: 78 7E 24     call     $7E24
3DF9: 10 C6 B3     lidp     $C6B3
3DFC: 57           ldd
3DFD: 32           str
3DFE: 78 71 60     call     $7160
3E01: 95           lp       $15
3E02: 61 20        orim     $20
3E04: D1           rc
3E05: F1 25        cal      $1125
3E07: 11 D7        lidl     $D7
3E09: D4 DB        anid     $DB
3E0B: 37           rtn
3E0C: 10 C6 D7     lidp     $C6D7
3E0F: D6 01        tsid     $01
3E11: 28 11        jrnzp    $3E23
3E13: D5 01        orid     $01
3E15: 12 5D        lip      $5D
3E17: 60 0F        anim     $0F
3E19: 61 10        orim     $10
3E1B: DD           outb
3E1C: 02 96        lia      $96
3E1E: F1 13        cal      $1113
3E20: 43           deca
3E21: 2B 04        jrncm    $3E1E
3E23: 37           rtn
3E24: 10 C6 D7     lidp     $C6D7
3E27: D6 01        tsid     $01
3E29: 38 1C        jrzp     $3E46
3E2B: D4 FE        anid     $FE
3E2D: 12 5F        lip      $5F
3E2F: 60 01        anim     $01
3E31: DF           outc
3E32: 78 7E 1C     call     $7E1C
3E35: 78 7E 1C     call     $7E1C
3E38: 12 5D        lip      $5D
3E3A: 60 0F        anim     $0F
3E3C: DD           outb
3E3D: 10 F8 3D     lidp     $F83D
3E40: D4 FE        anid     $FE
3E42: F1 E5        cal      $11E5
3E44: 4E BA        wait     $BA
3E46: 37           rtn
3E47: 12 5E        lip      $5E
3E49: 60 FC        anim     $FC
3E4B: 5F           outf
3E4C: 50           incp
3E4D: 60 01        anim     $01
3E4F: DF           outc
3E50: 78 7D 12     call     $7D12
3E53: 79 7D 1C     jp       $7D1C
3E56: 10 F8 B0     lidp     $F8B0
3E59: A0           lp       $20
3E5A: 00 07        lii      $07
3E5C: 19           exwd
3E5D: 10 F8 B0     lidp     $F8B0
3E60: A0           lp       $20
3E61: 18           mvwd
3E62: A0           lp       $20
3E63: 02 99        lia      $99
3E65: DB           exam
3E66: A1           lp       $21
3E67: 02 90        lia      $90
3E69: DB           exam
3E6A: 37           rtn
3E6B: EB 0A        cal      $0B0A
3E6D: 91           lp       $11
3E6E: 62 01        tsim     $01
3E70: 38 04        jrzp     $3E75
3E72: 78 7E 56     call     $7E56
3E75: E1 F6        cal      $01F6
3E77: 78 7E 5D     call     $7E5D
3E7A: EA E1        cal      $0AE1
3E7C: E0 A9        cal      $00A9
3E7E: AA           lp       $2A
3E7F: 61 23        orim     $23
3E81: A9           lp       $29
3E82: 61 10        orim     $10
3E84: E3 6B        cal      $036B
3E86: A0           lp       $20
3E87: 62 F0        tsim     $F0
3E89: 28 07        jrnzp    $3E91
3E8B: E1 04        cal      $0104
3E8D: E1 DA        cal      $01DA
3E8F: 2B 05        jrncm    $3E8B
3E91: E0 A9        cal      $00A9
3E93: AF           lp       $2F
3E94: 61 01        orim     $01
3E96: E1 82        cal      $0182
3E98: 78 7E 56     call     $7E56
3E9B: E3 30        cal      $0330
3E9D: B8           lp       $38
3E9E: 62 F0        tsim     $F0
3EA0: 28 14        jrnzp    $3EB5
3EA2: BA           lp       $3A
3EA3: 62 FF        tsim     $FF
3EA5: 38 0F        jrzp     $3EB5
3EA7: E2 6A        cal      $026A
3EA9: E3 6B        cal      $036B
3EAB: EA F9        cal      $0AF9
3EAD: EC DE        cal      $0CDE
3EAF: E1 2F        cal      $012F
3EB1: EB 50        cal      $0B50
3EB3: D1           rc
3EB4: 37           rtn
3EB5: EA F9        cal      $0AF9
3EB7: D1           rc
3EB8: 37           rtn
3EB9: 78 6D A9     call     $6DA9
3EBC: 3A 0F        jrcp     $3ECC
3EBE: 13 0E        liq      $0E
3EC0: 84           lp       $04
3EC1: 0A           mvb
3EC2: 05           dx
3EC3: 24           ixl
3EC4: A8           lp       $28
3EC5: DB           exam
3EC6: A9           lp       $29
3EC7: 60 00        anim     $00
3EC9: ED 42        cal      $0D42
3ECB: D1           rc
3ECC: 37           rtn
3ECD: 10 C6 B3     lidp     $C6B3
3ED0: 00 08        lii      $08
3ED2: 02 00        lia      $00
3ED4: 1F           fild
3ED5: 10 C6 D7     lidp     $C6D7
3ED8: D4 CA        anid     $CA
3EDA: 78 7D 35     call     $7D35
3EDD: 92           lp       $12
3EDE: 60 8F        anim     $8F
3EE0: 37           rtn
3EE1: 10 C6 D7     lidp     $C6D7
3EE4: D4 FB        anid     $FB
3EE6: 37           rtn
3EE7: EA E1        cal      $0AE1
3EE9: EA 69        cal      $0A69
3EEB: E3 30        cal      $0330
3EED: E2 78        cal      $0278
3EEF: EA A0        cal      $0AA0
3EF1: E2 84        cal      $0284
3EF3: E3 A5        cal      $03A5
3EF5: 91           lp       $11
3EF6: 60 FB        anim     $FB
3EF8: 62 01        tsim     $01
3EFA: 38 03        jrzp     $3EFE
3EFC: 61 04        orim     $04
3EFE: E1 F3        cal      $01F3
3F00: E2 06        cal      $0206
3F02: EA 63        cal      $0A63
3F04: E3 30        cal      $0330
3F06: E2 78        cal      $0278
3F08: 91           lp       $11
3F09: 60 FD        anim     $FD
3F0B: 62 04        tsim     $04
3F0D: 38 03        jrzp     $3F11
3F0F: 61 02        orim     $02
3F11: 13 30        liq      $30
3F13: A8           lp       $28
3F14: E2 02        cal      $0202
3F16: E2 EB        cal      $02EB
3F18: EA A0        cal      $0AA0
3F1A: E2 84        cal      $0284
3F1C: E3 A5        cal      $03A5
3F1E: 79 0A 59     jp       $0A59
3F21: 00 00        lii      $00
3F23: BF           lp       $3F
3F24: 00 39        lii      $39
3F26: 0A           mvb
3F27: 08           mvw
3F28: 04           ix
3F29: 00 00        lii      $00
3F2B: FF 00        cal      $1F00
3F2D: ED 88        cal      $0D88
3F2F: 00 10        lii      $10
3F31: 08           mvw
3F32: 00 FE        lii      $FE
3F34: 00 9F        lii      $9F
3F36: 08           mvw
3F37: 00 00        lii      $00
3F39: 00 00        lii      $00
3F3B: E3 00        cal      $0300
3F3D: 7F 80 00     jpc      $8000
3F40: 31           stq
3F41: 00 00        lii      $00
3F43: FB 00        cal      $1B00
3F45: FF 81        cal      $1F81
3F47: 20           ldp
3F48: 16 00 00     .case    $16, $0000
3F4B: DE           ???
3F4C: 00 BE        lii      $BE
3F4E: 34           push
3F4F: 00 40        lii      $40
3F51: 08           mvw
3F52: 00 FB        lii      $FB
3F54: 00 1B        lii      $1B
3F56: 00 40        lii      $40
3F58: 00 20        lii      $20
3F5A: 00 FB        lii      $FB
3F5C: 00 C7        lii      $C7
3F5E: 44           adm
3F5F: 00 00        lii      $00
3F61: 04           ix
3F62: 00 74        lii      $74
3F64: 00 F7        lii      $F7
3F66: 00 21        lii      $21
3F68: C2           incb
3F69: 00 00        lii      $00
3F6B: F8 00        cal      $1800
3F6D: 5C           ???
3F6E: 80           lp       $00
3F6F: 20           ldp
3F70: 70 20        adim     $20
3F72: 00 EF        lii      $EF
3F74: 00 7F        lii      $7F
3F76: 00 00        lii      $00
3F78: 05           dx
3F79: 00 00        lii      $00
3F7B: DF           outc
3F7C: 00 EF        lii      $EF
3F7E: DD           outb
3F7F: 05           dx
3F80: C1           decj
3F81: 00 00        lii      $00
3F83: BB           lp       $3B
3F84: 00 DB        lii      $DB
3F86: 20           ldp
3F87: 04           ix
3F88: 01 00        lij      $00
3F8A: 00 EB        lii      $EB
3F8C: 00 DE        lii      $DE
3F8E: 04           ix
3F8F: 82           lp       $02
3F90: 05           dx
3F91: 00 00        lii      $00
3F93: 65 00        oria     $00
3F95: F1 00        cal      $1100
3F97: 80           lp       $00
3F98: 00 10        lii      $10
3F9A: 00 FE        lii      $FE
3F9C: 00 5B        lii      $5B
3F9E: 89           lp       $09
3F9F: 00 00        lii      $00
3FA1: 20           ldp
3FA2: 00 FF        lii      $FF
3FA4: 00 EB        lii      $EB
3FA6: 09           exw
3FA7: 00 48        lii      $48
3FA9: 00 00        lii      $00
3FAB: F7 00        cal      $1700
3FAD: FF 22        cal      $1F22
3FAF: 00 10        lii      $10
3FB1: 00 00        lii      $00
3FB3: DD           outb
3FB4: 00 F9        lii      $F9
3FB6: 02 30        lia      $30
3FB8: 00 00        lii      $00
3FBA: 00 FF        lii      $FF
3FBC: 00 BF        lii      $BF
3FBE: 03 01        lib      $01
3FC0: 06           iy
3FC1: 00 00        lii      $00
3FC3: E3 00        cal      $0300
3FC5: FF 81        cal      $1F81
3FC7: 04           ix
3FC8: 01 00        lij      $00
3FCA: 00 E7        lii      $E7
3FCC: 00 AD        lii      $AD
3FCE: 0A           mvb
3FCF: 00 02        lii      $02
3FD1: 00 00        lii      $00
3FD3: 7B           ???
3FD4: 00 F7        lii      $F7
3FD6: 88           lp       $08
3FD7: 00 00        lii      $00
3FD9: 00 00        lii      $00
3FDB: BF           lp       $3F
3FDC: 00 7D        lii      $7D
3FDE: 11 00        lidl     $00
3FE0: 19           exwd
3FE1: 00 00        lii      $00
3FE3: 5E           ???
3FE4: 00 3E        lii      $3E
3FE6: 14           adb
3FE7: 00 08        lii      $08
3FE9: 00 00        lii      $00
3FEB: FA 00        cal      $1A00
3FED: FF 00        cal      $1F00
3FEF: C0           incj
3FF0: 00 00        lii      $00
3FF2: 00 EF        lii      $EF
3FF4: 00 FF        lii      $FF
3FF6: 18           mvwd
3FF7: 00 10        lii      $10
3FF9: 04           ix
3FFA: 00 B7        lii      $B7
3FFC: 00 12        lii      $12
3FFE: 45           sbm
3FFF: 01 00        lij      $00
