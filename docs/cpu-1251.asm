0000: 4E A0        wait     0xA0
0002: 02 01        lia      0x01
0004: 12 5F        lip      0x5F
0006: DB           exam
0007: DF           outc
0008: 4E A0        wait     0xA0
000A: 60 00        anim     0x00
000C: DF           outc
000D: 6B 40        test     0x40
000F: 7E 44 E9     jpz      0x44E9
0012: 4E A0        wait     0xA0
0014: 6B 40        test     0x40
0016: 39 0F        jrzm     0x0008
0018: 02 5C        lia      0x5C
001A: 32           str
001B: 4C           ina
001C: 67 01        cpia     0x01
001E: 38 2C        jrzp     0x004B
0020: 12 5F        lip      0x5F
0022: 10 00 00     lidp     0x0000
0025: 57           ldd
0026: 67 02        cpia     0x02
0028: 3A 15        jrcp     0x003E
002A: 38 1A        jrzp     0x0045
002C: 66 F3        tsia     0xF3
002E: 38 18        jrzp     0x0047
0030: 02 11        lia      0x11
0032: DB           exam
0033: 00 02        lii      0x02
0035: 02 FF        lia      0xFF
0037: 12 5C        lip      0x5C
0039: 1E           film
003A: 5D           outa
003B: DD           outb
003C: 5F           outf
003D: DF           outc
003E: 42           inca
003F: 6B 40        test     0x40
0041: 29 04        jrnzm    0x003E
0043: 2D 44        jrm      0x0000
0045: 02 60        lia      0x60
0047: DB           exam
0048: DF           outc
0049: 2D 0C        jrm      0x003E
004B: 10 F8 00     lidp     0xF800
004E: 00 BF        lii      0xBF
0050: 02 00        lia      0x00
0052: 1F           fild
0053: 02 01        lia      0x01
0055: FF B1        cal      0x1FB1
0057: 88           lp       0x08
0058: 00 4F        lii      0x4F
005A: 02 96        lia      0x96
005C: 1E           film
005D: 88           lp       0x08
005E: 00 4F        lii      0x4F
0060: 1C           srw
0061: 00 23        lii      0x23
0063: 02 03        lia      0x03
0065: 34           push
0066: AF           lp       0x2F
0067: 13 53        liq      0x53
0069: 0E           adw
006A: 2F 05        loop     0x0066
006C: 34           push
006D: AF           lp       0x2F
006E: 13 53        liq      0x53
0070: 0F           sbw
0071: 2F 05        loop     0x006D
0073: 00 3F        lii      0x3F
0075: 10 F8 00     lidp     0xF800
0078: 90           lp       0x10
0079: 19           exwd
007A: 11 00        lidl     0x00
007C: 90           lp       0x10
007D: 18           mvwd
007E: 6B 40        test     0x40
0080: 39 81        jrzm     0x0000
0082: 6B 01        test     0x01
0084: 39 07        jrzm     0x007E
0086: 01 01        lij      0x01
0088: FF 44        cal      0x1F44
008A: 2B 0D        jrncm    0x007E
008C: 84           lp       0x04
008D: 63 5E        cpim     0x5E
008F: 29 12        jrnzm    0x007E
0091: 12 5F        lip      0x5F
0093: 59           ldm
0094: 61 31        orim     0x31
0096: 66 10        tsia     0x10
0098: 38 03        jrzp     0x009C
009A: 60 21        anim     0x21
009C: DF           outc
009D: 2D 41        jrm      0x005D
009F: 91           lp       0x11
00A0: 60 FE        anim     0xFE
00A2: A0           lp       0x20
00A3: 00 07        lii      0x07
00A5: 02 00        lia      0x00
00A7: 1E           film
00A8: 37           rtn
00A9: 91           lp       0x11
00AA: 60 FD        anim     0xFD
00AC: A8           lp       0x28
00AD: 2D 0B        jrm      0x00A3
00AF: 91           lp       0x11
00B0: 60 FB        anim     0xFB
00B2: B0           lp       0x30
00B3: 2D 11        jrm      0x00A3
00B5: B9           lp       0x39
00B6: 2C 02        jrp      0x00B9
00B8: A1           lp       0x21
00B9: 60 F0        anim     0xF0
00BB: 50           incp
00BC: 02 00        lia      0x00
00BE: 00 05        lii      0x05
00C0: 1E           film
00C1: 37           rtn
00C2: A9           lp       0x29
00C3: 2D 0B        jrm      0x00B9
00C5: B1           lp       0x31
00C6: 2D 0E        jrm      0x00B9
00C8: A0           lp       0x20
00C9: 60 00        anim     0x00
00CB: 50           incp
00CC: 60 0F        anim     0x0F
00CE: 37           rtn
00CF: A8           lp       0x28
00D0: 2D 08        jrm      0x00C9
00D2: A0           lp       0x20
00D3: 00 07        lii      0x07
00D5: 1C           srw
00D6: 37           rtn
00D7: B0           lp       0x30
00D8: 2D 06        jrm      0x00D3
00DA: B8           lp       0x38
00DB: 2D 09        jrm      0x00D3
00DD: A2           lp       0x22
00DE: 00 05        lii      0x05
00E0: 1C           srw
00E1: A1           lp       0x21
00E2: 59           ldm
00E3: 60 F0        anim     0xF0
00E5: 58           swp
00E6: 64 F0        ania     0xF0
00E8: 50           incp
00E9: 47           orma
00EA: 37           rtn
00EB: AA           lp       0x2A
00EC: 00 05        lii      0x05
00EE: 1C           srw
00EF: A9           lp       0x29
00F0: 2D 0F        jrm      0x00E2
00F2: BA           lp       0x3A
00F3: 00 05        lii      0x05
00F5: 1C           srw
00F6: B9           lp       0x39
00F7: 2D 16        jrm      0x00E2
00F9: A7           lp       0x27
00FA: 00 07        lii      0x07
00FC: 1D           slw
00FD: 37           rtn
00FE: B7           lp       0x37
00FF: 2D 06        jrm      0x00FA
0101: BF           lp       0x3F
0102: 2D 09        jrm      0x00FA
0104: A2           lp       0x22
0105: 59           ldm
0106: 58           swp
0107: 64 0F        ania     0x0F
0109: 51           decp
010A: 60 F0        anim     0xF0
010C: 47           orma
010D: 20           ldp
010E: 74 06        adia     0x06
0110: 30           stp
0111: 00 05        lii      0x05
0113: 1D           slw
0114: 37           rtn
0115: AA           lp       0x2A
0116: 2D 12        jrm      0x0105
0118: BA           lp       0x3A
0119: 2D 15        jrm      0x0105
011B: A1           lp       0x21
011C: 62 0F        tsim     0x0F
011E: 28 0E        jrnzp    0x012D
0120: A2           lp       0x22
0121: 02 05        lia      0x05
0123: 63 00        cpim     0x00
0125: 28 07        jrnzp    0x012D
0127: 50           incp
0128: 43           deca
0129: 2B 07        jrncm    0x0123
012B: D0           sc
012C: 37           rtn
012D: D1           rc
012E: 37           rtn
012F: 91           lp       0x11
0130: 60 FD        anim     0xFD
0132: A8           lp       0x28
0133: 00 07        lii      0x07
0135: 02 00        lia      0x00
0137: 1E           film
0138: AA           lp       0x2A
0139: 61 10        orim     0x10
013B: 37           rtn
013C: 91           lp       0x11
013D: 62 01        tsim     0x01
013F: 28 04        jrnzp    0x0144
0141: 61 01        orim     0x01
0143: 37           rtn
0144: 60 FE        anim     0xFE
0146: 37           rtn
0147: D1           rc
0148: 91           lp       0x11
0149: 59           ldm
014A: D2           sr
014B: 64 01        ania     0x01
014D: 03 00        lib      0x00
014F: 83           lp       0x03
0150: C4           adcm
0151: 59           ldm
0152: 64 01        ania     0x01
0154: 91           lp       0x11
0155: 60 FE        anim     0xFE
0157: 47           orma
0158: 37           rtn
0159: A7           lp       0x27
015A: 00 07        lii      0x07
015C: 13 2F        liq      0x2F
015E: 0E           adw
015F: D1           rc
0160: 37           rtn
0161: A9           lp       0x29
0162: 59           ldm
0163: 64 0F        ania     0x0F
0165: 34           push
0166: 60 F0        anim     0xF0
0168: A1           lp       0x21
0169: 13 29        liq      0x29
016B: 00 01        lii      0x01
016D: 0E           adw
016E: 5B           pop
016F: A9           lp       0x29
0170: 47           orma
0171: 37           rtn
0172: A9           lp       0x29
0173: 59           ldm
0174: 64 F0        ania     0xF0
0176: AF           lp       0x2F
0177: 13 27        liq      0x27
0179: 00 06        lii      0x06
017B: 0E           adw
017C: 50           incp
017D: 60 0F        anim     0x0F
017F: 47           orma
0180: D1           rc
0181: 37           rtn
0182: A1           lp       0x21
0183: 59           ldm
0184: 64 F0        ania     0xF0
0186: A7           lp       0x27
0187: 13 2F        liq      0x2F
0189: 2D 11        jrm      0x0179
018B: A1           lp       0x21
018C: 59           ldm
018D: 60 0F        anim     0x0F
018F: 64 F0        ania     0xF0
0191: 34           push
0192: A9           lp       0x29
0193: 59           ldm
0194: 64 F0        ania     0xF0
0196: A1           lp       0x21
0197: 47           orma
0198: A7           lp       0x27
0199: 13 2F        liq      0x2F
019B: 00 06        lii      0x06
019D: 0F           sbw
019E: 5B           pop
019F: 50           incp
01A0: 60 0F        anim     0x0F
01A2: 47           orma
01A3: 37           rtn
01A4: A9           lp       0x29
01A5: 59           ldm
01A6: 60 0F        anim     0x0F
01A8: 64 F0        ania     0xF0
01AA: 34           push
01AB: A1           lp       0x21
01AC: 59           ldm
01AD: 64 F0        ania     0xF0
01AF: A9           lp       0x29
01B0: 47           orma
01B1: AF           lp       0x2F
01B2: 13 27        liq      0x27
01B4: 2D 1A        jrm      0x019B
01B6: A1           lp       0x21
01B7: 59           ldm
01B8: 64 0F        ania     0x0F
01BA: 60 F0        anim     0xF0
01BC: A9           lp       0x29
01BD: 13 21        liq      0x21
01BF: 00 01        lii      0x01
01C1: 0F           sbw
01C2: A1           lp       0x21
01C3: 47           orma
01C4: 37           rtn
01C5: A9           lp       0x29
01C6: 00 01        lii      0x01
01C8: 02 10        lia      0x10
01CA: 0C           adn
01CB: D1           rc
01CC: 37           rtn
01CD: A1           lp       0x21
01CE: 2D 09        jrm      0x01C6
01D0: B9           lp       0x39
01D1: 00 01        lii      0x01
01D3: 02 10        lia      0x10
01D5: 0D           sbn
01D6: 37           rtn
01D7: A9           lp       0x29
01D8: 2D 08        jrm      0x01D1
01DA: A1           lp       0x21
01DB: 2D 0B        jrm      0x01D1
01DD: A1           lp       0x21
01DE: 59           ldm
01DF: 60 0F        anim     0x0F
01E1: 64 F0        ania     0xF0
01E3: DA           exab
01E4: 51           decp
01E5: 02 00        lia      0x00
01E7: DB           exam
01E8: 50           incp
01E9: 00 01        lii      0x01
01EB: 13 03        liq      0x03
01ED: 0F           sbw
01EE: D1           rc
01EF: 37           rtn
01F0: A9           lp       0x29
01F1: 2D 14        jrm      0x01DE
01F3: B0           lp       0x30
01F4: 2C 0B        jrp      0x0200
01F6: 91           lp       0x11
01F7: 60 F7        anim     0xF7
01F9: 62 01        tsim     0x01
01FB: 38 03        jrzp     0x01FF
01FD: 61 08        orim     0x08
01FF: B8           lp       0x38
0200: 13 20        liq      0x20
0202: 00 07        lii      0x07
0204: 08           mvw
0205: 37           rtn
0206: 91           lp       0x11
0207: 60 FE        anim     0xFE
0209: 62 08        tsim     0x08
020B: 38 03        jrzp     0x020F
020D: 61 01        orim     0x01
020F: A0           lp       0x20
0210: 13 38        liq      0x38
0212: 2D 11        jrm      0x0202
0214: A1           lp       0x21
0215: 59           ldm
0216: 64 F0        ania     0xF0
0218: B9           lp       0x39
0219: 60 0F        anim     0x0F
021B: 47           orma
021C: A0           lp       0x20
021D: 59           ldm
021E: B8           lp       0x38
021F: DB           exam
0220: 37           rtn
0221: 91           lp       0x11
0222: 60 FD        anim     0xFD
0224: 62 01        tsim     0x01
0226: 38 03        jrzp     0x022A
0228: 61 02        orim     0x02
022A: A8           lp       0x28
022B: 13 20        liq      0x20
022D: 2D 2C        jrm      0x0202
022F: 91           lp       0x11
0230: 60 FE        anim     0xFE
0232: 62 02        tsim     0x02
0234: 38 03        jrzp     0x0238
0236: 61 01        orim     0x01
0238: A0           lp       0x20
0239: 13 28        liq      0x28
023B: 2D 3A        jrm      0x0202
023D: B0           lp       0x30
023E: 2D 06        jrm      0x0239
0240: A1           lp       0x21
0241: 59           ldm
0242: 51           decp
0243: 13 28        liq      0x28
0245: 00 01        lii      0x01
0247: 08           mvw
0248: 51           decp
0249: 60 F0        anim     0xF0
024B: 64 0F        ania     0x0F
024D: 47           orma
024E: 37           rtn
024F: A1           lp       0x21
0250: 59           ldm
0251: 13 29        liq      0x29
0253: 00 06        lii      0x06
0255: 08           mvw
0256: A1           lp       0x21
0257: 60 0F        anim     0x0F
0259: 64 F0        ania     0xF0
025B: 47           orma
025C: 37           rtn
025D: A1           lp       0x21
025E: 59           ldm
025F: 64 F0        ania     0xF0
0261: A9           lp       0x29
0262: 60 0F        anim     0x0F
0264: 47           orma
0265: A0           lp       0x20
0266: 59           ldm
0267: A8           lp       0x28
0268: DB           exam
0269: 37           rtn
026A: 91           lp       0x11
026B: 60 FD        anim     0xFD
026D: 62 08        tsim     0x08
026F: 38 03        jrzp     0x0273
0271: 61 02        orim     0x02
0273: A8           lp       0x28
0274: 13 38        liq      0x38
0276: 2D 75        jrm      0x0202
0278: 91           lp       0x11
0279: 60 F7        anim     0xF7
027B: 62 02        tsim     0x02
027D: 38 03        jrzp     0x0281
027F: 61 08        orim     0x08
0281: B8           lp       0x38
0282: 2D 4A        jrm      0x0239
0284: 91           lp       0x11
0285: 59           ldm
0286: D2           sr
0287: 60 FC        anim     0xFC
0289: 64 01        ania     0x01
028B: 47           orma
028C: 5A           sl
028D: 5A           sl
028E: 64 02        ania     0x02
0290: 47           orma
0291: A0           lp       0x20
0292: 13 28        liq      0x28
0294: 00 07        lii      0x07
0296: 09           exw
0297: 37           rtn
0298: 91           lp       0x11
0299: 59           ldm
029A: 60 FA        anim     0xFA
029C: 34           push
029D: D2           sr
029E: D2           sr
029F: 64 01        ania     0x01
02A1: 47           orma
02A2: 5B           pop
02A3: 5A           sl
02A4: 5A           sl
02A5: 64 04        ania     0x04
02A7: 47           orma
02A8: 37           rtn
02A9: A1           lp       0x21
02AA: 59           ldm
02AB: 60 0F        anim     0x0F
02AD: 64 F0        ania     0xF0
02AF: 8A           lp       0x0A
02B0: DB           exam
02B1: A9           lp       0x29
02B2: 59           ldm
02B3: 60 0F        anim     0x0F
02B5: 64 F0        ania     0xF0
02B7: 58           swp
02B8: 8A           lp       0x0A
02B9: 47           orma
02BA: 37           rtn
02BB: 8A           lp       0x0A
02BC: 59           ldm
02BD: 64 F0        ania     0xF0
02BF: A1           lp       0x21
02C0: 60 0F        anim     0x0F
02C2: 47           orma
02C3: 8A           lp       0x0A
02C4: 59           ldm
02C5: 58           swp
02C6: 64 F0        ania     0xF0
02C8: A9           lp       0x29
02C9: 60 0F        anim     0x0F
02CB: 47           orma
02CC: 37           rtn
02CD: A7           lp       0x27
02CE: 13 2F        liq      0x2F
02D0: 00 06        lii      0x06
02D2: 0E           adw
02D3: 37           rtn
02D4: AF           lp       0x2F
02D5: 13 27        liq      0x27
02D7: 00 06        lii      0x06
02D9: 0E           adw
02DA: 37           rtn
02DB: AF           lp       0x2F
02DC: 13 27        liq      0x27
02DE: 00 06        lii      0x06
02E0: 0F           sbw
02E1: 37           rtn
02E2: A7           lp       0x27
02E3: 13 2F        liq      0x2F
02E5: 00 06        lii      0x06
02E7: 0F           sbw
02E8: 37           rtn
02E9: E1 3C        cal      0x013C
02EB: A2           lp       0x22
02EC: 62 F0        tsim     0xF0
02EE: 38 3C        jrzp     0x032B
02F0: AA           lp       0x2A
02F1: 62 F0        tsim     0xF0
02F3: 38 39        jrzp     0x032D
02F5: E1 B6        cal      0x01B6
02F7: A8           lp       0x28
02F8: 62 80        tsim     0x80
02FA: 38 07        jrzp     0x0302
02FC: E0 EB        cal      0x00EB
02FE: E1 C5        cal      0x01C5
0300: 2D 0A        jrm      0x02F7
0302: E1 D7        cal      0x01D7
0304: 3A 07        jrcp     0x030C
0306: E0 DD        cal      0x00DD
0308: E1 CD        cal      0x01CD
030A: 2D 14        jrm      0x02F7
030C: E1 47        cal      0x0147
030E: 91           lp       0x11
030F: 62 01        tsim     0x01
0311: 28 09        jrnzp    0x031B
0313: E1 72        cal      0x0172
0315: E2 4F        cal      0x024F
0317: E1 47        cal      0x0147
0319: 2C 13        jrp      0x032D
031B: E1 A4        cal      0x01A4
031D: 3A 05        jrcp     0x0323
031F: E1 3C        cal      0x013C
0321: 2D 0D        jrm      0x0315
0323: E2 4F        cal      0x024F
0325: E0 C2        cal      0x00C2
0327: E1 A4        cal      0x01A4
0329: 2D 15        jrm      0x0315
032B: E2 2F        cal      0x022F
032D: E3 30        cal      0x0330
032F: 37           rtn
0330: E1 1B        cal      0x011B
0332: 3A 17        jrcp     0x034A
0334: A1           lp       0x21
0335: 62 0F        tsim     0x0F
0337: 38 07        jrzp     0x033F
0339: E0 DD        cal      0x00DD
033B: E1 CD        cal      0x01CD
033D: 2C 0E        jrp      0x034C
033F: A2           lp       0x22
0340: 62 F0        tsim     0xF0
0342: 28 09        jrnzp    0x034C
0344: E1 04        cal      0x0104
0346: E1 DA        cal      0x01DA
0348: 2D 0A        jrm      0x033F
034A: E0 9F        cal      0x009F
034C: A0           lp       0x20
034D: 62 F0        tsim     0xF0
034F: 38 18        jrzp     0x0368
0351: 59           ldm
0352: 64 F0        ania     0xF0
0354: 67 10        cpia     0x10
0356: 7E 0B 41     jpz      0x0B41
0359: 67 80        cpia     0x80
035B: 38 0A        jrzp     0x0366
035D: 62 0F        tsim     0x0F
035F: 28 08        jrnzp    0x0368
0361: 50           incp
0362: 62 F0        tsim     0xF0
0364: 28 03        jrnzp    0x0368
0366: E0 9F        cal      0x009F
0368: 37           rtn
0369: E2 21        cal      0x0221
036B: E1 61        cal      0x0161
036D: E1 47        cal      0x0147
036F: E1 04        cal      0x0104
0371: E4 B4        cal      0x04B4
0373: E2 A9        cal      0x02A9
0375: 89           lp       0x09
0376: 02 0C        lia      0x0C
0378: DB           exam
0379: E0 B8        cal      0x00B8
037B: 89           lp       0x09
037C: 59           ldm
037D: D1           rc
037E: D2           sr
037F: 3A 08        jrcp     0x0388
0381: 74 31        adia     0x31
0383: 30           stp
0384: 59           ldm
0385: 58           swp
0386: 2C 05        jrp      0x038C
0388: 74 31        adia     0x31
038A: 30           stp
038B: 59           ldm
038C: 64 0F        ania     0x0F
038E: 88           lp       0x08
038F: DB           exam
0390: 49           deck
0391: 3A 05        jrcp     0x0397
0393: E2 CD        cal      0x02CD
0395: 2D 06        jrm      0x0390
0397: C9           decl
0398: 38 05        jrzp     0x039E
039A: E0 DD        cal      0x00DD
039C: 2D 22        jrm      0x037B
039E: E2 BB        cal      0x02BB
03A0: E3 30        cal      0x0330
03A2: 37           rtn
03A3: E1 2F        cal      0x012F
03A5: E1 CD        cal      0x01CD
03A7: E1 B6        cal      0x01B6
03A9: E2 40        cal      0x0240
03AB: E2 A9        cal      0x02A9
03AD: E0 C5        cal      0x00C5
03AF: 91           lp       0x11
03B0: 61 10        orim     0x10
03B2: 88           lp       0x08
03B3: 02 31        lia      0x31
03B5: DB           exam
03B6: 02 31        lia      0x31
03B8: 30           stp
03B9: 59           ldm
03BA: 58           swp
03BB: 89           lp       0x09
03BC: DB           exam
03BD: E2 DB        cal      0x02DB
03BF: 3A 0B        jrcp     0x03CB
03C1: 89           lp       0x09
03C2: 70 10        adim     0x10
03C4: 2B 08        jrncm    0x03BD
03C6: E2 BB        cal      0x02BB
03C8: 79 0B 41     jp       0x0B41
03CB: E2 D4        cal      0x02D4
03CD: E1 15        cal      0x0115
03CF: 91           lp       0x11
03D0: 62 10        tsim     0x10
03D2: 38 18        jrzp     0x03EB
03D4: 60 EF        anim     0xEF
03D6: 89           lp       0x09
03D7: 59           ldm
03D8: 58           swp
03D9: 34           push
03DA: 88           lp       0x08
03DB: 59           ldm
03DC: 30           stp
03DD: 5B           pop
03DE: DB           exam
03DF: 88           lp       0x08
03E0: 70 01        adim     0x01
03E2: 63 38        cpim     0x38
03E4: 38 0D        jrzp     0x03F2
03E6: 89           lp       0x09
03E7: 60 00        anim     0x00
03E9: 2D 2D        jrm      0x03BD
03EB: 91           lp       0x11
03EC: 61 10        orim     0x10
03EE: 89           lp       0x09
03EF: 59           ldm
03F0: 2D 37        jrm      0x03BA
03F2: E2 BB        cal      0x02BB
03F4: E3 FB        cal      0x03FB
03F6: E1 47        cal      0x0147
03F8: E3 30        cal      0x0330
03FA: 37           rtn
03FB: A1           lp       0x21
03FC: 59           ldm
03FD: 13 31        liq      0x31
03FF: 00 06        lii      0x06
0401: 08           mvw
0402: A1           lp       0x21
0403: 60 0F        anim     0x0F
0405: 64 F0        ania     0xF0
0407: 47           orma
0408: 37           rtn
0409: 91           lp       0x11
040A: 62 01        tsim     0x01
040C: 7C 0B 41     jpnz     0x0B41
040F: E4 B4        cal      0x04B4
0411: E0 D2        cal      0x00D2
0413: E2 21        cal      0x0221
0415: E1 59        cal      0x0159
0417: E1 59        cal      0x0159
0419: E1 59        cal      0x0159
041B: E1 59        cal      0x0159
041D: 91           lp       0x11
041E: 60 DF        anim     0xDF
0420: A1           lp       0x21
0421: 62 0F        tsim     0x0F
0423: 38 03        jrzp     0x0427
0425: E0 FE        cal      0x00FE
0427: A0           lp       0x20
0428: 62 F0        tsim     0xF0
042A: 38 05        jrzp     0x0430
042C: 60 0F        anim     0x0F
042E: 61 90        orim     0x90
0430: E3 FB        cal      0x03FB
0432: E0 C2        cal      0x00C2
0434: AA           lp       0x2A
0435: 61 10        orim     0x10
0437: 91           lp       0x11
0438: 60 EF        anim     0xEF
043A: 88           lp       0x08
043B: 02 2A        lia      0x2A
043D: DB           exam
043E: E1 DA        cal      0x01DA
0440: E2 A9        cal      0x02A9
0442: E2 E2        cal      0x02E2
0444: 3A 19        jrcp     0x045E
0446: 88           lp       0x08
0447: 59           ldm
0448: 75 29        sbia     0x29
044A: 80           lp       0x00
044B: DB           exam
044C: 88           lp       0x08
044D: 59           ldm
044E: 91           lp       0x11
044F: 62 10        tsim     0x10
0451: 28 07        jrnzp    0x0459
0453: 30           stp
0454: 02 20        lia      0x20
0456: 0C           adn
0457: 2D 16        jrm      0x0442
0459: 30           stp
045A: 02 02        lia      0x02
045C: 2D 07        jrm      0x0456
045E: 91           lp       0x11
045F: 62 20        tsim     0x20
0461: 38 08        jrzp     0x046A
0463: 60 DF        anim     0xDF
0465: A1           lp       0x21
0466: 60 0F        anim     0x0F
0468: 2D 23        jrm      0x0446
046A: E2 CD        cal      0x02CD
046C: 88           lp       0x08
046D: 59           ldm
046E: 91           lp       0x11
046F: 62 10        tsim     0x10
0471: 28 06        jrnzp    0x0478
0473: 30           stp
0474: 71 10        sbim     0x10
0476: 2C 04        jrp      0x047B
0478: 30           stp
0479: 71 01        sbim     0x01
047B: 91           lp       0x11
047C: 62 10        tsim     0x10
047E: 38 18        jrzp     0x0497
0480: 60 EF        anim     0xEF
0482: 48           inck
0483: 88           lp       0x08
0484: 63 30        cpim     0x30
0486: 28 12        jrnzp    0x0499
0488: E2 4F        cal      0x024F
048A: E2 CD        cal      0x02CD
048C: E2 CD        cal      0x02CD
048E: E2 CD        cal      0x02CD
0490: E2 CD        cal      0x02CD
0492: E2 BB        cal      0x02BB
0494: E3 30        cal      0x0330
0496: 37           rtn
0497: 61 10        orim     0x10
0499: A1           lp       0x21
049A: 62 0F        tsim     0x0F
049C: 38 04        jrzp     0x04A1
049E: 91           lp       0x11
049F: 61 20        orim     0x20
04A1: E1 04        cal      0x0104
04A3: 88           lp       0x08
04A4: 59           ldm
04A5: 91           lp       0x11
04A6: 62 10        tsim     0x10
04A8: 28 06        jrnzp    0x04AF
04AA: 30           stp
04AB: 61 10        orim     0x10
04AD: 2D 6C        jrm      0x0442
04AF: 30           stp
04B0: 61 01        orim     0x01
04B2: 2D 71        jrm      0x0442
04B4: B1           lp       0x31
04B5: 59           ldm
04B6: 13 21        liq      0x21
04B8: 00 06        lii      0x06
04BA: 08           mvw
04BB: B1           lp       0x31
04BC: 60 0F        anim     0x0F
04BE: 64 F0        ania     0xF0
04C0: 47           orma
04C1: 37           rtn
04C2: 91           lp       0x11
04C3: 61 40        orim     0x40
04C5: 2C 04        jrp      0x04CA
04C7: 91           lp       0x11
04C8: 60 BF        anim     0xBF
04CA: 91           lp       0x11
04CB: 62 01        tsim     0x01
04CD: 28 06        jrnzp    0x04D4
04CF: A2           lp       0x22
04D0: 62 F0        tsim     0xF0
04D2: 28 04        jrnzp    0x04D7
04D4: 79 0B 41     jp       0x0B41
04D7: 91           lp       0x11
04D8: 60 7F        anim     0x7F
04DA: A0           lp       0x20
04DB: 62 F0        tsim     0xF0
04DD: 38 06        jrzp     0x04E4
04DF: 91           lp       0x11
04E0: 61 80        orim     0x80
04E2: E3 A3        cal      0x03A3
04E4: E2 14        cal      0x0214
04E6: E0 C8        cal      0x00C8
04E8: A2           lp       0x22
04E9: 71 10        sbim     0x10
04EB: E3 30        cal      0x0330
04ED: E2 5D        cal      0x025D
04EF: E1 F0        cal      0x01F0
04F1: E6 FE        cal      0x06FE
04F3: E1 DA        cal      0x01DA
04F5: E0 A9        cal      0x00A9
04F7: B8           lp       0x38
04F8: 59           ldm
04F9: 64 0F        ania     0x0F
04FB: A9           lp       0x29
04FC: 60 F0        anim     0xF0
04FE: 47           orma
04FF: B9           lp       0x39
0500: 59           ldm
0501: 64 F0        ania     0xF0
0503: AA           lp       0x2A
0504: 60 0F        anim     0x0F
0506: 47           orma
0507: E3 30        cal      0x0330
0509: E2 84        cal      0x0284
050B: E3 30        cal      0x0330
050D: E2 EB        cal      0x02EB
050F: 91           lp       0x11
0510: 62 80        tsim     0x80
0512: 38 05        jrzp     0x0518
0514: 60 7F        anim     0x7F
0516: E1 3C        cal      0x013C
0518: 91           lp       0x11
0519: 62 40        tsim     0x40
051B: 38 09        jrzp     0x0525
051D: 60 BF        anim     0xBF
051F: E9 60        cal      0x0960
0521: E2 84        cal      0x0284
0523: E3 A5        cal      0x03A5
0525: 37           rtn
0526: E9 60        cal      0x0960
0528: E3 6B        cal      0x036B
052A: A0           lp       0x20
052B: 62 F0        tsim     0xF0
052D: 28 27        jrnzp    0x0555
052F: E1 DA        cal      0x01DA
0531: 3A 07        jrcp     0x0539
0533: E1 DA        cal      0x01DA
0535: 2A 2F        jrncp    0x0565
0537: E1 04        cal      0x0104
0539: E0 C8        cal      0x00C8
053B: A1           lp       0x21
053C: 59           ldm
053D: 60 F0        anim     0xF0
053F: A0           lp       0x20
0540: 60 F0        anim     0xF0
0542: 64 0F        ania     0x0F
0544: 47           orma
0545: A2           lp       0x22
0546: 59           ldm
0547: 60 0F        anim     0x0F
0549: A1           lp       0x21
054A: 60 0F        anim     0x0F
054C: 64 F0        ania     0xF0
054E: 47           orma
054F: E1 04        cal      0x0104
0551: E0 CF        cal      0x00CF
0553: 2C 09        jrp      0x055D
0555: E2 5D        cal      0x025D
0557: E1 F0        cal      0x01F0
0559: E1 D7        cal      0x01D7
055B: E0 C8        cal      0x00C8
055D: E7 02        cal      0x0702
055F: E2 4F        cal      0x024F
0561: E0 DD        cal      0x00DD
0563: 2C 09        jrp      0x056D
0565: E1 3C        cal      0x013C
0567: A0           lp       0x20
0568: 00 07        lii      0x07
056A: 02 00        lia      0x00
056C: 1E           film
056D: 91           lp       0x11
056E: 62 01        tsim     0x01
0570: 38 05        jrzp     0x0576
0572: 60 FE        anim     0xFE
0574: E3 A3        cal      0x03A3
0576: 37           rtn
0577: 90           lp       0x10
0578: 61 01        orim     0x01
057A: 2C 06        jrp      0x0581
057C: 90           lp       0x10
057D: 61 02        orim     0x02
057F: 2C 01        jrp      0x0581
0581: E3 30        cal      0x0330
0583: E2 98        cal      0x0298
0585: 91           lp       0x11
0586: 60 FE        anim     0xFE
0588: 90           lp       0x10
0589: 62 01        tsim     0x01
058B: 38 05        jrzp     0x0591
058D: 60 FE        anim     0xFE
058F: 2C 1B        jrp      0x05AB
0591: E1 F6        cal      0x01F6
0593: E3 69        cal      0x0369
0595: E1 2F        cal      0x012F
0597: E2 E9        cal      0x02E9
0599: E4 09        cal      0x0409
059B: E2 6A        cal      0x026A
059D: 90           lp       0x10
059E: 62 02        tsim     0x02
05A0: 38 03        jrzp     0x05A4
05A2: E2 84        cal      0x0284
05A4: A2           lp       0x22
05A5: 62 F0        tsim     0xF0
05A7: 38 32        jrzp     0x05DA
05A9: E3 A5        cal      0x03A5
05AB: A2           lp       0x22
05AC: 62 F0        tsim     0xF0
05AE: 38 33        jrzp     0x05E2
05B0: 90           lp       0x10
05B1: 60 FB        anim     0xFB
05B3: A0           lp       0x20
05B4: 62 F0        tsim     0xF0
05B6: 28 06        jrnzp    0x05BD
05B8: E3 A3        cal      0x03A3
05BA: 90           lp       0x10
05BB: 61 04        orim     0x04
05BD: E2 5D        cal      0x025D
05BF: E1 F0        cal      0x01F0
05C1: E7 06        cal      0x0706
05C3: E1 CD        cal      0x01CD
05C5: E3 30        cal      0x0330
05C7: 90           lp       0x10
05C8: 62 04        tsim     0x04
05CA: 38 17        jrzp     0x05E2
05CC: 60 FB        anim     0xFB
05CE: E0 A9        cal      0x00A9
05D0: AA           lp       0x2A
05D1: 61 90        orim     0x90
05D3: 51           decp
05D4: 61 10        orim     0x10
05D6: E2 E9        cal      0x02E9
05D8: 2C 09        jrp      0x05E2
05DA: E0 9F        cal      0x009F
05DC: A2           lp       0x22
05DD: 61 90        orim     0x90
05DF: 51           decp
05E0: 61 10        orim     0x10
05E2: E2 98        cal      0x0298
05E4: 90           lp       0x10
05E5: 62 02        tsim     0x02
05E7: 38 12        jrzp     0x05FA
05E9: 60 FD        anim     0xFD
05EB: 91           lp       0x11
05EC: 62 01        tsim     0x01
05EE: 38 0B        jrzp     0x05FA
05F0: E0 A9        cal      0x00A9
05F2: AA           lp       0x2A
05F3: 61 18        orim     0x18
05F5: 51           decp
05F6: 61 20        orim     0x20
05F8: E2 EB        cal      0x02EB
05FA: E6 04        cal      0x0604
05FC: 3A 02        jrcp     0x05FF
05FE: 37           rtn
05FF: E2 84        cal      0x0284
0601: E3 A5        cal      0x03A5
0603: 37           rtn
0604: E0 A9        cal      0x00A9
0606: 10 F8 3D     lidp     0xF83D
0609: D6 04        tsid     0x04
060B: 28 03        jrnzp    0x060F
060D: D1           rc
060E: 37           rtn
060F: 11 3C        lidl     0x3C
0611: D6 04        tsid     0x04
0613: 28 05        jrnzp    0x0619
0615: E9 74        cal      0x0974
0617: D0           sc
0618: 37           rtn
0619: A8           lp       0x28
061A: 61 99        orim     0x99
061C: 50           incp
061D: 61 90        orim     0x90
061F: 50           incp
0620: 61 90        orim     0x90
0622: D0           sc
0623: 37           rtn
0624: 90           lp       0x10
0625: 61 01        orim     0x01
0627: 2C 01        jrp      0x0629
0629: 8F           lp       0x0F
062A: 60 00        anim     0x00
062C: 2C 08        jrp      0x0635
062E: 91           lp       0x11
062F: 60 FE        anim     0xFE
0631: 8F           lp       0x0F
0632: 02 01        lia      0x01
0634: DB           exam
0635: E6 04        cal      0x0604
0637: 2A 0E        jrncp    0x0646
0639: E3 6B        cal      0x036B
063B: A7           lp       0x27
063C: 00 06        lii      0x06
063E: 02 06        lia      0x06
0640: 0C           adn
0641: A7           lp       0x27
0642: 60 F0        anim     0xF0
0644: E3 30        cal      0x0330
0646: E2 14        cal      0x0214
0648: E2 98        cal      0x0298
064A: 91           lp       0x11
064B: 60 FE        anim     0xFE
064D: A0           lp       0x20
064E: 59           ldm
064F: 64 F0        ania     0xF0
0651: 67 90        cpia     0x90
0653: 28 06        jrnzp    0x065A
0655: 8E           lp       0x0E
0656: 60 00        anim     0x00
0658: 2C 54        jrp      0x06AD
065A: 62 0F        tsim     0x0F
065C: 38 04        jrzp     0x0661
065E: 79 0B 41     jp       0x0B41
0661: E0 A9        cal      0x00A9
0663: A9           lp       0x29
0664: 61 36        orim     0x36
0666: E0 C8        cal      0x00C8
0668: E6 F7        cal      0x06F7
066A: 3A 06        jrcp     0x0671
066C: 8E           lp       0x0E
066D: 70 01        adim     0x01
066F: 2D 08        jrm      0x0668
0671: E1 59        cal      0x0159
0673: A9           lp       0x29
0674: 59           ldm
0675: 64 0F        ania     0x0F
0677: 67 09        cpia     0x09
0679: 38 13        jrzp     0x068D
067B: E1 D0        cal      0x01D0
067D: 3A 05        jrcp     0x0683
067F: E0 F9        cal      0x00F9
0681: 2D 1A        jrm      0x0668
0683: E0 A9        cal      0x00A9
0685: A9           lp       0x29
0686: 61 09        orim     0x09
0688: 8E           lp       0x0E
0689: 60 00        anim     0x00
068B: 2D 24        jrm      0x0668
068D: 8F           lp       0x0F
068E: 59           ldm
068F: 8E           lp       0x0E
0690: 44           adm
0691: 59           ldm
0692: 8F           lp       0x0F
0693: DB           exam
0694: AA           lp       0x2A
0695: 61 50        orim     0x50
0697: 51           decp
0698: 60 F0        anim     0xF0
069A: 61 04        orim     0x04
069C: E1 8B        cal      0x018B
069E: 2A 05        jrncp    0x06A4
06A0: E1 82        cal      0x0182
06A2: 2C 08        jrp      0x06AB
06A4: E1 A4        cal      0x01A4
06A6: E2 4F        cal      0x024F
06A8: 8F           lp       0x0F
06A9: 70 01        adim     0x01
06AB: E3 30        cal      0x0330
06AD: E1 DA        cal      0x01DA
06AF: E2 5D        cal      0x025D
06B1: E1 F0        cal      0x01F0
06B3: E7 0A        cal      0x070A
06B5: E2 84        cal      0x0284
06B7: E0 C8        cal      0x00C8
06B9: E3 A5        cal      0x03A5
06BB: E2 98        cal      0x0298
06BD: 90           lp       0x10
06BE: 62 01        tsim     0x01
06C0: 38 12        jrzp     0x06D3
06C2: 60 FE        anim     0xFE
06C4: 8F           lp       0x0F
06C5: 62 01        tsim     0x01
06C7: 38 03        jrzp     0x06CB
06C9: E3 A3        cal      0x03A3
06CB: 8E           lp       0x0E
06CC: 62 01        tsim     0x01
06CE: 38 03        jrzp     0x06D2
06D0: E1 3C        cal      0x013C
06D2: 37           rtn
06D3: E1 F6        cal      0x01F6
06D5: E3 69        cal      0x0369
06D7: E1 2F        cal      0x012F
06D9: E2 EB        cal      0x02EB
06DB: E4 09        cal      0x0409
06DD: E2 6A        cal      0x026A
06DF: 8F           lp       0x0F
06E0: 62 01        tsim     0x01
06E2: 38 0A        jrzp     0x06ED
06E4: A8           lp       0x28
06E5: 00 07        lii      0x07
06E7: 02 00        lia      0x00
06E9: 1E           film
06EA: AA           lp       0x2A
06EB: 61 10        orim     0x10
06ED: 8E           lp       0x0E
06EE: 62 02        tsim     0x02
06F0: 38 03        jrzp     0x06F4
06F2: E1 3C        cal      0x013C
06F4: E3 A5        cal      0x03A5
06F6: 37           rtn
06F7: A7           lp       0x27
06F8: 13 2F        liq      0x2F
06FA: 00 07        lii      0x07
06FC: 0F           sbw
06FD: 37           rtn
06FE: 02 10        lia      0x10
0700: 2C 0B        jrp      0x070C
0702: 02 C0        lia      0xC0
0704: 2C 07        jrp      0x070C
0706: 02 00        lia      0x00
0708: 2C 03        jrp      0x070C
070A: 02 60        lia      0x60
070C: 90           lp       0x10
070D: 60 0F        anim     0x0F
070F: 47           orma
0710: E0 B5        cal      0x00B5
0712: 8D           lp       0x0D
0713: 60 00        anim     0x00
0715: E0 C2        cal      0x00C2
0717: 90           lp       0x10
0718: 62 40        tsim     0x40
071A: 28 5B        jrnzp    0x0776
071C: AA           lp       0x2A
071D: 61 10        orim     0x10
071F: 90           lp       0x10
0720: 62 10        tsim     0x10
0722: 28 0B        jrnzp    0x072E
0724: E8 16        cal      0x0816
0726: 58           swp
0727: B0           lp       0x30
0728: 60 0F        anim     0x0F
072A: 47           orma
072B: 44           adm
072C: 2C 08        jrp      0x0735
072E: E7 F1        cal      0x07F1
0730: 58           swp
0731: B0           lp       0x30
0732: 60 0F        anim     0x0F
0734: 47           orma
0735: E2 A9        cal      0x02A9
0737: 90           lp       0x10
0738: 62 10        tsim     0x10
073A: 28 03        jrnzp    0x073E
073C: E4 B4        cal      0x04B4
073E: E2 E2        cal      0x02E2
0740: 2A 0C        jrncp    0x074D
0742: E2 CD        cal      0x02CD
0744: E2 BB        cal      0x02BB
0746: 8D           lp       0x0D
0747: 63 0C        cpim     0x0C
0749: 28 1E        jrnzp    0x0768
074B: 2C E0        jrp      0x082C
074D: BF           lp       0x3F
074E: 70 01        adim     0x01
0750: 90           lp       0x10
0751: 62 40        tsim     0x40
0753: 29 16        jrnzm    0x073E
0755: 90           lp       0x10
0756: 62 10        tsim     0x10
0758: 38 03        jrzp     0x075C
075A: E7 89        cal      0x0789
075C: B0           lp       0x30
075D: 59           ldm
075E: 64 F0        ania     0xF0
0760: 67 E0        cpia     0xE0
0762: 39 2C        jrzm     0x0737
0764: E7 97        cal      0x0797
0766: 2D 30        jrm      0x0737
0768: 8D           lp       0x0D
0769: 70 01        adim     0x01
076B: E1 C5        cal      0x01C5
076D: E1 18        cal      0x0118
076F: E1 04        cal      0x0104
0771: 90           lp       0x10
0772: 62 40        tsim     0x40
0774: 39 56        jrzm     0x071F
0776: 90           lp       0x10
0777: 62 20        tsim     0x20
0779: 28 07        jrnzp    0x0781
077B: E7 F1        cal      0x07F1
077D: E8 B2        cal      0x08B2
077F: 2C 05        jrp      0x0785
0781: E8 16        cal      0x0816
0783: E8 DE        cal      0x08DE
0785: E2 A9        cal      0x02A9
0787: 2D 4A        jrm      0x073E
0789: B1           lp       0x31
078A: 59           ldm
078B: 13 29        liq      0x29
078D: 00 06        lii      0x06
078F: 08           mvw
0790: B1           lp       0x31
0791: 60 0F        anim     0x0F
0793: 64 F0        ania     0xF0
0795: 47           orma
0796: 37           rtn
0797: 90           lp       0x10
0798: 61 08        orim     0x08
079A: 2C 04        jrp      0x079F
079C: 90           lp       0x10
079D: 60 F7        anim     0xF7
079F: B1           lp       0x31
07A0: 59           ldm
07A1: 60 0F        anim     0x0F
07A3: 64 F0        ania     0xF0
07A5: 34           push
07A6: B0           lp       0x30
07A7: 62 10        tsim     0x10
07A9: 38 05        jrzp     0x07AF
07AB: B1           lp       0x31
07AC: 00 06        lii      0x06
07AE: 1C           srw
07AF: 00 06        lii      0x06
07B1: B0           lp       0x30
07B2: 59           ldm
07B3: 58           swp
07B4: 64 0F        ania     0x0F
07B6: D1           rc
07B7: D2           sr
07B8: 80           lp       0x00
07B9: 45           sbm
07BA: 59           ldm
07BB: 74 31        adia     0x31
07BD: 31           stq
07BE: A9           lp       0x29
07BF: 59           ldm
07C0: 64 F0        ania     0xF0
07C2: 34           push
07C3: 90           lp       0x10
07C4: 62 08        tsim     0x08
07C6: 38 05        jrzp     0x07CC
07C8: AF           lp       0x2F
07C9: 0E           adw
07CA: 2C 03        jrp      0x07CE
07CC: AF           lp       0x2F
07CD: 0F           sbw
07CE: 2A 19        jrncp    0x07E8
07D0: 20           ldp
07D1: 75 29        sbia     0x29
07D3: 80           lp       0x00
07D4: DB           exam
07D5: 59           ldm
07D6: 74 29        adia     0x29
07D8: 90           lp       0x10
07D9: 62 08        tsim     0x08
07DB: 38 08        jrzp     0x07E4
07DD: 30           stp
07DE: 02 01        lia      0x01
07E0: 0C           adn
07E1: 79 07 E8     jp       0x07E8
07E4: 30           stp
07E5: 02 01        lia      0x01
07E7: 0D           sbn
07E8: 5B           pop
07E9: A9           lp       0x29
07EA: 60 0F        anim     0x0F
07EC: 47           orma
07ED: 5B           pop
07EE: B1           lp       0x31
07EF: 47           orma
07F0: 37           rtn
07F1: A8           lp       0x28
07F2: 62 F0        tsim     0xF0
07F4: 28 1E        jrnzp    0x0813
07F6: 59           ldm
07F7: 64 0F        ania     0x0F
07F9: 67 01        cpia     0x01
07FB: 28 0D        jrnzp    0x0809
07FD: A9           lp       0x29
07FE: 59           ldm
07FF: 64 F0        ania     0xF0
0801: 67 30        cpia     0x30
0803: 2A 0F        jrncp    0x0813
0805: 58           swp
0806: 74 0A        adia     0x0A
0808: 37           rtn
0809: 67 00        cpia     0x00
080B: 28 07        jrnzp    0x0813
080D: A9           lp       0x29
080E: 59           ldm
080F: 58           swp
0810: 64 0F        ania     0x0F
0812: 37           rtn
0813: 02 0E        lia      0x0E
0815: 37           rtn
0816: A8           lp       0x28
0817: 62 F0        tsim     0xF0
0819: 28 0F        jrnzp    0x0829
081B: 62 0F        tsim     0x0F
081D: 28 0B        jrnzp    0x0829
081F: A9           lp       0x29
0820: 59           ldm
0821: 58           swp
0822: 64 0F        ania     0x0F
0824: 67 08        cpia     0x08
0826: 2A 02        jrncp    0x0829
0828: 37           rtn
0829: 02 07        lia      0x07
082B: 37           rtn
082C: E0 B8        cal      0x00B8
082E: 90           lp       0x10
082F: 62 40        tsim     0x40
0831: 38 54        jrzp     0x0886
0833: E0 C2        cal      0x00C2
0835: A9           lp       0x29
0836: 61 01        orim     0x01
0838: 90           lp       0x10
0839: 62 80        tsim     0x80
083B: 38 0A        jrzp     0x0846
083D: E7 F1        cal      0x07F1
083F: 58           swp
0840: B0           lp       0x30
0841: 60 0F        anim     0x0F
0843: 47           orma
0844: 2C 09        jrp      0x084E
0846: E8 16        cal      0x0816
0848: 58           swp
0849: B0           lp       0x30
084A: 60 0F        anim     0x0F
084C: 47           orma
084D: 44           adm
084E: BF           lp       0x3F
084F: 59           ldm
0850: 64 F0        ania     0xF0
0852: 60 0F        anim     0x0F
0854: 71 01        sbim     0x01
0856: 60 0F        anim     0x0F
0858: 47           orma
0859: 3A 3D        jrcp     0x0897
085B: 90           lp       0x10
085C: 62 40        tsim     0x40
085E: 28 05        jrnzp    0x0864
0860: E1 82        cal      0x0182
0862: 2D 15        jrm      0x084E
0864: 90           lp       0x10
0865: 62 80        tsim     0x80
0867: 38 05        jrzp     0x086D
0869: E7 89        cal      0x0789
086B: 2C 05        jrp      0x0871
086D: E4 B4        cal      0x04B4
086F: E1 82        cal      0x0182
0871: B0           lp       0x30
0872: 59           ldm
0873: 64 F0        ania     0xF0
0875: 67 E0        cpia     0xE0
0877: 39 2A        jrzm     0x084E
0879: 90           lp       0x10
087A: 62 80        tsim     0x80
087C: 38 05        jrzp     0x0882
087E: E7 97        cal      0x0797
0880: 2D 33        jrm      0x084E
0882: E7 9C        cal      0x079C
0884: 2D 37        jrm      0x084E
0886: 90           lp       0x10
0887: 62 10        tsim     0x10
0889: 38 07        jrzp     0x0891
088B: E7 F1        cal      0x07F1
088D: E8 B2        cal      0x08B2
088F: 2D 42        jrm      0x084E
0891: E8 16        cal      0x0816
0893: E8 DE        cal      0x08DE
0895: 2D 48        jrm      0x084E
0897: 8D           lp       0x0D
0898: 71 01        sbim     0x01
089A: 3A 13        jrcp     0x08AE
089C: E1 D7        cal      0x01D7
089E: E0 F2        cal      0x00F2
08A0: 90           lp       0x10
08A1: 62 80        tsim     0x80
08A3: 28 03        jrnzp    0x08A7
08A5: E0 DD        cal      0x00DD
08A7: 90           lp       0x10
08A8: 62 40        tsim     0x40
08AA: 39 25        jrzm     0x0886
08AC: 2D 75        jrm      0x0838
08AE: 90           lp       0x10
08AF: 60 0F        anim     0x0F
08B1: 37           rtn
08B2: 67 0D        cpia     0x0D
08B4: 3A 03        jrcp     0x08B8
08B6: 02 0C        lia      0x0C
08B8: DA           exab
08B9: 85           lp       0x05
08BA: 02 08        lia      0x08
08BC: DB           exam
08BD: 84           lp       0x04
08BE: 02 E8        lia      0xE8
08C0: DB           exam
08C1: DA           exab
08C2: 03 00        lib      0x00
08C4: 83           lp       0x03
08C5: 44           adm
08C6: 44           adm
08C7: 44           adm
08C8: 44           adm
08C9: 44           adm
08CA: 44           adm
08CB: DA           exab
08CC: 03 00        lib      0x00
08CE: 84           lp       0x04
08CF: 14           adb
08D0: 13 04        liq      0x04
08D2: 82           lp       0x02
08D3: 01 01        lij      0x01
08D5: 0A           mvb
08D6: AA           lp       0x2A
08D7: 00 05        lii      0x05
08D9: 35           data
08DA: A9           lp       0x29
08DB: 60 F0        anim     0xF0
08DD: 37           rtn
08DE: 74 0D        adia     0x0D
08E0: 67 14        cpia     0x14
08E2: 3B 2B        jrcm     0x08B8
08E4: 02 13        lia      0x13
08E6: 2D 2F        jrm      0x08B8
08E8: 30           stp
08E9: 10 29 99     lidp     0x2999
08EC: 56           read
08ED: 64 41        ania     0x41
08EF: 39 26        jrzm     0x08CA
08F1: 85           lp       0x05
08F2: 15           sbb
08F3: 82           lp       0x02
08F4: 43           deca
08F5: 21           ldq
08F6: 37           rtn
08F7: 37           rtn
08F8: 82           lp       0x02
08F9: 64 43        ania     0x43
08FB: 40           inci
08FC: 77           ???
08FD: 47           orma
08FE: 93           lp       0x13
08FF: 19           exwd
0900: 43           deca
0901: 42           inca
0902: 72           ???
0903: 76           ???
0904: 86           lp       0x06
0905: 27           dys
0906: 43           deca
0907: 42           inca
0908: 92           lp       0x12
0909: 31           stq
090A: 04           ix
090B: 45           sbm
090C: 43           deca
090D: 42           inca
090E: 94           lp       0x14
090F: 26           iys
0910: 47           orma
0911: 56           read
0912: 43           deca
0913: 42           inca
0914: 94           lp       0x14
0915: 46           anma
0916: 01 89        lij      0x89
0918: 43           deca
0919: 42           inca
091A: 94           lp       0x14
091B: 47           orma
091C: 97           lp       0x17
091D: 32           str
091E: 43           deca
091F: 42           inca
0920: 94           lp       0x14
0921: 48           inck
0922: 16 86 43     .case    0x16, 0x8643
0925: 42           inca
0926: 94           lp       0x14
0927: 48           inck
0928: 18           mvwd
0929: 82           lp       0x02
092A: 43           deca
092B: 42           inca
092C: 94           lp       0x14
092D: 48           inck
092E: 19           exwd
092F: 01 43        lij      0x43
0931: 42           inca
0932: 94           lp       0x14
0933: 48           inck
0934: 19           exwd
0935: 03 45        lib      0x45
0937: 00 00        lii      0x00
0939: 00 00        lii      0x00
093B: 00 57        lii      0x57
093D: 10 59 31     lidp     0x5931
0940: 37           rtn
0941: 50           incp
0942: 57           ldd
0943: 29 38        jrnzm    0x090C
0945: 69           ptj
0946: 76           ???
0947: 83           lp       0x03
0948: 57           ldd
0949: 29 57        jrnzm    0x08F3
094B: 60 41        anim     0x41
094D: 45           sbm
094E: 57           ldd
094F: 29 57        jrnzm    0x08F9
0951: 79 32 21     jp       0x3221
0954: 57           ldd
0955: 29 57        jrnzm    0x08FF
0957: 79 51 11     jp       0x5111
095A: 57           ldd
095B: 29 57        jrnzm    0x0905
095D: 79 51 31     jp       0x5131
0960: 03 09        lib      0x09
0962: 02 6C        lia      0x6C
0964: A8           lp       0x28
0965: 00 07        lii      0x07
0967: 35           data
0968: 91           lp       0x11
0969: 60 FD        anim     0xFD
096B: 37           rtn
096C: 99           lp       0x19
096D: 90           lp       0x10
096E: 43           deca
096F: 42           inca
0970: 94           lp       0x14
0971: 48           inck
0972: 19           exwd
0973: 03 03        lib      0x03
0975: 09           exw
0976: 02 7A        lia      0x7A
0978: 2D 15        jrm      0x0964
097A: 00 10        lii      0x10
097C: 57           ldd
097D: 29 57        jrnzm    0x0927
097F: 79 51 31     jp       0x5131
0982: E2 84        cal      0x0284
0984: E1 1B        cal      0x011B
0986: 2A 12        jrncp    0x0999
0988: 91           lp       0x11
0989: 62 02        tsim     0x02
098B: 28 0A        jrnzp    0x0996
098D: E2 84        cal      0x0284
098F: E1 1B        cal      0x011B
0991: 3A 04        jrcp     0x0996
0993: E2 84        cal      0x0284
0995: 37           rtn
0996: 79 0B 41     jp       0x0B41
0999: 91           lp       0x11
099A: 62 01        tsim     0x01
099C: 38 5D        jrzp     0x09FA
099E: A8           lp       0x28
099F: 59           ldm
09A0: 64 F0        ania     0xF0
09A2: 67 90        cpia     0x90
09A4: 39 0F        jrzm     0x0996
09A6: 88           lp       0x08
09A7: 02 05        lia      0x05
09A9: DB           exam
09AA: A8           lp       0x28
09AB: 59           ldm
09AC: 64 0F        ania     0x0F
09AE: 38 17        jrzp     0x09C6
09B0: 67 01        cpia     0x01
09B2: 38 06        jrzp     0x09B9
09B4: 91           lp       0x11
09B5: 61 20        orim     0x20
09B7: 2C 3C        jrp      0x09F4
09B9: A9           lp       0x29
09BA: 59           ldm
09BB: 64 F0        ania     0xF0
09BD: 67 20        cpia     0x20
09BF: 2B 0C        jrncm    0x09B4
09C1: 58           swp
09C2: 74 0A        adia     0x0A
09C4: 2C 06        jrp      0x09CB
09C6: A9           lp       0x29
09C7: 59           ldm
09C8: 64 F0        ania     0xF0
09CA: 58           swp
09CB: 88           lp       0x08
09CC: D1           rc
09CD: D2           sr
09CE: 2A 09        jrncp    0x09D8
09D0: EA 13        cal      0x0A13
09D2: 62 01        tsim     0x01
09D4: E9 EC        cal      0x09EC
09D6: 2C 0B        jrp      0x09E2
09D8: EA 13        cal      0x0A13
09DA: 62 10        tsim     0x10
09DC: E9 EC        cal      0x09EC
09DE: 62 0F        tsim     0x0F
09E0: 29 4B        jrnzm    0x0996
09E2: 49           deck
09E3: 3A 10        jrcp     0x09F4
09E5: 50           incp
09E6: 63 00        cpim     0x00
09E8: 29 53        jrnzm    0x0996
09EA: 2D 09        jrm      0x09E2
09EC: 28 06        jrnzp    0x09F3
09EE: 91           lp       0x11
09EF: 61 20        orim     0x20
09F1: DA           exab
09F2: 30           stp
09F3: 37           rtn
09F4: 91           lp       0x11
09F5: 60 FE        anim     0xFE
09F7: 90           lp       0x10
09F8: 61 04        orim     0x04
09FA: EA 19        cal      0x0A19
09FC: E4 C7        cal      0x04C7
09FE: EA 28        cal      0x0A28
0A00: E2 84        cal      0x0284
0A02: E3 6B        cal      0x036B
0A04: E5 2A        cal      0x052A
0A06: 90           lp       0x10
0A07: 62 04        tsim     0x04
0A09: 38 08        jrzp     0x0A12
0A0B: 91           lp       0x11
0A0C: 62 20        tsim     0x20
0A0E: 28 03        jrnzp    0x0A12
0A10: 61 01        orim     0x01
0A12: 37           rtn
0A13: 45           sbm
0A14: 74 2A        adia     0x2A
0A16: 30           stp
0A17: DA           exab
0A18: 37           rtn
0A19: 91           lp       0x11
0A1A: 62 02        tsim     0x02
0A1C: 38 04        jrzp     0x0A21
0A1E: A9           lp       0x29
0A1F: 61 08        orim     0x08
0A21: A8           lp       0x28
0A22: 10 C6 BC     lidp     0xC6BC
0A25: 00 07        lii      0x07
0A27: 19           exwd
0A28: A8           lp       0x28
0A29: 10 C6 BC     lidp     0xC6BC
0A2C: 00 07        lii      0x07
0A2E: 18           mvwd
0A2F: A9           lp       0x29
0A30: 62 08        tsim     0x08
0A32: 38 06        jrzp     0x0A39
0A34: 60 F7        anim     0xF7
0A36: 91           lp       0x11
0A37: 61 02        orim     0x02
0A39: 37           rtn
0A3A: EA E1        cal      0x0AE1
0A3C: EA 63        cal      0x0A63
0A3E: E3 30        cal      0x0330
0A40: E2 78        cal      0x0278
0A42: EA A0        cal      0x0AA0
0A44: E3 6B        cal      0x036B
0A46: E2 6A        cal      0x026A
0A48: E2 EB        cal      0x02EB
0A4A: EA 69        cal      0x0A69
0A4C: E3 30        cal      0x0330
0A4E: E2 78        cal      0x0278
0A50: EA A0        cal      0x0AA0
0A52: E3 6B        cal      0x036B
0A54: 10 C6 BB     lidp     0xC6BB
0A57: D5 01        orid     0x01
0A59: E2 6A        cal      0x026A
0A5B: E2 EB        cal      0x02EB
0A5D: EA F9        cal      0x0AF9
0A5F: 01 01        lij      0x01
0A61: D1           rc
0A62: 37           rtn
0A63: E2 21        cal      0x0221
0A65: E1 DA        cal      0x01DA
0A67: 2C 05        jrp      0x0A6D
0A69: E2 21        cal      0x0221
0A6B: E1 CD        cal      0x01CD
0A6D: E0 B8        cal      0x00B8
0A6F: A0           lp       0x20
0A70: 59           ldm
0A71: 64 F0        ania     0xF0
0A73: 67 90        cpia     0x90
0A75: 28 13        jrnzp    0x0A89
0A77: E1 CD        cal      0x01CD
0A79: A0           lp       0x20
0A7A: 59           ldm
0A7B: 64 F0        ania     0xF0
0A7D: 67 90        cpia     0x90
0A7F: 28 05        jrnzp    0x0A85
0A81: 02 0B        lia      0x0B
0A83: 2C 17        jrp      0x0A9B
0A85: 02 0A        lia      0x0A
0A87: 2C 13        jrp      0x0A9B
0A89: 67 10        cpia     0x10
0A8B: 38 11        jrzp     0x0A9D
0A8D: 62 0F        tsim     0x0F
0A8F: 28 0D        jrnzp    0x0A9D
0A91: A1           lp       0x21
0A92: 59           ldm
0A93: 64 F0        ania     0xF0
0A95: 58           swp
0A96: 03 09        lib      0x09
0A98: 83           lp       0x03
0A99: 45           sbm
0A9A: 59           ldm
0A9B: EA AC        cal      0x0AAC
0A9D: E2 40        cal      0x0240
0A9F: 37           rtn
0AA0: E0 A9        cal      0x00A9
0AA2: AA           lp       0x2A
0AA3: 61 60        orim     0x60
0AA5: 51           decp
0AA6: 61 90        orim     0x90
0AA8: 51           decp
0AA9: 61 99        orim     0x99
0AAB: 37           rtn
0AAC: 90           lp       0x10
0AAD: 60 FE        anim     0xFE
0AAF: D1           rc
0AB0: D2           sr
0AB1: 2A 03        jrncp    0x0AB5
0AB3: 61 01        orim     0x01
0AB5: 80           lp       0x00
0AB6: DB           exam
0AB7: 59           ldm
0AB8: 01 2F        lij      0x2F
0ABA: 81           lp       0x01
0ABB: 45           sbm
0ABC: 59           ldm
0ABD: 31           stq
0ABE: 75 08        sbia     0x08
0AC0: 34           push
0AC1: 90           lp       0x10
0AC2: 62 01        tsim     0x01
0AC4: 38 0B        jrzp     0x0AD0
0AC6: 30           stp
0AC7: 08           mvw
0AC8: 5B           pop
0AC9: 74 08        adia     0x08
0ACB: 30           stp
0ACC: 02 00        lia      0x00
0ACE: 1E           film
0ACF: 37           rtn
0AD0: 30           stp
0AD1: 08           mvw
0AD2: 5B           pop
0AD3: 30           stp
0AD4: 60 0F        anim     0x0F
0AD6: 20           ldp
0AD7: 74 08        adia     0x08
0AD9: 30           stp
0ADA: 60 F0        anim     0xF0
0ADC: 50           incp
0ADD: 41           deci
0ADE: 2B 13        jrncm    0x0ACC
0AE0: 37           rtn
0AE1: 91           lp       0x11
0AE2: 60 00        anim     0x00
0AE4: A1           lp       0x21
0AE5: 62 08        tsim     0x08
0AE7: 38 06        jrzp     0x0AEE
0AE9: 60 F7        anim     0xF7
0AEB: 91           lp       0x11
0AEC: 61 01        orim     0x01
0AEE: 22           ldr
0AEF: 74 02        adia     0x02
0AF1: 10 C6 BA     lidp     0xC6BA
0AF4: 52           std
0AF5: 90           lp       0x10
0AF6: 60 00        anim     0x00
0AF8: 37           rtn
0AF9: 02 00        lia      0x00
0AFB: 91           lp       0x11
0AFC: 62 01        tsim     0x01
0AFE: 38 03        jrzp     0x0B02
0B00: 02 08        lia      0x08
0B02: A1           lp       0x21
0B03: 60 F7        anim     0xF7
0B05: D1           rc
0B06: 47           orma
0B07: 01 01        lij      0x01
0B09: 37           rtn
0B0A: 91           lp       0x11
0B0B: 60 00        anim     0x00
0B0D: A9           lp       0x29
0B0E: 62 08        tsim     0x08
0B10: 38 06        jrzp     0x0B17
0B12: 60 F7        anim     0xF7
0B14: 91           lp       0x11
0B15: 61 02        orim     0x02
0B17: 2D 34        jrm      0x0AE4
0B19: A9           lp       0x29
0B1A: 60 F7        anim     0xF7
0B1C: 91           lp       0x11
0B1D: 62 02        tsim     0x02
0B1F: 38 04        jrzp     0x0B24
0B21: A9           lp       0x29
0B22: 61 08        orim     0x08
0B24: 2D 2C        jrm      0x0AF9
0B26: A1           lp       0x21
0B27: 60 F7        anim     0xF7
0B29: D1           rc
0B2A: 37           rtn
0B2B: EA E1        cal      0x0AE1
0B2D: E1 1B        cal      0x011B
0B2F: 3A EC        jrcp     0x0C1C
0B31: 91           lp       0x11
0B32: 62 01        tsim     0x01
0B34: 28 05        jrnzp    0x0B3A
0B36: E0 9F        cal      0x009F
0B38: 2C D9        jrp      0x0C12
0B3A: E0 9F        cal      0x009F
0B3C: A1           lp       0x21
0B3D: 61 08        orim     0x08
0B3F: 2D 08        jrm      0x0B38
0B41: 10 C6 BA     lidp     0xC6BA
0B44: 57           ldd
0B45: 32           str
0B46: 94           lp       0x14
0B47: 02 02        lia      0x02
0B49: DB           exam
0B4A: D0           sc
0B4B: 37           rtn
0B4C: EC 20        cal      0x0C20
0B4E: 3A 08        jrcp     0x0B57
0B50: EB 0A        cal      0x0B0A
0B52: E2 EB        cal      0x02EB
0B54: EB 19        cal      0x0B19
0B56: 37           rtn
0B57: 13 2D        liq      0x2D
0B59: A5           lp       0x25
0B5A: 01 01        lij      0x01
0B5C: 0A           mvb
0B5D: AF           lp       0x2F
0B5E: 59           ldm
0B5F: A7           lp       0x27
0B60: 44           adm
0B61: D1           rc
0B62: 37           rtn
0B63: EC 20        cal      0x0C20
0B65: 3A 08        jrcp     0x0B6E
0B67: EB 0A        cal      0x0B0A
0B69: E2 E9        cal      0x02E9
0B6B: EB 19        cal      0x0B19
0B6D: 37           rtn
0B6E: 94           lp       0x14
0B6F: 02 09        lia      0x09
0B71: DB           exam
0B72: D0           sc
0B73: 37           rtn
0B74: ED B8        cal      0x0DB8
0B76: EB 0A        cal      0x0B0A
0B78: E3 6B        cal      0x036B
0B7A: EB 19        cal      0x0B19
0B7C: 37           rtn
0B7D: ED B8        cal      0x0DB8
0B7F: EB 0A        cal      0x0B0A
0B81: E3 A5        cal      0x03A5
0B83: EB 19        cal      0x0B19
0B85: 37           rtn
0B86: ED B8        cal      0x0DB8
0B88: EB 0A        cal      0x0B0A
0B8A: E9 82        cal      0x0982
0B8C: EB 19        cal      0x0B19
0B8E: 37           rtn
0B8F: EA E1        cal      0x0AE1
0B91: E4 09        cal      0x0409
0B93: EA F9        cal      0x0AF9
0B95: 37           rtn
0B96: EA E1        cal      0x0AE1
0B98: E6 29        cal      0x0629
0B9A: 2D 08        jrm      0x0B93
0B9C: EA E1        cal      0x0AE1
0B9E: E6 2E        cal      0x062E
0BA0: 2D 0E        jrm      0x0B93
0BA2: EA E1        cal      0x0AE1
0BA4: E6 24        cal      0x0624
0BA6: E1 1B        cal      0x011B
0BA8: 2A 04        jrncp    0x0BAD
0BAA: 91           lp       0x11
0BAB: 60 FE        anim     0xFE
0BAD: 2D 1B        jrm      0x0B93
0BAF: EA E1        cal      0x0AE1
0BB1: E5 81        cal      0x0581
0BB3: 2D 21        jrm      0x0B93
0BB5: EA E1        cal      0x0AE1
0BB7: E5 7C        cal      0x057C
0BB9: 2D 27        jrm      0x0B93
0BBB: EA E1        cal      0x0AE1
0BBD: E5 77        cal      0x0577
0BBF: 2D 2D        jrm      0x0B93
0BC1: EA E1        cal      0x0AE1
0BC3: E5 26        cal      0x0526
0BC5: 2D 33        jrm      0x0B93
0BC7: EA E1        cal      0x0AE1
0BC9: E4 C2        cal      0x04C2
0BCB: 2D 39        jrm      0x0B93
0BCD: EA E1        cal      0x0AE1
0BCF: E4 C7        cal      0x04C7
0BD1: 2D 3F        jrm      0x0B93
0BD3: EC 20        cal      0x0C20
0BD5: 2A F6        jrncp    0x0CCC
0BD7: 90           lp       0x10
0BD8: 60 FD        anim     0xFD
0BDA: 2C 08        jrp      0x0BE3
0BDC: EC 20        cal      0x0C20
0BDE: 2A C0        jrncp    0x0C9F
0BE0: 90           lp       0x10
0BE1: 61 02        orim     0x02
0BE3: A7           lp       0x27
0BE4: 59           ldm
0BE5: AF           lp       0x2F
0BE6: C7           cpma
0BE7: 28 2F        jrnzp    0x0C17
0BE9: 88           lp       0x08
0BEA: DB           exam
0BEB: 49           deck
0BEC: 3A 1E        jrcp     0x0C0B
0BEE: 13 2D        liq      0x2D
0BF0: 86           lp       0x06
0BF1: 0A           mvb
0BF2: 07           dy
0BF3: 4D           nopw
0BF4: 4D           nopw
0BF5: ED 2F        cal      0x0D2F
0BF7: 24           ixl
0BF8: DA           exab
0BF9: 84           lp       0x04
0BFA: 13 06        liq      0x06
0BFC: 00 01        lii      0x01
0BFE: 09           exw
0BFF: 24           ixl
0C00: 84           lp       0x04
0C01: 13 06        liq      0x06
0C03: 09           exw
0C04: 83           lp       0x03
0C05: C7           cpma
0C06: 28 10        jrnzp    0x0C17
0C08: 49           deck
0C09: 2B 13        jrncm    0x0BF7
0C0B: 90           lp       0x10
0C0C: 62 02        tsim     0x02
0C0E: 38 0D        jrzp     0x0C1C
0C10: E0 9F        cal      0x009F
0C12: A2           lp       0x22
0C13: 61 10        orim     0x10
0C15: 2C 08        jrp      0x0C1E
0C17: 90           lp       0x10
0C18: 62 02        tsim     0x02
0C1A: 39 0B        jrzm     0x0C10
0C1C: E0 9F        cal      0x009F
0C1E: D1           rc
0C1F: 37           rtn
0C20: ED B8        cal      0x0DB8
0C22: AC           lp       0x2C
0C23: 63 D0        cpim     0xD0
0C25: 38 08        jrzp     0x0C2E
0C27: A4           lp       0x24
0C28: 63 D0        cpim     0xD0
0C2A: 38 0A        jrzp     0x0C35
0C2C: D1           rc
0C2D: 37           rtn
0C2E: A4           lp       0x24
0C2F: 63 D0        cpim     0xD0
0C31: 28 03        jrnzp    0x0C35
0C33: D0           sc
0C34: 37           rtn
0C35: 5B           pop
0C36: 5B           pop
0C37: 2D CA        jrm      0x0B6E
0C39: EC 20        cal      0x0C20
0C3B: 2A 9E        jrncp    0x0CDA
0C3D: 90           lp       0x10
0C3E: 61 02        orim     0x02
0C40: 2C 18        jrp      0x0C59
0C42: EC 20        cal      0x0C20
0C44: 2A 74        jrncp    0x0CB9
0C46: E2 84        cal      0x0284
0C48: 2D 0C        jrm      0x0C3D
0C4A: EC 20        cal      0x0C20
0C4C: 3A 09        jrcp     0x0C56
0C4E: 2C 5A        jrp      0x0CA9
0C50: EC 20        cal      0x0C20
0C52: 2A 5A        jrncp    0x0CAD
0C54: E2 84        cal      0x0284
0C56: 90           lp       0x10
0C57: 60 FD        anim     0xFD
0C59: AF           lp       0x2F
0C5A: 63 00        cpim     0x00
0C5C: 38 3B        jrzp     0x0C98
0C5E: 59           ldm
0C5F: 88           lp       0x08
0C60: DB           exam
0C61: A7           lp       0x27
0C62: 63 00        cpim     0x00
0C64: 38 25        jrzp     0x0C8A
0C66: 59           ldm
0C67: 89           lp       0x09
0C68: DB           exam
0C69: 49           deck
0C6A: C9           decl
0C6B: ED 2F        cal      0x0D2F
0C6D: A5           lp       0x25
0C6E: 70 01        adim     0x01
0C70: 24           ixl
0C71: EF E2        cal      0x0FE2
0C73: 34           push
0C74: ED 37        cal      0x0D37
0C76: AD           lp       0x2D
0C77: 70 01        adim     0x01
0C79: 24           ixl
0C7A: EF E2        cal      0x0FE2
0C7C: DA           exab
0C7D: 5B           pop
0C7E: 83           lp       0x03
0C7F: C7           cpma
0C80: 3A 0B        jrcp     0x0C8C
0C82: 28 07        jrnzp    0x0C8A
0C84: 49           deck
0C85: 3A 08        jrcp     0x0C8E
0C87: C9           decl
0C88: 2B 1E        jrncm    0x0C6B
0C8A: 2D 7B        jrm      0x0C10
0C8C: 2D 71        jrm      0x0C1C
0C8E: C9           decl
0C8F: 2B 04        jrncm    0x0C8C
0C91: 90           lp       0x10
0C92: 62 02        tsim     0x02
0C94: 39 09        jrzm     0x0C8C
0C96: 2D 0D        jrm      0x0C8A
0C98: A7           lp       0x27
0C99: 63 00        cpim     0x00
0C9B: 29 10        jrnzm    0x0C8C
0C9D: 2D 0D        jrm      0x0C91
0C9F: EB 0A        cal      0x0B0A
0CA1: E2 E9        cal      0x02E9
0CA3: E1 1B        cal      0x011B
0CA5: 2A 2E        jrncp    0x0CD4
0CA7: 2C 1C        jrp      0x0CC4
0CA9: EB 0A        cal      0x0B0A
0CAB: 2C 05        jrp      0x0CB1
0CAD: EB 0A        cal      0x0B0A
0CAF: E2 84        cal      0x0284
0CB1: E2 E9        cal      0x02E9
0CB3: E1 1B        cal      0x011B
0CB5: 2A 09        jrncp    0x0CBF
0CB7: 2C 1C        jrp      0x0CD4
0CB9: EB 0A        cal      0x0B0A
0CBB: E2 84        cal      0x0284
0CBD: E2 E9        cal      0x02E9
0CBF: 91           lp       0x11
0CC0: 62 01        tsim     0x01
0CC2: 28 11        jrnzp    0x0CD4
0CC4: E1 2F        cal      0x012F
0CC6: E2 2F        cal      0x022F
0CC8: EB 19        cal      0x0B19
0CCA: D1           rc
0CCB: 37           rtn
0CCC: EB 0A        cal      0x0B0A
0CCE: E2 E9        cal      0x02E9
0CD0: E1 1B        cal      0x011B
0CD2: 2B 0F        jrncm    0x0CC4
0CD4: E0 9F        cal      0x009F
0CD6: EB 19        cal      0x0B19
0CD8: D1           rc
0CD9: 37           rtn
0CDA: EB 0A        cal      0x0B0A
0CDC: 2D 20        jrm      0x0CBD
0CDE: EA E1        cal      0x0AE1
0CE0: EA 63        cal      0x0A63
0CE2: 91           lp       0x11
0CE3: 62 01        tsim     0x01
0CE5: 28 07        jrnzp    0x0CED
0CE7: E2 2F        cal      0x022F
0CE9: E3 30        cal      0x0330
0CEB: 2C 11        jrp      0x0CFD
0CED: E1 1B        cal      0x011B
0CEF: 2A 03        jrncp    0x0CF3
0CF1: 2D 0B        jrm      0x0CE7
0CF3: E2 2F        cal      0x022F
0CF5: E3 30        cal      0x0330
0CF7: E1 2F        cal      0x012F
0CF9: E2 84        cal      0x0284
0CFB: E2 E9        cal      0x02E9
0CFD: EA F9        cal      0x0AF9
0CFF: D1           rc
0D00: 37           rtn
0D01: EA E1        cal      0x0AE1
0D03: 10 C6 BB     lidp     0xC6BB
0D06: D6 01        tsid     0x01
0D08: 38 05        jrzp     0x0D0E
0D0A: D4 FE        anid     0xFE
0D0C: 2C 1B        jrp      0x0D28
0D0E: A7           lp       0x27
0D0F: 00 06        lii      0x06
0D11: 02 50        lia      0x50
0D13: 0C           adn
0D14: A1           lp       0x21
0D15: 62 0F        tsim     0x0F
0D17: 38 10        jrzp     0x0D28
0D19: E0 DD        cal      0x00DD
0D1B: E1 CD        cal      0x01CD
0D1D: A0           lp       0x20
0D1E: 59           ldm
0D1F: 64 F0        ania     0xF0
0D21: 67 10        cpia     0x10
0D23: 28 04        jrnzp    0x0D28
0D25: 79 0B 41     jp       0x0B41
0D28: A7           lp       0x27
0D29: 60 00        anim     0x00
0D2B: EA F9        cal      0x0AF9
0D2D: D1           rc
0D2E: 37           rtn
0D2F: 13 25        liq      0x25
0D31: 84           lp       0x04
0D32: 01 01        lij      0x01
0D34: 0A           mvb
0D35: 05           dx
0D36: 37           rtn
0D37: 13 2D        liq      0x2D
0D39: 2D 09        jrm      0x0D31
0D3B: 90           lp       0x10
0D3C: 61 02        orim     0x02
0D3E: E0 9F        cal      0x009F
0D40: 2C 1A        jrp      0x0D5B
0D42: E0 9F        cal      0x009F
0D44: 90           lp       0x10
0D45: 60 FC        anim     0xFC
0D47: 01 01        lij      0x01
0D49: A9           lp       0x29
0D4A: 62 80        tsim     0x80
0D4C: 38 0E        jrzp     0x0D5B
0D4E: 90           lp       0x10
0D4F: 61 01        orim     0x01
0D51: 02 00        lia      0x00
0D53: A9           lp       0x29
0D54: DB           exam
0D55: DA           exab
0D56: 02 00        lia      0x00
0D58: A8           lp       0x28
0D59: DB           exam
0D5A: 15           sbb
0D5B: 8E           lp       0x0E
0D5C: 01 01        lij      0x01
0D5E: 13 28        liq      0x28
0D60: 0A           mvb
0D61: 88           lp       0x08
0D62: 02 07        lia      0x07
0D64: DB           exam
0D65: E0 A9        cal      0x00A9
0D67: AC           lp       0x2C
0D68: 61 10        orim     0x10
0D6A: E2 3D        cal      0x023D
0D6C: ED 8D        cal      0x0D8D
0D6E: 02 07        lia      0x07
0D70: 88           lp       0x08
0D71: DB           exam
0D72: 8F           lp       0x0F
0D73: 59           ldm
0D74: 8E           lp       0x0E
0D75: DB           exam
0D76: ED 8D        cal      0x0D8D
0D78: A1           lp       0x21
0D79: 61 40        orim     0x40
0D7B: E3 30        cal      0x0330
0D7D: 90           lp       0x10
0D7E: 62 02        tsim     0x02
0D80: 28 0A        jrnzp    0x0D8B
0D82: 62 01        tsim     0x01
0D84: 38 06        jrzp     0x0D8B
0D86: 60 FE        anim     0xFE
0D88: A1           lp       0x21
0D89: 61 08        orim     0x08
0D8B: D1           rc
0D8C: 37           rtn
0D8D: 8E           lp       0x0E
0D8E: 59           ldm
0D8F: D2           sr
0D90: DB           exam
0D91: 2A 03        jrncp    0x0D95
0D93: ED B1        cal      0x0DB1
0D95: ED A3        cal      0x0DA3
0D97: ED AA        cal      0x0DAA
0D99: ED B1        cal      0x0DB1
0D9B: ED AA        cal      0x0DAA
0D9D: ED A3        cal      0x0DA3
0D9F: 49           deck
0DA0: 2B 14        jrncm    0x0D8D
0DA2: 37           rtn
0DA3: A2           lp       0x22
0DA4: 13 32        liq      0x32
0DA6: 00 02        lii      0x02
0DA8: 09           exw
0DA9: 37           rtn
0DAA: AA           lp       0x2A
0DAB: 13 22        liq      0x22
0DAD: 00 02        lii      0x02
0DAF: 08           mvw
0DB0: 37           rtn
0DB1: A4           lp       0x24
0DB2: 13 2C        liq      0x2C
0DB4: 00 02        lii      0x02
0DB6: 0E           adw
0DB7: 37           rtn
0DB8: 03 28        lib      0x28
0DBA: 10 C6 F5     lidp     0xC6F5
0DBD: 57           ldd
0DBE: 75 08        sbia     0x08
0DC0: 52           std
0DC1: 43           deca
0DC2: 84           lp       0x04
0DC3: DB           exam
0DC4: 02 F8        lia      0xF8
0DC6: 85           lp       0x05
0DC7: DB           exam
0DC8: 04           ix
0DC9: 00 07        lii      0x07
0DCB: DA           exab
0DCC: 30           stp
0DCD: 18           mvwd
0DCE: 37           rtn
0DCF: 03 20        lib      0x20
0DD1: 2D 18        jrm      0x0DBA
0DD3: 10 C6 F2     lidp     0xC6F2
0DD6: 57           ldd
0DD7: 67 02        cpia     0x02
0DD9: 28 29        jrnzp    0x0E03
0DDB: EE 92        cal      0x0E92
0DDD: F7 37        cal      0x1737
0DDF: 3A 22        jrcp     0x0E02
0DE1: ED CF        cal      0x0DCF
0DE3: A4           lp       0x24
0DE4: 63 D0        cpim     0xD0
0DE6: 28 1C        jrnzp    0x0E03
0DE8: A7           lp       0x27
0DE9: 59           ldm
0DEA: 88           lp       0x08
0DEB: DB           exam
0DEC: A8           lp       0x28
0DED: 59           ldm
0DEE: 88           lp       0x08
0DEF: C7           cpma
0DF0: 3A 03        jrcp     0x0DF4
0DF2: A7           lp       0x27
0DF3: DB           exam
0DF4: A5           lp       0x25
0DF5: 59           ldm
0DF6: 88           lp       0x08
0DF7: DB           exam
0DF8: A7           lp       0x27
0DF9: 59           ldm
0DFA: 88           lp       0x08
0DFB: 44           adm
0DFC: 59           ldm
0DFD: 10 C6 F7     lidp     0xC6F7
0E00: 52           std
0E01: D1           rc
0E02: 37           rtn
0E03: 02 09        lia      0x09
0E05: 94           lp       0x14
0E06: DB           exam
0E07: D0           sc
0E08: 37           rtn
0E09: 10 C6 F2     lidp     0xC6F2
0E0C: 57           ldd
0E0D: 67 03        cpia     0x03
0E0F: 29 0D        jrnzm    0x0E03
0E11: EE 92        cal      0x0E92
0E13: F7 37        cal      0x1737
0E15: 3B 14        jrcm     0x0E02
0E17: A8           lp       0x28
0E18: 59           ldm
0E19: 10 C6 B9     lidp     0xC6B9
0E1C: 52           std
0E1D: ED CF        cal      0x0DCF
0E1F: EE 9B        cal      0x0E9B
0E21: F7 37        cal      0x1737
0E23: 3B 22        jrcm     0x0E02
0E25: ED CF        cal      0x0DCF
0E27: A4           lp       0x24
0E28: 63 D0        cpim     0xD0
0E2A: 29 28        jrnzm    0x0E03
0E2C: A7           lp       0x27
0E2D: 59           ldm
0E2E: 88           lp       0x08
0E2F: DB           exam
0E30: A8           lp       0x28
0E31: 59           ldm
0E32: 88           lp       0x08
0E33: C7           cpma
0E34: 2A 06        jrncp    0x0E3B
0E36: A7           lp       0x27
0E37: 60 00        anim     0x00
0E39: 2D 46        jrm      0x0DF4
0E3B: 43           deca
0E3C: 34           push
0E3D: 45           sbm
0E3E: ED 2F        cal      0x0D2F
0E40: 86           lp       0x06
0E41: 13 04        liq      0x04
0E43: 01 01        lij      0x01
0E45: 0A           mvb
0E46: 5B           pop
0E47: 84           lp       0x04
0E48: 44           adm
0E49: 10 C6 B9     lidp     0xC6B9
0E4C: 57           ldd
0E4D: 88           lp       0x08
0E4E: C7           cpma
0E4F: 3A 02        jrcp     0x0E52
0E51: DB           exam
0E52: 59           ldm
0E53: A7           lp       0x27
0E54: DB           exam
0E55: 49           deck
0E56: 3B 63        jrcm     0x0DF4
0E58: 24           ixl
0E59: 26           iys
0E5A: 2D 06        jrm      0x0E55
0E5C: 4D           nopw
0E5D: 10 C6 F2     lidp     0xC6F2
0E60: 57           ldd
0E61: 67 02        cpia     0x02
0E63: 29 61        jrnzm    0x0E03
0E65: EE 92        cal      0x0E92
0E67: F7 37        cal      0x1737
0E69: 3B 68        jrcm     0x0E02
0E6B: ED CF        cal      0x0DCF
0E6D: A4           lp       0x24
0E6E: 63 D0        cpim     0xD0
0E70: 29 6E        jrnzm    0x0E03
0E72: A7           lp       0x27
0E73: 59           ldm
0E74: 88           lp       0x08
0E75: DB           exam
0E76: A8           lp       0x28
0E77: 59           ldm
0E78: 88           lp       0x08
0E79: C7           cpma
0E7A: 39 87        jrzm     0x0DF4
0E7C: 3B 89        jrcm     0x0DF4
0E7E: 45           sbm
0E7F: A7           lp       0x27
0E80: DB           exam
0E81: ED 2F        cal      0x0D2F
0E83: 86           lp       0x06
0E84: 13 04        liq      0x04
0E86: 01 01        lij      0x01
0E88: 0A           mvb
0E89: 88           lp       0x08
0E8A: 59           ldm
0E8B: 84           lp       0x04
0E8C: 44           adm
0E8D: A7           lp       0x27
0E8E: 59           ldm
0E8F: 88           lp       0x08
0E90: 2D 3D        jrm      0x0E54
0E92: 93           lp       0x13
0E93: 61 80        orim     0x80
0E95: 92           lp       0x12
0E96: 60 F0        anim     0xF0
0E98: 61 06        orim     0x06
0E9A: 37           rtn
0E9B: 93           lp       0x13
0E9C: 60 7F        anim     0x7F
0E9E: 2D 0A        jrm      0x0E95
0EA0: A7           lp       0x27
0EA1: 59           ldm
0EA2: A8           lp       0x28
0EA3: DB           exam
0EA4: A9           lp       0x29
0EA5: 60 00        anim     0x00
0EA7: ED 42        cal      0x0D42
0EA9: 10 C6 F7     lidp     0xC6F7
0EAC: 02 60        lia      0x60
0EAE: 52           std
0EAF: D1           rc
0EB0: 37           rtn
0EB1: 10 C6 AF     lidp     0xC6AF
0EB4: 9C           lp       0x1C
0EB5: 01 01        lij      0x01
0EB7: 1B           exbd
0EB8: 10 C6 AF     lidp     0xC6AF
0EBB: 9C           lp       0x1C
0EBC: 1A           mvbd
0EBD: 37           rtn
0EBE: 10 F8 20     lidp     0xF820
0EC1: 00 17        lii      0x17
0EC3: 02 FF        lia      0xFF
0EC5: 1F           fild
0EC6: 78 44 EC     call     0x44EC
0EC9: 10 C6 E7     lidp     0xC6E7
0ECC: D4 00        anid     0x00
0ECE: 93           lp       0x13
0ECF: 02 82        lia      0x82
0ED1: DB           exam
0ED2: EE B1        cal      0x0EB1
0ED4: 79 1F E0     jp       0x1FE0
0ED7: EE B8        cal      0x0EB8
0ED9: 78 44 F2     call     0x44F2
0EDC: E0 9F        cal      0x009F
0EDE: 10 C6 F7     lidp     0xC6F7
0EE1: 57           ldd
0EE2: 43           deca
0EE3: 86           lp       0x06
0EE4: DB           exam
0EE5: 02 C7        lia      0xC7
0EE7: 87           lp       0x07
0EE8: DB           exam
0EE9: 85           lp       0x05
0EEA: 02 F8        lia      0xF8
0EEC: DB           exam
0EED: 84           lp       0x04
0EEE: 02 1F        lia      0x1F
0EF0: DB           exam
0EF1: 24           ixl
0EF2: 67 FF        cpia     0xFF
0EF4: 38 14        jrzp     0x0F09
0EF6: 67 4A        cpia     0x4A
0EF8: 28 09        jrnzp    0x0F02
0EFA: 24           ixl
0EFB: 67 FF        cpia     0xFF
0EFD: 38 0B        jrzp     0x0F09
0EFF: 05           dx
0F00: 02 4A        lia      0x4A
0F02: EF D4        cal      0x0FD4
0F04: A7           lp       0x27
0F05: 70 01        adim     0x01
0F07: 2D 17        jrm      0x0EF1
0F09: 06           iy
0F0A: 10 C6 F7     lidp     0xC6F7
0F0D: 57           ldd
0F0E: A5           lp       0x25
0F0F: DB           exam
0F10: A6           lp       0x26
0F11: 02 C7        lia      0xC7
0F13: DB           exam
0F14: 86           lp       0x06
0F15: 59           ldm
0F16: 52           std
0F17: A4           lp       0x24
0F18: 61 D0        orim     0xD0
0F1A: D1           rc
0F1B: 37           rtn
0F1C: ED 2F        cal      0x0D2F
0F1E: A5           lp       0x25
0F1F: 59           ldm
0F20: 10 C6 F7     lidp     0xC6F7
0F23: 52           std
0F24: A7           lp       0x27
0F25: 59           ldm
0F26: 03 00        lib      0x00
0F28: 84           lp       0x04
0F29: 14           adb
0F2A: 86           lp       0x06
0F2B: 01 01        lij      0x01
0F2D: 13 04        liq      0x04
0F2F: 0A           mvb
0F30: 02 00        lia      0x00
0F32: 26           iys
0F33: ED 2F        cal      0x0D2F
0F35: 91           lp       0x11
0F36: 60 FD        anim     0xFD
0F38: 24           ixl
0F39: 67 35        cpia     0x35
0F3B: 39 04        jrzm     0x0F38
0F3D: 67 36        cpia     0x36
0F3F: 28 06        jrnzp    0x0F46
0F41: 91           lp       0x11
0F42: 70 02        adim     0x02
0F44: 2D 0D        jrm      0x0F38
0F46: 67 11        cpia     0x11
0F48: 39 11        jrzm     0x0F38
0F4A: 2C 05        jrp      0x0F50
0F4C: E0 9F        cal      0x009F
0F4E: 2C 19        jrp      0x0F68
0F50: 05           dx
0F51: 93           lp       0x13
0F52: 60 FD        anim     0xFD
0F54: EE B1        cal      0x0EB1
0F56: F5 A3        cal      0x15A3
0F58: EE B8        cal      0x0EB8
0F5A: 3A 0E        jrcp     0x0F69
0F5C: E1 1B        cal      0x011B
0F5E: 3B 13        jrcm     0x0F4C
0F60: 91           lp       0x11
0F61: 62 02        tsim     0x02
0F63: 38 04        jrzp     0x0F68
0F65: A1           lp       0x21
0F66: 61 08        orim     0x08
0F68: D1           rc
0F69: 37           rtn
0F6A: A7           lp       0x27
0F6B: 63 00        cpim     0x00
0F6D: 28 05        jrnzp    0x0F73
0F6F: 02 00        lia      0x00
0F71: 2C 08        jrp      0x0F7A
0F73: ED 2F        cal      0x0D2F
0F75: 24           ixl
0F76: EF E2        cal      0x0FE2
0F78: 3A 10        jrcp     0x0F89
0F7A: A8           lp       0x28
0F7B: DB           exam
0F7C: A9           lp       0x29
0F7D: 60 00        anim     0x00
0F7F: A5           lp       0x25
0F80: 59           ldm
0F81: 10 C6 F7     lidp     0xC6F7
0F84: 52           std
0F85: ED 42        cal      0x0D42
0F87: D1           rc
0F88: 37           rtn
0F89: 79 0E 03     jp       0x0E03
0F8C: F0 DC        cal      0x10DC
0F8E: F7 37        cal      0x1737
0F90: 3B 08        jrcm     0x0F89
0F92: A8           lp       0x28
0F93: 63 00        cpim     0x00
0F95: 28 0F        jrnzp    0x0FA5
0F97: E0 9F        cal      0x009F
0F99: 10 C6 F7     lidp     0xC6F7
0F9C: 57           ldd
0F9D: A5           lp       0x25
0F9E: DB           exam
0F9F: A6           lp       0x26
0FA0: 02 C7        lia      0xC7
0FA2: DB           exam
0FA3: 2C 2B        jrp      0x0FCF
0FA5: 63 20        cpim     0x20
0FA7: 3B 1F        jrcm     0x0F89
0FA9: 63 61        cpim     0x61
0FAB: 2B 23        jrncm    0x0F89
0FAD: 59           ldm
0FAE: F0 57        cal      0x1057
0FB0: 3B 28        jrcm     0x0F89
0FB2: 34           push
0FB3: 10 C6 F7     lidp     0xC6F7
0FB6: 57           ldd
0FB7: 42           inca
0FB8: 52           std
0FB9: 43           deca
0FBA: 43           deca
0FBB: 86           lp       0x06
0FBC: DB           exam
0FBD: 87           lp       0x07
0FBE: 02 C7        lia      0xC7
0FC0: DB           exam
0FC1: 5B           pop
0FC2: EF D4        cal      0x0FD4
0FC4: E0 9F        cal      0x009F
0FC6: A5           lp       0x25
0FC7: 13 06        liq      0x06
0FC9: 01 01        lij      0x01
0FCB: 0A           mvb
0FCC: A7           lp       0x27
0FCD: 61 01        orim     0x01
0FCF: A4           lp       0x24
0FD0: 61 D0        orim     0xD0
0FD2: D1           rc
0FD3: 37           rtn
0FD4: 86           lp       0x06
0FD5: 63 AF        cpim     0xAF
0FD7: 38 03        jrzp     0x0FDB
0FD9: 26           iys
0FDA: 37           rtn
0FDB: 5B           pop
0FDC: 5B           pop
0FDD: 02 06        lia      0x06
0FDF: 79 0E 05     jp       0x0E05
0FE2: 67 51        cpia     0x51
0FE4: 3A 0B        jrcp     0x0FF0
0FE6: 67 6B        cpia     0x6B
0FE8: 2A 05        jrncp    0x0FEE
0FEA: 75 10        sbia     0x10
0FEC: D1           rc
0FED: 37           rtn
0FEE: D0           sc
0FEF: 37           rtn
0FF0: 67 40        cpia     0x40
0FF2: 3A 1B        jrcp     0x100E
0FF4: 67 4A        cpia     0x4A
0FF6: 3B 0D        jrcm     0x0FEA
0FF8: 28 05        jrnzp    0x0FFE
0FFA: 02 2E        lia      0x2E
0FFC: D1           rc
0FFD: 37           rtn
0FFE: 67 4B        cpia     0x4B
1000: 28 05        jrnzp    0x1006
1002: 02 60        lia      0x60
1004: D1           rc
1005: 37           rtn
1006: 67 4E        cpia     0x4E
1008: 29 1B        jrnzm    0x0FEE
100A: 02 5F        lia      0x5F
100C: D1           rc
100D: 37           rtn
100E: 67 30        cpia     0x30
1010: 3A 0B        jrcp     0x101C
1012: 75 30        sbia     0x30
1014: 84           lp       0x04
1015: DB           exam
1016: 02 3D        lia      0x3D
1018: 03 10        lib      0x10
101A: 2C 11        jrp      0x102C
101C: 67 20        cpia     0x20
101E: 2B 31        jrncm    0x0FEE
1020: 67 10        cpia     0x10
1022: 3B 35        jrcm     0x0FEE
1024: 75 10        sbia     0x10
1026: 84           lp       0x04
1027: DB           exam
1028: 02 47        lia      0x47
102A: 03 10        lib      0x10
102C: 85           lp       0x05
102D: 60 00        anim     0x00
102F: 84           lp       0x04
1030: 14           adb
1031: 13 04        liq      0x04
1033: 82           lp       0x02
1034: 01 01        lij      0x01
1036: 0A           mvb
1037: 00 00        lii      0x00
1039: 82           lp       0x02
103A: 35           data
103B: D1           rc
103C: 37           rtn
103D: 28 29        jrnzp    0x1067
103F: 3E           ???
1040: 3C           ???
1041: 3D           ???
1042: 2B 2D        jrncm    0x1016
1044: 2A 2F        jrncp    0x1074
1046: 5E           ???
1047: 27           dys
1048: 20           ldp
1049: 22           ldr
104A: 3F           ???
104B: 21           ldq
104C: 23           ra
104D: 25           dxl
104E: 5C           ???
104F: 24           ixl
1050: 5D           outa
1051: 5B           pop
1052: 2C 3B        jrp      0x108E
1054: 3A 40        jrcp     0x1095
1056: 26           iys
1057: 67 41        cpia     0x41
1059: 2A 07        jrncp    0x1061
105B: 67 20        cpia     0x20
105D: 2A 1C        jrncp    0x107A
105F: D0           sc
1060: 37           rtn
1061: 67 5B        cpia     0x5B
1063: 2A 05        jrncp    0x1069
1065: 74 10        adia     0x10
1067: D1           rc
1068: 37           rtn
1069: 67 61        cpia     0x61
106B: 2B 0D        jrncm    0x105F
106D: 75 5B        sbia     0x5B
106F: 84           lp       0x04
1070: DB           exam
1071: 85           lp       0x05
1072: 60 00        anim     0x00
1074: 02 7E        lia      0x7E
1076: 03 10        lib      0x10
1078: 2D 4A        jrm      0x102F
107A: 75 1A        sbia     0x1A
107C: 2D 0E        jrm      0x106F
107E: 1A           mvbd
107F: 17 19        .default 0x1719
1081: 39 4E        jrzm     0x1034
1083: 4B           decm
1084: 11 14        lidl     0x14
1086: 12 15        lip      0x15
1088: 18           mvwd
1089: 16 1F 10     .case    0x16, 0x1F10
108C: 30           stp
108D: 31           stq
108E: 37           rtn
108F: 35           data
1090: 1B           exbd
1091: 36           ???
1092: 4A           incm
1093: 38 40        jrzp     0x10D4
1095: 41           deci
1096: 42           inca
1097: 43           deca
1098: 44           adm
1099: 45           sbm
109A: 46           anma
109B: 47           orma
109C: 48           inck
109D: 49           deck
109E: 1D           slw
109F: 1C           srw
10A0: 33           ???
10A1: 34           push
10A2: 32           str
10A3: 13 1E        liq      0x1E
10A5: 91           lp       0x11
10A6: 61 40        orim     0x40
10A8: A4           lp       0x24
10A9: 63 D0        cpim     0xD0
10AB: 28 09        jrnzp    0x10B5
10AD: 79 0E 03     jp       0x0E03
10B0: 91           lp       0x11
10B1: 60 BF        anim     0xBF
10B3: 2D 0C        jrm      0x10A8
10B5: F0 E0        cal      0x10E0
10B7: F7 37        cal      0x1737
10B9: 3A 21        jrcp     0x10DB
10BB: E2 78        cal      0x0278
10BD: ED CF        cal      0x0DCF
10BF: F7 37        cal      0x1737
10C1: 3A 19        jrcp     0x10DB
10C3: B8           lp       0x38
10C4: 59           ldm
10C5: 91           lp       0x11
10C6: 62 40        tsim     0x40
10C8: 38 09        jrzp     0x10D2
10CA: A8           lp       0x28
10CB: 46           anma
10CC: B9           lp       0x39
10CD: 59           ldm
10CE: A9           lp       0x29
10CF: 46           anma
10D0: 2C 07        jrp      0x10D8
10D2: A8           lp       0x28
10D3: 47           orma
10D4: B9           lp       0x39
10D5: 59           ldm
10D6: A9           lp       0x29
10D7: 47           orma
10D8: ED 42        cal      0x0D42
10DA: D1           rc
10DB: 37           rtn
10DC: 02 04        lia      0x04
10DE: 2C 03        jrp      0x10E2
10E0: 02 02        lia      0x02
10E2: 92           lp       0x12
10E3: 60 F0        anim     0xF0
10E5: 47           orma
10E6: 93           lp       0x13
10E7: 61 80        orim     0x80
10E9: 37           rtn
10EA: A4           lp       0x24
10EB: 63 D0        cpim     0xD0
10ED: 39 41        jrzm     0x10AD
10EF: F0 E0        cal      0x10E0
10F1: F7 37        cal      0x1737
10F3: 3A 0E        jrcp     0x1102
10F5: 02 FF        lia      0xFF
10F7: A9           lp       0x29
10F8: DB           exam
10F9: DA           exab
10FA: 02 FF        lia      0xFF
10FC: A8           lp       0x28
10FD: DB           exam
10FE: 15           sbb
10FF: ED 42        cal      0x0D42
1101: D1           rc
1102: 37           rtn
1103: 84           lp       0x04
1104: 10 C6 C4     lidp     0xC6C4
1107: 01 01        lij      0x01
1109: 1A           mvbd
110A: 37           rtn
110B: 6B 02        test     0x02
110D: 39 03        jrzm     0x110B
110F: 6B 02        test     0x02
1111: 39 03        jrzm     0x110F
1113: 6B 02        test     0x02
1115: 39 03        jrzm     0x1113
1117: 37           rtn
1118: 84           lp       0x04
1119: 59           ldm
111A: 10 C6 B5     lidp     0xC6B5
111D: 52           std
111E: 85           lp       0x05
111F: 59           ldm
1120: 10 C6 B6     lidp     0xC6B6
1123: 52           std
1124: 37           rtn
1125: 10 C6 B5     lidp     0xC6B5
1128: 57           ldd
1129: 84           lp       0x04
112A: DB           exam
112B: 10 C6 B6     lidp     0xC6B6
112E: 57           ldd
112F: 85           lp       0x05
1130: DB           exam
1131: 01 01        lij      0x01
1133: 37           rtn
1134: 02 1B        lia      0x1B
1136: 26           iys
1137: 49           deck
1138: 2A 0A        jrncp    0x1143
113A: 5B           pop
113B: 5B           pop
113C: F1 44        cal      0x1144
113E: 94           lp       0x14
113F: 02 05        lia      0x05
1141: DB           exam
1142: D0           sc
1143: 37           rtn
1144: 79 40 00     jp       0x4000
1147: B0           lp       0x30
1148: 00 07        lii      0x07
114A: 02 00        lia      0x00
114C: 1E           film
114D: B0           lp       0x30
114E: 61 F5        orim     0xF5
1150: 37           rtn
1151: F1 18        cal      0x1118
1153: 22           ldr
1154: 74 02        adia     0x02
1156: 10 C6 B3     lidp     0xC6B3
1159: 52           std
115A: 37           rtn
115B: 79 40 06     jp       0x4006
115E: 10 F8 3E     lidp     0xF83E
1161: 37           rtn
1162: 10 F8 BE     lidp     0xF8BE
1165: 37           rtn
1166: 10 C6 B7     lidp     0xC6B7
1169: 37           rtn
116A: 10 C6 DA     lidp     0xC6DA
116D: 37           rtn
116E: A4           lp       0x24
116F: 63 D0        cpim     0xD0
1171: 37           rtn
1172: 84           lp       0x04
1173: 13 06        liq      0x06
1175: 0A           mvb
1176: 37           rtn
1177: 86           lp       0x06
1178: 13 04        liq      0x04
117A: 0A           mvb
117B: 37           rtn
117C: 02 0D        lia      0x0D
117E: DA           exab
117F: 8D           lp       0x0D
1180: 59           ldm
1181: 83           lp       0x03
1182: 45           sbm
1183: DA           exab
1184: 03 F8        lib      0xF8
1186: F1 F1        cal      0x11F1
1188: 37           rtn
1189: 78 44 F5     call     0x44F5
118C: 3A 02        jrcp     0x118F
118E: 37           rtn
118F: 10 C6 E1     lidp     0xC6E1
1192: 84           lp       0x04
1193: 1A           mvbd
1194: 37           rtn
1195: 84           lp       0x04
1196: 13 0C        liq      0x0C
1198: 0B           exb
1199: 37           rtn
119A: 02 B0        lia      0xB0
119C: 03 C7        lib      0xC7
119E: F1 F1        cal      0x11F1
11A0: 37           rtn
11A1: 02 18        lia      0x18
11A3: 89           lp       0x09
11A4: DB           exam
11A5: 02 20        lia      0x20
11A7: 88           lp       0x08
11A8: DB           exam
11A9: F1 9A        cal      0x119A
11AB: 78 44 F8     call     0x44F8
11AE: 37           rtn
11AF: 02 20        lia      0x20
11B1: 88           lp       0x08
11B2: DB           exam
11B3: F1 62        cal      0x1162
11B5: D4 FB        anid     0xFB
11B7: F1 9A        cal      0x119A
11B9: 78 44 FB     call     0x44FB
11BC: 37           rtn
11BD: 10 C7 02     lidp     0xC702
11C0: 9C           lp       0x1C
11C1: 00 03        lii      0x03
11C3: 18           mvwd
11C4: F8 99        cal      0x1899
11C6: 37           rtn
11C7: 22           ldr
11C8: 43           deca
11C9: 43           deca
11CA: 30           stp
11CB: 13 04        liq      0x04
11CD: 0A           mvb
11CE: 31           stq
11CF: 0B           exb
11D0: 32           str
11D1: 37           rtn
11D2: 22           ldr
11D3: 42           inca
11D4: 42           inca
11D5: 84           lp       0x04
11D6: 31           stq
11D7: 0A           mvb
11D8: 30           stp
11D9: DA           exab
11DA: 22           ldr
11DB: 31           stq
11DC: 0A           mvb
11DD: DA           exab
11DE: 32           str
11DF: 37           rtn
11E0: 02 01        lia      0x01
11E2: FF B1        cal      0x1FB1
11E4: 37           rtn
11E5: 02 00        lia      0x00
11E7: 2D 06        jrm      0x11E2
11E9: 84           lp       0x04
11EA: 13 02        liq      0x02
11EC: 0A           mvb
11ED: 37           rtn
11EE: 86           lp       0x06
11EF: 2D 06        jrm      0x11EA
11F1: F1 E9        cal      0x11E9
11F3: 05           dx
11F4: 37           rtn
11F5: F1 EE        cal      0x11EE
11F7: 07           dy
11F8: 37           rtn
11F9: 02 B0        lia      0xB0
11FB: 03 C7        lib      0xC7
11FD: F1 F5        cal      0x11F5
11FF: 37           rtn
1200: 9C           lp       0x1C
1201: 13 04        liq      0x04
1203: 0A           mvb
1204: 37           rtn
1205: 97           lp       0x17
1206: 60 C0        anim     0xC0
1208: 62 40        tsim     0x40
120A: 28 07        jrnzp    0x1212
120C: 10 C6 F7     lidp     0xC6F7
120F: 02 60        lia      0x60
1211: 52           std
1212: 10 C6 F5     lidp     0xC6F5
1215: 02 40        lia      0x40
1217: 52           std
1218: 11 F6        lidl     0xF6
121A: 02 00        lia      0x00
121C: 52           std
121D: 93           lp       0x13
121E: 60 FE        anim     0xFE
1220: 97           lp       0x17
1221: 60 C0        anim     0xC0
1223: 61 01        orim     0x01
1225: 10 C6 F2     lidp     0xC6F2
1228: 02 01        lia      0x01
122A: 52           std
122B: 24           ixl
122C: 67 6B        cpia     0x6B
122E: 2A 5B        jrncp    0x128A
1230: 67 51        cpia     0x51
1232: 2A 53        jrncp    0x1286
1234: 67 40        cpia     0x40
1236: 2A 4B        jrncp    0x1282
1238: 7A 10 12 6F  dtj      0x10, $126F
123C: 69           ptj
123D: 35 12 F0     .case    0x35, 0x12F0
1240: 36 12 F0     .case    0x36, 0x12F0
1243: 37 13 0D     .case    0x37, 0x130D
1246: 38 13 0D     .case    0x38, 0x130D
1249: 39 13 0D     .case    0x39, 0x130D
124C: 32 13 0D     .case    0x32, 0x130D
124F: 33 13 0D     .case    0x33, 0x130D
1252: 34 13 0D     .case    0x34, 0x130D
1255: 00 13 D5     .case    0x00, 0x13D5
1258: 1B 13 F5     .case    0x1B, 0x13F5
125B: 30 14 17     .case    0x30, 0x1417
125E: 31 14 20     .case    0x31, 0x1420
1261: 12 15 1D     .case    0x12, 0x151D
1264: 1A 15 61     .case    0x1A, 0x1561
1267: 19 15 46     .case    0x19, 0x1546
126A: 1F 15 66     .case    0x1F, 0x1566
126D: 13 D5        .default 0x13D5
126F: 3A 11        jrcp     0x1281
1271: 93           lp       0x13
1272: 62 01        tsim     0x01
1274: 39 4A        jrzm     0x122B
1276: F1 6E        cal      0x116E
1278: 2A 03        jrncp    0x127C
127A: ED 01        cal      0x0D01
127C: 05           dx
127D: D1           rc
127E: 97           lp       0x17
127F: 60 3F        anim     0x3F
1281: 37           rtn
1282: F2 AE        cal      0x12AE
1284: 2D 16        jrm      0x126F
1286: F2 D1        cal      0x12D1
1288: 2D 1A        jrm      0x126F
128A: 67 A0        cpia     0xA0
128C: 3A 15        jrcp     0x12A2
128E: 67 B0        cpia     0xB0
1290: 3A 19        jrcp     0x12AA
1292: 67 B2        cpia     0xB2
1294: 38 15        jrzp     0x12AA
1296: 67 BD        cpia     0xBD
1298: 38 11        jrzp     0x12AA
129A: 67 BF        cpia     0xBF
129C: 38 0D        jrzp     0x12AA
129E: F3 D5        cal      0x13D5
12A0: 2D 32        jrm      0x126F
12A2: 67 90        cpia     0x90
12A4: 2B 07        jrncm    0x129E
12A6: 67 76        cpia     0x76
12A8: 3B 0B        jrcm     0x129E
12AA: F3 12        cal      0x1312
12AC: 2D 3E        jrm      0x126F
12AE: F6 A5        cal      0x16A5
12B0: 3A 0B        jrcp     0x12BC
12B2: 05           dx
12B3: 93           lp       0x13
12B4: 60 FD        anim     0xFD
12B6: F5 A3        cal      0x15A3
12B8: 3A 03        jrcp     0x12BC
12BA: FC CD        cal      0x1CCD
12BC: 37           rtn
12BD: A0           lp       0x20
12BE: 02 00        lia      0x00
12C0: 00 07        lii      0x07
12C2: 1E           film
12C3: 37           rtn
12C4: 00 04        lii      0x04
12C6: C2           incb
12C7: 83           lp       0x03
12C8: 63 0B        cpim     0x0B
12CA: 2A 05        jrncp    0x12D0
12CC: A6           lp       0x26
12CD: 1D           slw
12CE: 3B 09        jrcm     0x12C6
12D0: 37           rtn
12D1: 97           lp       0x17
12D2: FC 9A        cal      0x1C9A
12D4: 3A 15        jrcp     0x12EA
12D6: 05           dx
12D7: F6 C0        cal      0x16C0
12D9: 3A 10        jrcp     0x12EA
12DB: 93           lp       0x13
12DC: 62 08        tsim     0x08
12DE: 28 0C        jrnzp    0x12EB
12E0: 60 9F        anim     0x9F
12E2: 61 20        orim     0x20
12E4: FA 0E        cal      0x1A0E
12E6: 3A 03        jrcp     0x12EA
12E8: FC CD        cal      0x1CCD
12EA: 37           rtn
12EB: FA E2        cal      0x1AE2
12ED: FC C8        cal      0x1CC8
12EF: 37           rtn
12F0: F6 BA        cal      0x16BA
12F2: 05           dx
12F3: 3A 09        jrcp     0x12FD
12F5: 04           ix
12F6: 05           dx
12F7: FC D2        cal      0x1CD2
12F9: 24           ixl
12FA: FA FC        cal      0x1AFC
12FC: 37           rtn
12FD: FC D7        cal      0x1CD7
12FF: 61 04        orim     0x04
1301: 24           ixl
1302: 67 36        cpia     0x36
1304: 28 06        jrnzp    0x130B
1306: 02 3A        lia      0x3A
1308: FA E0        cal      0x1AE0
130A: 37           rtn
130B: D1           rc
130C: 37           rtn
130D: F6 BA        cal      0x16BA
130F: 2B 1A        jrncm    0x12F6
1311: 37           rtn
1312: DA           exab
1313: F6 A5        cal      0x16A5
1315: DA           exab
1316: 3A AA        jrcp     0x13C1
1318: 67 90        cpia     0x90
131A: 3A 13        jrcp     0x132E
131C: 67 A0        cpia     0xA0
131E: 3A 0C        jrcp     0x132B
1320: 67 B0        cpia     0xB0
1322: 2A 6B        jrncp    0x138E
1324: FC D7        cal      0x1CD7
1326: 61 10        orim     0x10
1328: FA E0        cal      0x1AE0
132A: 37           rtn
132B: F7 05        cal      0x1705
132D: 37           rtn
132E: 67 80        cpia     0x80
1330: 3B 0D        jrcm     0x1324
1332: 67 86        cpia     0x86
1334: 3A 8C        jrcp     0x13C1
1336: 67 89        cpia     0x89
1338: 38 48        jrzp     0x1381
133A: 67 8A        cpia     0x8A
133C: 29 19        jrnzm    0x1324
133E: F6 B4        cal      0x16B4
1340: 3A 34        jrcp     0x1375
1342: FC DB        cal      0x1CDB
1344: 78 44 FE     call     0x44FE
1347: 3A 2D        jrcp     0x1375
1349: A7           lp       0x27
134A: 63 00        cpim     0x00
134C: 28 11        jrnzp    0x135E
134E: FA CF        cal      0x1ACF
1350: FF 44        cal      0x1F44
1352: FA CF        cal      0x1ACF
1354: 3A 0C        jrcp     0x1361
1356: 02 00        lia      0x00
1358: A7           lp       0x27
1359: DB           exam
135A: FC CD        cal      0x1CCD
135C: D1           rc
135D: 37           rtn
135E: F5 3D        cal      0x153D
1360: 37           rtn
1361: 67 10        cpia     0x10
1363: 3B 0E        jrcm     0x1356
1365: 86           lp       0x06
1366: 63 AF        cpim     0xAF
1368: 2A 0A        jrncp    0x1373
136A: 26           iys
136B: 02 01        lia      0x01
136D: 88           lp       0x08
136E: DB           exam
136F: F5 39        cal      0x1539
1371: D1           rc
1372: 37           rtn
1373: F7 17        cal      0x1717
1375: 37           rtn
1376: FC F2        cal      0x1CF2
1378: 3A 07        jrcp     0x1380
137A: F1 5B        cal      0x115B
137C: 3A 03        jrcp     0x1380
137E: FC CD        cal      0x1CCD
1380: 37           rtn
1381: F6 B4        cal      0x16B4
1383: 3B 0F        jrcm     0x1375
1385: FC DB        cal      0x1CDB
1387: 78 45 01     call     0x4501
138A: 3B 16        jrcm     0x1375
138C: 2D 2F        jrm      0x135E
138E: 67 B2        cpia     0xB2
1390: 38 0F        jrzp     0x13A0
1392: 67 BF        cpia     0xBF
1394: 39 1F        jrzm     0x1376
1396: 67 BD        cpia     0xBD
1398: 29 6E        jrnzm    0x132B
139A: FC F2        cal      0x1CF2
139C: 7D 15 4E     jpnc     0x154E
139F: 37           rtn
13A0: FC F2        cal      0x1CF2
13A2: 3A 1D        jrcp     0x13C0
13A4: 10 C6 FC     lidp     0xC6FC
13A7: 8A           lp       0x0A
13A8: 1A           mvbd
13A9: 10 C6 E3     lidp     0xC6E3
13AC: 82           lp       0x02
13AD: 1A           mvbd
13AE: 8A           lp       0x0A
13AF: 15           sbb
13B0: 82           lp       0x02
13B1: 13 0A        liq      0x0A
13B3: 0A           mvb
13B4: 43           deca
13B5: 2A 02        jrncp    0x13B8
13B7: C3           decb
13B8: A8           lp       0x28
13B9: 13 02        liq      0x02
13BB: 0A           mvb
13BC: ED 3B        cal      0x0D3B
13BE: FC CD        cal      0x1CCD
13C0: 37           rtn
13C1: F6 BA        cal      0x16BA
13C3: 3B 04        jrcm     0x13C0
13C5: 67 81        cpia     0x81
13C7: 39 D2        jrzm     0x12F6
13C9: 67 85        cpia     0x85
13CB: 39 D6        jrzm     0x12F6
13CD: 2B A3        jrncm    0x132B
13CF: 67 82        cpia     0x82
13D1: 3B A7        jrcm     0x132B
13D3: 2D DE        jrm      0x12F6
13D5: F6 BA        cal      0x16BA
13D7: 3A 0C        jrcp     0x13E4
13D9: FC B0        cal      0x1CB0
13DB: 28 0C        jrnzp    0x13E8
13DD: FC A7        cal      0x1CA7
13DF: 28 05        jrnzp    0x13E5
13E1: 93           lp       0x13
13E2: 61 01        orim     0x01
13E4: 37           rtn
13E5: F7 05        cal      0x1705
13E7: 37           rtn
13E8: FC B7        cal      0x1CB7
13EA: 2B 06        jrncm    0x13E5
13EC: FA CF        cal      0x1ACF
13EE: FB 9E        cal      0x1B9E
13F0: FA CF        cal      0x1ACF
13F2: 2B 1A        jrncm    0x13D9
13F4: 37           rtn
13F5: F6 BA        cal      0x16BA
13F7: 3A 15        jrcp     0x140D
13F9: FC B0        cal      0x1CB0
13FB: 39 1F        jrzm     0x13DD
13FD: FC B7        cal      0x1CB7
13FF: 3A 0E        jrcp     0x140E
1401: 05           dx
1402: 24           ixl
1403: FA E0        cal      0x1AE0
1405: 3A 07        jrcp     0x140D
1407: FB 13        cal      0x1B13
1409: 3A 03        jrcp     0x140D
140B: FC C8        cal      0x1CC8
140D: 37           rtn
140E: FA CF        cal      0x1ACF
1410: FB 9E        cal      0x1B9E
1412: FA CF        cal      0x1ACF
1414: 2B 1C        jrncm    0x13F9
1416: 37           rtn
1417: F6 A5        cal      0x16A5
1419: 3A 05        jrcp     0x141F
141B: FA E0        cal      0x1AE0
141D: 2B 13        jrncm    0x140B
141F: 37           rtn
1420: F6 BA        cal      0x16BA
1422: 3A DF        jrcp     0x1502
1424: FC D7        cal      0x1CD7
1426: 61 20        orim     0x20
1428: FC B0        cal      0x1CB0
142A: 38 E2        jrzp     0x150D
142C: FC B7        cal      0x1CB7
142E: 2A 0A        jrncp    0x1439
1430: FA CF        cal      0x1ACF
1432: FB 9E        cal      0x1B9E
1434: FA CF        cal      0x1ACF
1436: 2B 0F        jrncm    0x1428
1438: 37           rtn
1439: 57           ldd
143A: 67 1B        cpia     0x1B
143C: 38 37        jrzp     0x1474
143E: 67 30        cpia     0x30
1440: 28 05        jrnzp    0x1446
1442: FC C2        cal      0x1CC2
1444: 2C BD        jrp      0x1502
1446: 93           lp       0x13
1447: 60 A9        anim     0xA9
1449: 61 28        orim     0x28
144B: FC C2        cal      0x1CC2
144D: 66 80        tsia     0x80
144F: 38 04        jrzp     0x1454
1451: 93           lp       0x13
1452: 61 04        orim     0x04
1454: 34           push
1455: 64 7F        ania     0x7F
1457: 67 51        cpia     0x51
1459: 5B           pop
145A: FA CF        cal      0x1ACF
145C: 28 09        jrnzp    0x1466
145E: 93           lp       0x13
145F: 61 02        orim     0x02
1461: F8 EE        cal      0x18EE
1463: FA CF        cal      0x1ACF
1465: 37           rtn
1466: 8A           lp       0x0A
1467: DB           exam
1468: FA D4        cal      0x1AD4
146A: 3B 08        jrcm     0x1463
146C: 10 C6 D0     lidp     0xC6D0
146F: 1B           exbd
1470: F9 C1        cal      0x19C1
1472: 2D 10        jrm      0x1463
1474: 02 01        lia      0x01
1476: 88           lp       0x08
1477: DB           exam
1478: 86           lp       0x06
1479: 63 00        cpim     0x00
147B: 38 8B        jrzp     0x1507
147D: 48           inck
147E: 07           dy
147F: 57           ldd
1480: 67 1B        cpia     0x1B
1482: 39 0B        jrzm     0x1478
1484: 88           lp       0x08
1485: 10 C6 F2     lidp     0xC6F2
1488: 53           mvdm
1489: 67 30        cpia     0x30
148B: 28 2A        jrnzp    0x14B6
148D: 86           lp       0x06
148E: 63 00        cpim     0x00
1490: 38 76        jrzp     0x1507
1492: 07           dy
1493: 57           ldd
1494: FC C2        cal      0x1CC2
1496: 67 8C        cpia     0x8C
1498: FA CF        cal      0x1ACF
149A: 3A 68        jrcp     0x1503
149C: 67 8F        cpia     0x8F
149E: 2A 7B        jrncp    0x151A
14A0: 7A 02 14 AD  dtj      0x02, $14AD
14A4: 69           ptj
14A5: 8C 0D D3     .case    0x8C, 0x0DD3
14A8: 8D 0E 5D     .case    0x8D, 0x0E5D
14AB: 0E 09        .default 0x0E09
14AD: 02 01        lia      0x01
14AF: 10 C6 F2     lidp     0xC6F2
14B2: 52           std
14B3: FA CF        cal      0x1ACF
14B5: 37           rtn
14B6: 8A           lp       0x0A
14B7: DB           exam
14B8: 59           ldm
14B9: 64 7F        ania     0x7F
14BB: 67 51        cpia     0x51
14BD: 3A 49        jrcp     0x1507
14BF: 67 6B        cpia     0x6B
14C1: 2A 45        jrncp    0x1507
14C3: FC C2        cal      0x1CC2
14C5: 88           lp       0x08
14C6: 63 03        cpim     0x03
14C8: 2A 41        jrncp    0x150A
14CA: FA D4        cal      0x1AD4
14CC: 3A 35        jrcp     0x1502
14CE: 10 C6 D0     lidp     0xC6D0
14D1: 53           mvdm
14D2: 10 C6 F5     lidp     0xC6F5
14D5: 57           ldd
14D6: 67 40        cpia     0x40
14D8: 38 2E        jrzp     0x1507
14DA: 75 08        sbia     0x08
14DC: 10 C6 F5     lidp     0xC6F5
14DF: 52           std
14E0: 03 F8        lib      0xF8
14E2: F1 F5        cal      0x11F5
14E4: 06           iy
14E5: A0           lp       0x20
14E6: 00 07        lii      0x07
14E8: 18           mvwd
14E9: FA D4        cal      0x1AD4
14EB: 3A 16        jrcp     0x1502
14ED: 10 C6 D1     lidp     0xC6D1
14F0: 53           mvdm
14F1: 93           lp       0x13
14F2: 60 AB        anim     0xAB
14F4: 61 20        orim     0x20
14F6: 8A           lp       0x0A
14F7: 62 80        tsim     0x80
14F9: 38 04        jrzp     0x14FE
14FB: 93           lp       0x13
14FC: 61 04        orim     0x04
14FE: FA CF        cal      0x1ACF
1500: 2D 91        jrm      0x1470
1502: 37           rtn
1503: FB C4        cal      0x1BC4
1505: 2D 59        jrm      0x14AD
1507: F7 05        cal      0x1705
1509: 37           rtn
150A: F7 0F        cal      0x170F
150C: 37           rtn
150D: FC A7        cal      0x1CA7
150F: 29 09        jrnzm    0x1507
1511: 97           lp       0x17
1512: 62 80        tsim     0x80
1514: 39 0E        jrzm     0x1507
1516: 93           lp       0x13
1517: 61 01        orim     0x01
1519: 37           rtn
151A: F7 27        cal      0x1727
151C: 37           rtn
151D: F6 B4        cal      0x16B4
151F: 3A 25        jrcp     0x1545
1521: FC DB        cal      0x1CDB
1523: 86           lp       0x06
1524: 24           ixl
1525: 67 12        cpia     0x12
1527: 38 11        jrzp     0x1539
1529: 67 00        cpia     0x00
152B: 38 0C        jrzp     0x1538
152D: 63 AF        cpim     0xAF
152F: 2A 05        jrncp    0x1535
1531: 26           iys
1532: 48           inck
1533: 2B 10        jrncm    0x1524
1535: F7 17        cal      0x1717
1537: 37           rtn
1538: 05           dx
1539: 88           lp       0x08
153A: 59           ldm
153B: A7           lp       0x27
153C: DB           exam
153D: 06           iy
153E: 86           lp       0x06
153F: 10 C6 F7     lidp     0xC6F7
1542: 53           mvdm
1543: FC CD        cal      0x1CCD
1545: 37           rtn
1546: F6 AE        cal      0x16AE
1548: 3A 0F        jrcp     0x1558
154A: FC 9A        cal      0x1C9A
154C: 3A 0B        jrcp     0x1558
154E: 02 59        lia      0x59
1550: 03 15        lib      0x15
1552: A0           lp       0x20
1553: 00 07        lii      0x07
1555: 35           data
1556: FC CD        cal      0x1CCD
1558: 37           rtn
1559: 00 00        lii      0x00
155B: 31           stq
155C: 41           deci
155D: 59           ldm
155E: 26           iys
155F: 53           mvdm
1560: 59           ldm
1561: 02 87        lia      0x87
1563: 79 13 12     jp       0x1312
1566: F6 A5        cal      0x16A5
1568: 3A 2D        jrcp     0x1596
156A: 88           lp       0x08
156B: 02 04        lia      0x04
156D: DB           exam
156E: A8           lp       0x28
156F: 02 00        lia      0x00
1571: 00 01        lii      0x01
1573: 1E           film
1574: 24           ixl
1575: 67 40        cpia     0x40
1577: 39 04        jrzm     0x1574
1579: 67 4A        cpia     0x4A
157B: 2A 1B        jrncp    0x1597
157D: 67 40        cpia     0x40
157F: 3A 0B        jrcp     0x158B
1581: 64 0F        ania     0x0F
1583: A9           lp       0x29
1584: 1D           slw
1585: A9           lp       0x29
1586: 47           orma
1587: 24           ixl
1588: 49           deck
1589: 29 11        jrnzm    0x1579
158B: A8           lp       0x28
158C: 00 00        lii      0x00
158E: 13 29        liq      0x29
1590: 09           exw
1591: ED 3B        cal      0x0D3B
1593: FC CD        cal      0x1CCD
1595: 05           dx
1596: 37           rtn
1597: 67 51        cpia     0x51
1599: 3B 0F        jrcm     0x158B
159B: 67 57        cpia     0x57
159D: 2B 13        jrncm    0x158B
159F: 75 47        sbia     0x47
15A1: 2D 1F        jrm      0x1583
15A3: 93           lp       0x13
15A4: 61 10        orim     0x10
15A6: 60 F3        anim     0xF3
15A8: F2 BD        cal      0x12BD
15AA: 02 00        lia      0x00
15AC: DA           exab
15AD: 88           lp       0x08
15AE: 02 99        lia      0x99
15B0: 00 01        lii      0x01
15B2: 1E           film
15B3: 24           ixl
15B4: 93           lp       0x13
15B5: 67 40        cpia     0x40
15B7: 28 06        jrnzp    0x15BE
15B9: 60 EF        anim     0xEF
15BB: 24           ixl
15BC: 2D 08        jrm      0x15B5
15BE: 67 11        cpia     0x11
15C0: 38 2A        jrzp     0x15EB
15C2: 67 40        cpia     0x40
15C4: 3A D7        jrcp     0x169C
15C6: 67 4C        cpia     0x4C
15C8: 2A D3        jrncp    0x169C
15CA: 67 4A        cpia     0x4A
15CC: 2A 21        jrncp    0x15EE
15CE: 93           lp       0x13
15CF: 60 EF        anim     0xEF
15D1: 62 04        tsim     0x04
15D3: 28 09        jrnzp    0x15DD
15D5: 34           push
15D6: 89           lp       0x09
15D7: 02 01        lia      0x01
15D9: 00 01        lii      0x01
15DB: 0C           adn
15DC: 5B           pop
15DD: C2           incb
15DE: 83           lp       0x03
15DF: 63 0B        cpim     0x0B
15E1: 2A 09        jrncp    0x15EB
15E3: A6           lp       0x26
15E4: 00 04        lii      0x04
15E6: 1D           slw
15E7: A6           lp       0x26
15E8: 64 0F        ania     0x0F
15EA: 47           orma
15EB: 24           ixl
15EC: 2D 2F        jrm      0x15BE
15EE: 28 20        jrnzp    0x160F
15F0: 93           lp       0x13
15F1: 62 02        tsim     0x02
15F3: 28 A8        jrnzp    0x169C
15F5: 60 EF        anim     0xEF
15F7: 62 04        tsim     0x04
15F9: 29 0F        jrnzm    0x15EB
15FB: 61 04        orim     0x04
15FD: 83           lp       0x03
15FE: 63 00        cpim     0x00
1600: 29 16        jrnzm    0x15EB
1602: 00 01        lii      0x01
1604: 24           ixl
1605: 67 40        cpia     0x40
1607: 29 4A        jrnzm    0x15BE
1609: 89           lp       0x09
160A: 02 01        lia      0x01
160C: 0D           sbn
160D: 2D 0A        jrm      0x1604
160F: 93           lp       0x13
1610: 62 02        tsim     0x02
1612: 28 89        jrnzp    0x169C
1614: 83           lp       0x03
1615: 63 00        cpim     0x00
1617: 38 73        jrzp     0x168B
1619: F2 C4        cal      0x12C4
161B: 24           ixl
161C: 67 40        cpia     0x40
161E: 3A 59        jrcp     0x1678
1620: 67 4B        cpia     0x4B
1622: 2A 4D        jrncp    0x1670
1624: 67 4A        cpia     0x4A
1626: 38 09        jrzp     0x1630
1628: 64 0F        ania     0x0F
162A: A1           lp       0x21
162B: DB           exam
162C: 58           swp
162D: 64 F0        ania     0xF0
162F: 47           orma
1630: 24           ixl
1631: 67 40        cpia     0x40
1633: 3A 05        jrcp     0x1639
1635: 67 4B        cpia     0x4B
1637: 3B 14        jrcm     0x1624
1639: 67 4B        cpia     0x4B
163B: 39 0C        jrzm     0x1630
163D: A0           lp       0x20
163E: 02 00        lia      0x00
1640: DB           exam
1641: 59           ldm
1642: 93           lp       0x13
1643: 62 08        tsim     0x08
1645: 00 01        lii      0x01
1647: 38 04        jrzp     0x164C
1649: A1           lp       0x21
164A: DB           exam
164B: 0D           sbn
164C: A1           lp       0x21
164D: 13 09        liq      0x09
164F: 0E           adw
1650: A0           lp       0x20
1651: 63 90        cpim     0x90
1653: 3A 15        jrcp     0x1669
1655: 63 99        cpim     0x99
1657: 38 06        jrzp     0x165E
1659: F2 BD        cal      0x12BD
165B: D1           rc
165C: 05           dx
165D: 37           rtn
165E: 50           incp
165F: 63 00        cpim     0x00
1661: 39 09        jrzm     0x1659
1663: A1           lp       0x21
1664: 00 01        lii      0x01
1666: 1D           slw
1667: 2D 0D        jrm      0x165B
1669: 63 00        cpim     0x00
166B: 39 09        jrzm     0x1663
166D: F7 27        cal      0x1727
166F: 37           rtn
1670: 39 56        jrzm     0x161B
1672: A0           lp       0x20
1673: 13 08        liq      0x08
1675: 0A           mvb
1676: 2D 14        jrm      0x1663
1678: 67 35        cpia     0x35
167A: 39 60        jrzm     0x161B
167C: 67 36        cpia     0x36
167E: 29 0D        jrnzm    0x1672
1680: 93           lp       0x13
1681: 59           ldm
1682: 64 08        ania     0x08
1684: 74 08        adia     0x08
1686: 60 F7        anim     0xF7
1688: 47           orma
1689: 2D 6F        jrm      0x161B
168B: 93           lp       0x13
168C: 62 10        tsim     0x10
168E: 39 74        jrzm     0x161B
1690: A2           lp       0x22
1691: 02 10        lia      0x10
1693: DB           exam
1694: 89           lp       0x09
1695: 02 01        lia      0x01
1697: 00 01        lii      0x01
1699: 0C           adn
169A: 2D 80        jrm      0x161B
169C: 83           lp       0x03
169D: 63 00        cpim     0x00
169F: 39 45        jrzm     0x165B
16A1: F2 C4        cal      0x12C4
16A3: 2D 32        jrm      0x1672
16A5: 97           lp       0x17
16A6: D1           rc
16A7: 62 22        tsim     0x22
16A9: 38 03        jrzp     0x16AD
16AB: F7 05        cal      0x1705
16AD: 37           rtn
16AE: 97           lp       0x17
16AF: D1           rc
16B0: 62 20        tsim     0x20
16B2: 2D 0A        jrm      0x16A9
16B4: 97           lp       0x17
16B5: D1           rc
16B6: 62 26        tsim     0x26
16B8: 2D 10        jrm      0x16A9
16BA: 97           lp       0x17
16BB: D1           rc
16BC: 62 1D        tsim     0x1D
16BE: 2D 16        jrm      0x16A9
16C0: 93           lp       0x13
16C1: 60 E1        anim     0xE1
16C3: 24           ixl
16C4: 8A           lp       0x0A
16C5: DB           exam
16C6: 59           ldm
16C7: 67 6B        cpia     0x6B
16C9: 2A 38        jrncp    0x1702
16CB: 67 51        cpia     0x51
16CD: 3A 34        jrcp     0x1702
16CF: 24           ixl
16D0: 67 30        cpia     0x30
16D2: 28 0E        jrnzp    0x16E1
16D4: 93           lp       0x13
16D5: 61 08        orim     0x08
16D7: 8A           lp       0x0A
16D8: 63 51        cpim     0x51
16DA: 28 04        jrnzp    0x16DF
16DC: 93           lp       0x13
16DD: 61 02        orim     0x02
16DF: D1           rc
16E0: 37           rtn
16E1: 67 18        cpia     0x18
16E3: 28 18        jrnzp    0x16FC
16E5: 93           lp       0x13
16E6: 61 04        orim     0x04
16E8: 24           ixl
16E9: 67 30        cpia     0x30
16EB: 28 10        jrnzp    0x16FC
16ED: 8A           lp       0x0A
16EE: 63 51        cpim     0x51
16F0: 93           lp       0x13
16F1: 28 03        jrnzp    0x16F5
16F3: 61 02        orim     0x02
16F5: 61 08        orim     0x08
16F7: 8A           lp       0x0A
16F8: 61 80        orim     0x80
16FA: 2D 1C        jrm      0x16DF
16FC: 93           lp       0x13
16FD: 61 10        orim     0x10
16FF: 05           dx
1700: 2D 22        jrm      0x16DF
1702: F7 05        cal      0x1705
1704: 37           rtn
1705: 02 01        lia      0x01
1707: 94           lp       0x14
1708: DB           exam
1709: D0           sc
170A: 37           rtn
170B: 02 02        lia      0x02
170D: 2D 07        jrm      0x1707
170F: 02 03        lia      0x03
1711: 2D 0B        jrm      0x1707
1713: 02 04        lia      0x04
1715: 2D 0F        jrm      0x1707
1717: 02 05        lia      0x05
1719: 2D 13        jrm      0x1707
171B: 02 06        lia      0x06
171D: 2D 17        jrm      0x1707
171F: 02 07        lia      0x07
1721: 2D 1B        jrm      0x1707
1723: 02 08        lia      0x08
1725: 2D 1F        jrm      0x1707
1727: 02 09        lia      0x09
1729: 2D 23        jrm      0x1707
172B: D1           rc
172C: 5A           sl
172D: DA           exab
172E: 5A           sl
172F: DA           exab
1730: 37           rtn
1731: D1           rc
1732: DA           exab
1733: D2           sr
1734: DA           exab
1735: D2           sr
1736: 37           rtn
1737: F1 6E        cal      0x116E
1739: 2A 4C        jrncp    0x1786
173B: 92           lp       0x12
173C: 60 7F        anim     0x7F
173E: A1           lp       0x21
173F: 62 08        tsim     0x08
1741: 28 AD        jrnzp    0x17EF
1743: A0           lp       0x20
1744: 63 90        cpim     0x90
1746: 2A A0        jrncp    0x17E7
1748: 63 00        cpim     0x00
174A: 28 38        jrnzp    0x1783
174C: 50           incp
174D: 02 00        lia      0x00
174F: DB           exam
1750: 58           swp
1751: 64 0F        ania     0x0F
1753: 67 05        cpia     0x05
1755: 2A 2D        jrncp    0x1783
1757: 88           lp       0x08
1758: DB           exam
1759: 48           inck
175A: 02 00        lia      0x00
175C: 03 00        lib      0x00
175E: 00 03        lii      0x03
1760: A4           lp       0x24
1761: 1D           slw
1762: A1           lp       0x21
1763: 60 0F        anim     0x0F
1765: 44           adm
1766: 59           ldm
1767: 2A 04        jrncp    0x176C
1769: C2           incb
176A: 3A 18        jrcp     0x1783
176C: 49           deck
176D: 38 1B        jrzp     0x1789
176F: F7 2B        cal      0x172B
1771: A8           lp       0x28
1772: 13 02        liq      0x02
1774: 0A           mvb
1775: F7 2B        cal      0x172B
1777: F7 2B        cal      0x172B
1779: 3A 09        jrcp     0x1783
177B: A8           lp       0x28
177C: 14           adb
177D: 82           lp       0x02
177E: 13 28        liq      0x28
1780: 0A           mvb
1781: 2B 22        jrncm    0x1760
1783: F7 0F        cal      0x170F
1785: 37           rtn
1786: F7 27        cal      0x1727
1788: 37           rtn
1789: A8           lp       0x28
178A: 13 02        liq      0x02
178C: 0A           mvb
178D: 92           lp       0x12
178E: 59           ldm
178F: 64 0F        ania     0x0F
1791: 38 16        jrzp     0x17A8
1793: A8           lp       0x28
1794: 67 04        cpia     0x04
1796: 3A 29        jrcp     0x17C0
1798: A9           lp       0x29
1799: 63 00        cpim     0x00
179B: 29 19        jrnzm    0x1783
179D: A8           lp       0x28
179E: 67 06        cpia     0x06
17A0: 3A 07        jrcp     0x17A8
17A2: 38 19        jrzp     0x17BC
17A4: 2C 13        jrp      0x17B8
17A6: 2B 24        jrncm    0x1783
17A8: A9           lp       0x29
17A9: 63 00        cpim     0x00
17AB: 29 27        jrnzm    0x1785
17AD: 51           decp
17AE: 63 00        cpim     0x00
17B0: 29 2C        jrnzm    0x1785
17B2: 93           lp       0x13
17B3: 62 80        tsim     0x80
17B5: 39 33        jrzm     0x1783
17B7: 37           rtn
17B8: 63 17        cpim     0x17
17BA: 2D 15        jrm      0x17A6
17BC: 63 51        cpim     0x51
17BE: 2D 19        jrm      0x17A6
17C0: A9           lp       0x29
17C1: 62 80        tsim     0x80
17C3: 28 12        jrnzp    0x17D6
17C5: 92           lp       0x12
17C6: 62 80        tsim     0x80
17C8: 39 21        jrzm     0x17A8
17CA: A8           lp       0x28
17CB: 02 00        lia      0x00
17CD: 03 00        lib      0x00
17CF: 13 02        liq      0x02
17D1: 0B           exb
17D2: A8           lp       0x28
17D3: 15           sbb
17D4: 2D 2D        jrm      0x17A8
17D6: 92           lp       0x12
17D7: 62 80        tsim     0x80
17D9: 39 57        jrzm     0x1783
17DB: A9           lp       0x29
17DC: 63 80        cpim     0x80
17DE: 29 5C        jrnzm    0x1783
17E0: 51           decp
17E1: 63 00        cpim     0x00
17E3: 29 61        jrnzm    0x1783
17E5: 2D 3E        jrm      0x17A8
17E7: A8           lp       0x28
17E8: 02 00        lia      0x00
17EA: 00 01        lii      0x01
17EC: 1E           film
17ED: 2D 61        jrm      0x178D
17EF: 92           lp       0x12
17F0: 63 02        cpim     0x02
17F2: 29 70        jrnzm    0x1783
17F4: 61 80        orim     0x80
17F6: 2D B4        jrm      0x1743
17F8: F1 C7        cal      0x11C7
17FA: 93           lp       0x13
17FB: 62 20        tsim     0x20
17FD: 38 54        jrzp     0x1852
17FF: 62 04        tsim     0x04
1801: 38 61        jrzp     0x1863
1803: 02 D0        lia      0xD0
1805: A4           lp       0x24
1806: DB           exam
1807: 10 C6 F7     lidp     0xC6F7
180A: 57           ldd
180B: 03 C7        lib      0xC7
180D: A5           lp       0x25
180E: 13 02        liq      0x02
1810: 0A           mvb
1811: F8 DB        cal      0x18DB
1813: 07           dy
1814: 89           lp       0x09
1815: 02 00        lia      0x00
1817: DB           exam
1818: 02 07        lia      0x07
181A: 93           lp       0x13
181B: 62 12        tsim     0x12
181D: 28 0A        jrnzp    0x1828
181F: 22           ldr
1820: 74 04        adia     0x04
1822: 30           stp
1823: 59           ldm
1824: 88           lp       0x08
1825: DB           exam
1826: 2C 12        jrp      0x1839
1828: 88           lp       0x08
1829: DB           exam
182A: 38 0E        jrzp     0x1839
182C: 24           ixl
182D: 67 F5        cpia     0xF5
182F: 38 09        jrzp     0x1839
1831: 04           ix
1832: 24           ixl
1833: 67 00        cpia     0x00
1835: 38 12        jrzp     0x1848
1837: 2C 35        jrp      0x186D
1839: 86           lp       0x06
183A: 63 AF        cpim     0xAF
183C: 2A 1B        jrncp    0x1858
183E: 24           ixl
183F: 67 00        cpia     0x00
1841: 38 06        jrzp     0x1848
1843: 26           iys
1844: C8           incl
1845: 49           deck
1846: 29 0E        jrnzm    0x1839
1848: 89           lp       0x09
1849: 59           ldm
184A: A7           lp       0x27
184B: DB           exam
184C: 06           iy
184D: 86           lp       0x06
184E: 10 C6 F7     lidp     0xC6F7
1851: 53           mvdm
1852: F1 D2        cal      0x11D2
1854: D1           rc
1855: F1 77        cal      0x1177
1857: 37           rtn
1858: 24           ixl
1859: 67 00        cpia     0x00
185B: 39 14        jrzm     0x1848
185D: F1 D2        cal      0x11D2
185F: F7 17        cal      0x1717
1861: 2D 0D        jrm      0x1855
1863: 04           ix
1864: A0           lp       0x20
1865: 00 07        lii      0x07
1867: 18           mvwd
1868: A0           lp       0x20
1869: 63 F5        cpim     0xF5
186B: 29 1A        jrnzm    0x1852
186D: F1 D2        cal      0x11D2
186F: F7 27        cal      0x1727
1871: 37           rtn
1872: 10 C6 FC     lidp     0xC6FC
1875: 84           lp       0x04
1876: 1A           mvbd
1877: 05           dx
1878: 02 CF        lia      0xCF
187A: 03 C5        lib      0xC5
187C: F8 8E        cal      0x188E
187E: 38 0D        jrzp     0x188C
1880: 24           ixl
1881: 8A           lp       0x0A
1882: C7           cpma
1883: 38 09        jrzp     0x188D
1885: 24           ixl
1886: DA           exab
1887: 24           ixl
1888: 84           lp       0x04
1889: 14           adb
188A: 2B 13        jrncm    0x1878
188C: D0           sc
188D: 37           rtn
188E: 82           lp       0x02
188F: 13 04        liq      0x04
1891: 0B           exb
1892: 84           lp       0x04
1893: 15           sbb
1894: 82           lp       0x02
1895: 13 04        liq      0x04
1897: 0B           exb
1898: 37           rtn
1899: 84           lp       0x04
189A: 13 1C        liq      0x1C
189C: 0A           mvb
189D: 37           rtn
189E: A8           lp       0x28
189F: 59           ldm
18A0: 75 1A        sbia     0x1A
18A2: 03 00        lib      0x00
18A4: D1           rc
18A5: F7 2B        cal      0x172B
18A7: F7 2B        cal      0x172B
18A9: F7 2B        cal      0x172B
18AB: 37           rtn
18AC: 88           lp       0x08
18AD: 13 02        liq      0x02
18AF: 0A           mvb
18B0: 10 C6 E3     lidp     0xC6E3
18B3: 82           lp       0x02
18B4: 1A           mvbd
18B5: 82           lp       0x02
18B6: 13 06        liq      0x06
18B8: 0B           exb
18B9: 86           lp       0x06
18BA: 15           sbb
18BB: 82           lp       0x02
18BC: 13 06        liq      0x06
18BE: 0B           exb
18BF: 37           rtn
18C0: 07           dy
18C1: 02 51        lia      0x51
18C3: 26           iys
18C4: 37           rtn
18C5: F1 6A        cal      0x116A
18C7: D4 C0        anid     0xC0
18C9: F1 62        cal      0x1162
18CB: D4 E1        anid     0xE1
18CD: A0           lp       0x20
18CE: 02 32        lia      0x32
18D0: DB           exam
18D1: A1           lp       0x21
18D2: 02 11        lia      0x11
18D4: 00 16        lii      0x16
18D6: 1E           film
18D7: 78 40 0C     call     0x400C
18DA: 37           rtn
18DB: 86           lp       0x06
18DC: 13 02        liq      0x02
18DE: 0A           mvb
18DF: 37           rtn
18E0: 10 C6 FC     lidp     0xC6FC
18E3: F8 E7        cal      0x18E7
18E5: 11 CE        lidl     0xCE
18E7: 8C           lp       0x0C
18E8: 13 06        liq      0x06
18EA: 0A           mvb
18EB: 8C           lp       0x0C
18EC: 1B           exbd
18ED: 37           rtn
18EE: 92           lp       0x12
18EF: 60 F0        anim     0xF0
18F1: 61 04        orim     0x04
18F3: 93           lp       0x13
18F4: 60 7F        anim     0x7F
18F6: F7 37        cal      0x1737
18F8: 3A 6B        jrcp     0x1964
18FA: A8           lp       0x28
18FB: 63 1B        cpim     0x1B
18FD: 3A AA        jrcp     0x19A8
18FF: 10 C6 D8     lidp     0xC6D8
1902: 93           lp       0x13
1903: 62 40        tsim     0x40
1905: 28 9C        jrnzp    0x19A2
1907: D6 08        tsid     0x08
1909: 38 74        jrzp     0x197E
190B: 11 DE        lidl     0xDE
190D: 57           ldd
190E: A8           lp       0x28
190F: C7           cpma
1910: 3A 5A        jrcp     0x196B
1912: 38 58        jrzp     0x196B
1914: DA           exab
1915: 10 C6 FC     lidp     0xC6FC
1918: 84           lp       0x04
1919: 1A           mvbd
191A: 05           dx
191B: 24           ixl
191C: 67 51        cpia     0x51
191E: 28 49        jrnzp    0x1968
1920: F1 77        cal      0x1177
1922: A8           lp       0x28
1923: 59           ldm
1924: DA           exab
1925: 83           lp       0x03
1926: 45           sbm
1927: 02 00        lia      0x00
1929: DA           exab
192A: F7 2B        cal      0x172B
192C: F7 2B        cal      0x172B
192E: F7 2B        cal      0x172B
1930: 86           lp       0x06
1931: 15           sbb
1932: F8 AC        cal      0x18AC
1934: 2A 30        jrncp    0x1965
1936: F8 E0        cal      0x18E0
1938: F8 C0        cal      0x18C0
193A: 24           ixl
193B: DA           exab
193C: 24           ixl
193D: 88           lp       0x08
193E: 13 02        liq      0x02
1940: 0B           exb
1941: 88           lp       0x08
1942: 14           adb
1943: 88           lp       0x08
1944: 13 02        liq      0x02
1946: 0B           exb
1947: DA           exab
1948: 26           iys
1949: DA           exab
194A: 26           iys
194B: 06           iy
194C: 06           iy
194D: 02 08        lia      0x08
194F: 26           iys
1950: F1 72        cal      0x1172
1952: 02 00        lia      0x00
1954: 03 00        lib      0x00
1956: 82           lp       0x02
1957: 13 08        liq      0x08
1959: 0B           exb
195A: 78 40 09     call     0x4009
195D: A8           lp       0x28
195E: 10 C6 DE     lidp     0xC6DE
1961: 53           mvdm
1962: F7 F8        cal      0x17F8
1964: 37           rtn
1965: F7 1B        cal      0x171B
1967: 37           rtn
1968: F7 0F        cal      0x170F
196A: 37           rtn
196B: 02 51        lia      0x51
196D: 8A           lp       0x0A
196E: DB           exam
196F: F8 72        cal      0x1872
1971: 3B 0A        jrcm     0x1968
1973: 24           ixl
1974: DA           exab
1975: 24           ixl
1976: 84           lp       0x04
1977: 14           adb
1978: F8 9E        cal      0x189E
197A: 84           lp       0x04
197B: 15           sbb
197C: 2D 1B        jrm      0x1962
197E: 10 C6 FC     lidp     0xC6FC
1981: 84           lp       0x04
1982: 1A           mvbd
1983: 02 06        lia      0x06
1985: 03 00        lib      0x00
1987: 84           lp       0x04
1988: 15           sbb
1989: F8 9E        cal      0x189E
198B: 84           lp       0x04
198C: 15           sbb
198D: F1 77        cal      0x1177
198F: F8 AC        cal      0x18AC
1991: 2B 2D        jrncm    0x1965
1993: 10 C6 D8     lidp     0xC6D8
1996: D5 08        orid     0x08
1998: F8 E0        cal      0x18E0
199A: F8 C0        cal      0x18C0
199C: 02 03        lia      0x03
199E: 03 00        lib      0x00
19A0: 2D 64        jrm      0x193D
19A2: D6 08        tsid     0x08
19A4: 29 3D        jrnzm    0x1968
19A6: 2D 29        jrm      0x197E
19A8: 93           lp       0x13
19A9: 62 40        tsim     0x40
19AB: 38 03        jrzp     0x19AF
19AD: D1           rc
19AE: 37           rtn
19AF: 02 01        lia      0x01
19B1: A8           lp       0x28
19B2: 45           sbm
19B3: 02 97        lia      0x97
19B5: 03 C6        lib      0xC6
19B7: F1 E9        cal      0x11E9
19B9: A8           lp       0x28
19BA: 59           ldm
19BB: F8 A2        cal      0x18A2
19BD: 84           lp       0x04
19BE: 15           sbb
19BF: 2D 5E        jrm      0x1962
19C1: 10 C6 D0     lidp     0xC6D0
19C4: 8C           lp       0x0C
19C5: 1A           mvbd
19C6: F8 72        cal      0x1872
19C8: 3A 3E        jrcp     0x1A07
19CA: 93           lp       0x13
19CB: 62 40        tsim     0x40
19CD: 28 36        jrnzp    0x1A04
19CF: 04           ix
19D0: 04           ix
19D1: 24           ixl
19D2: 8C           lp       0x0C
19D3: DB           exam
19D4: C7           cpma
19D5: DB           exam
19D6: DA           exab
19D7: 3A 2C        jrcp     0x1A04
19D9: 24           ixl
19DA: 8D           lp       0x0D
19DB: DB           exam
19DC: C7           cpma
19DD: DB           exam
19DE: 3A 25        jrcp     0x1A04
19E0: 8D           lp       0x0D
19E1: 59           ldm
19E2: 8A           lp       0x0A
19E3: DB           exam
19E4: 02 00        lia      0x00
19E6: 8B           lp       0x0B
19E7: DB           exam
19E8: 59           ldm
19E9: C2           incb
19EA: 5A           sl
19EB: DA           exab
19EC: FA 9E        cal      0x1A9E
19EE: 8C           lp       0x0C
19EF: 59           ldm
19F0: 03 00        lib      0x00
19F2: 8A           lp       0x0A
19F3: 14           adb
19F4: 24           ixl
19F5: 34           push
19F6: 03 00        lib      0x00
19F8: FA 9E        cal      0x1A9E
19FA: 82           lp       0x02
19FB: 13 0A        liq      0x0A
19FD: 0A           mvb
19FE: 84           lp       0x04
19FF: 14           adb
1A00: F7 F8        cal      0x17F8
1A02: 5B           pop
1A03: 37           rtn
1A04: F7 0F        cal      0x170F
1A06: 37           rtn
1A07: 93           lp       0x13
1A08: 62 40        tsim     0x40
1A0A: 39 07        jrzm     0x1A04
1A0C: D1           rc
1A0D: 37           rtn
1A0E: 93           lp       0x13
1A0F: 62 10        tsim     0x10
1A11: 38 15        jrzp     0x1A27
1A13: 62 40        tsim     0x40
1A15: 28 0E        jrnzp    0x1A24
1A17: 8A           lp       0x0A
1A18: 59           ldm
1A19: 75 51        sbia     0x51
1A1B: A8           lp       0x28
1A1C: DB           exam
1A1D: FA CF        cal      0x1ACF
1A1F: F9 B3        cal      0x19B3
1A21: FA CF        cal      0x1ACF
1A23: 37           rtn
1A24: F7 27        cal      0x1727
1A26: 37           rtn
1A27: 62 02        tsim     0x02
1A29: 38 1F        jrzp     0x1A49
1A2B: 93           lp       0x13
1A2C: 59           ldm
1A2D: 34           push
1A2E: 97           lp       0x17
1A2F: 61 80        orim     0x80
1A31: F2 05        cal      0x1205
1A33: 5B           pop
1A34: 93           lp       0x13
1A35: DB           exam
1A36: 3B 11        jrcm     0x1A26
1A38: 24           ixl
1A39: 67 31        cpia     0x31
1A3B: 28 0A        jrnzp    0x1A46
1A3D: FA CF        cal      0x1ACF
1A3F: F8 EE        cal      0x18EE
1A41: FA CF        cal      0x1ACF
1A43: 3B 1E        jrcm     0x1A26
1A45: 37           rtn
1A46: F7 05        cal      0x1705
1A48: 37           rtn
1A49: 8A           lp       0x0A
1A4A: 59           ldm
1A4B: 34           push
1A4C: 93           lp       0x13
1A4D: 59           ldm
1A4E: 34           push
1A4F: 97           lp       0x17
1A50: 61 80        orim     0x80
1A52: F2 05        cal      0x1205
1A54: 3A 34        jrcp     0x1A89
1A56: FA D4        cal      0x1AD4
1A58: 3A 30        jrcp     0x1A89
1A5A: 10 C6 D1     lidp     0xC6D1
1A5D: 53           mvdm
1A5E: 24           ixl
1A5F: 67 1B        cpia     0x1B
1A61: 28 2A        jrnzp    0x1A8C
1A63: 97           lp       0x17
1A64: 61 80        orim     0x80
1A66: F2 05        cal      0x1205
1A68: 3A 20        jrcp     0x1A89
1A6A: FA D4        cal      0x1AD4
1A6C: 3A 1C        jrcp     0x1A89
1A6E: 10 C6 D0     lidp     0xC6D0
1A71: 53           mvdm
1A72: 24           ixl
1A73: 67 31        cpia     0x31
1A75: 28 0E        jrnzp    0x1A84
1A77: FA CF        cal      0x1ACF
1A79: 5B           pop
1A7A: 93           lp       0x13
1A7B: DB           exam
1A7C: 5B           pop
1A7D: 8A           lp       0x0A
1A7E: DB           exam
1A7F: F9 C1        cal      0x19C1
1A81: FA CF        cal      0x1ACF
1A83: 37           rtn
1A84: 5B           pop
1A85: 5B           pop
1A86: F7 05        cal      0x1705
1A88: 37           rtn
1A89: 5B           pop
1A8A: 5B           pop
1A8B: 37           rtn
1A8C: 67 31        cpia     0x31
1A8E: 29 0B        jrnzm    0x1A84
1A90: 10 C6 D1     lidp     0xC6D1
1A93: 57           ldd
1A94: DA           exab
1A95: 02 00        lia      0x00
1A97: 52           std
1A98: DA           exab
1A99: 11 D0        lidl     0xD0
1A9B: 52           std
1A9C: 2D 26        jrm      0x1A77
1A9E: 90           lp       0x10
1A9F: 13 02        liq      0x02
1AA1: 0A           mvb
1AA2: 02 00        lia      0x00
1AA4: 03 00        lib      0x00
1AA6: 90           lp       0x10
1AA7: 13 02        liq      0x02
1AA9: 0B           exb
1AAA: 67 00        cpia     0x00
1AAC: 28 07        jrnzp    0x1AB4
1AAE: DA           exab
1AAF: 67 00        cpia     0x00
1AB1: 38 18        jrzp     0x1ACA
1AB3: DA           exab
1AB4: F7 31        cal      0x1731
1AB6: 82           lp       0x02
1AB7: 13 0A        liq      0x0A
1AB9: 0B           exb
1ABA: 2A 05        jrncp    0x1AC0
1ABC: 90           lp       0x10
1ABD: 14           adb
1ABE: 3A 0F        jrcp     0x1ACE
1AC0: F7 2B        cal      0x172B
1AC2: 3A 0B        jrcp     0x1ACE
1AC4: 82           lp       0x02
1AC5: 13 0A        liq      0x0A
1AC7: 0B           exb
1AC8: 2B 1F        jrncm    0x1AAA
1ACA: 8A           lp       0x0A
1ACB: 13 10        liq      0x10
1ACD: 0B           exb
1ACE: 37           rtn
1ACF: 84           lp       0x04
1AD0: 13 1C        liq      0x1C
1AD2: 0B           exb
1AD3: 37           rtn
1AD4: 92           lp       0x12
1AD5: 60 F0        anim     0xF0
1AD7: 61 04        orim     0x04
1AD9: 93           lp       0x13
1ADA: 61 80        orim     0x80
1ADC: F7 37        cal      0x1737
1ADE: A8           lp       0x28
1ADF: 37           rtn
1AE0: 8A           lp       0x0A
1AE1: DB           exam
1AE2: 10 C6 F6     lidp     0xC6F6
1AE5: 57           ldd
1AE6: 67 10        cpia     0x10
1AE8: 38 10        jrzp     0x1AF9
1AEA: 03 F8        lib      0xF8
1AEC: F1 F5        cal      0x11F5
1AEE: 8A           lp       0x0A
1AEF: 59           ldm
1AF0: 26           iys
1AF1: 06           iy
1AF2: 86           lp       0x06
1AF3: 10 C6 F6     lidp     0xC6F6
1AF6: 53           mvdm
1AF7: D1           rc
1AF8: 37           rtn
1AF9: F7 17        cal      0x1717
1AFB: 37           rtn
1AFC: 8A           lp       0x0A
1AFD: DB           exam
1AFE: FC B0        cal      0x1CB0
1B00: 03 F8        lib      0xF8
1B02: F1 F5        cal      0x11F5
1B04: 28 2B        jrnzp    0x1B30
1B06: 67 10        cpia     0x10
1B08: 38 24        jrzp     0x1B2D
1B0A: 8A           lp       0x0A
1B0B: 59           ldm
1B0C: 26           iys
1B0D: 06           iy
1B0E: 86           lp       0x06
1B0F: 10 C6 F6     lidp     0xC6F6
1B12: 53           mvdm
1B13: 10 C6 F5     lidp     0xC6F5
1B16: 57           ldd
1B17: 67 80        cpia     0x80
1B19: 38 13        jrzp     0x1B2D
1B1B: 03 F8        lib      0xF8
1B1D: F1 F5        cal      0x11F5
1B1F: 06           iy
1B20: 00 07        lii      0x07
1B22: A0           lp       0x20
1B23: 19           exwd
1B24: 86           lp       0x06
1B25: 59           ldm
1B26: 74 08        adia     0x08
1B28: 10 C6 F5     lidp     0xC6F5
1B2B: 52           std
1B2C: 37           rtn
1B2D: F7 17        cal      0x1717
1B2F: 37           rtn
1B30: 8A           lp       0x0A
1B31: 59           ldm
1B32: FB 57        cal      0x1B57
1B34: 8B           lp       0x0B
1B35: DB           exam
1B36: 57           ldd
1B37: FB 57        cal      0x1B57
1B39: 8B           lp       0x0B
1B3A: C7           cpma
1B3B: 3A 17        jrcp     0x1B53
1B3D: 28 06        jrnzp    0x1B44
1B3F: 8A           lp       0x0A
1B40: 63 39        cpim     0x39
1B42: 38 10        jrzp     0x1B53
1B44: 8A           lp       0x0A
1B45: 59           ldm
1B46: 34           push
1B47: FA CF        cal      0x1ACF
1B49: FB 9E        cal      0x1B9E
1B4B: FA CF        cal      0x1ACF
1B4D: 5B           pop
1B4E: 8A           lp       0x0A
1B4F: DB           exam
1B50: 2B 53        jrncm    0x1AFE
1B52: 37           rtn
1B53: FA E2        cal      0x1AE2
1B55: 2D 43        jrm      0x1B13
1B57: 67 51        cpia     0x51
1B59: 2A 13        jrncp    0x1B6D
1B5B: 67 1B        cpia     0x1B
1B5D: 38 29        jrzp     0x1B87
1B5F: 75 30        sbia     0x30
1B61: 74 93        adia     0x93
1B63: 03 1B        lib      0x1B
1B65: 2A 02        jrncp    0x1B68
1B67: C2           incb
1B68: 00 00        lii      0x00
1B6A: 82           lp       0x02
1B6B: 35           data
1B6C: 37           rtn
1B6D: 67 D1        cpia     0xD1
1B6F: 2A 17        jrncp    0x1B87
1B71: 67 76        cpia     0x76
1B73: 3A 13        jrcp     0x1B87
1B75: 67 86        cpia     0x86
1B77: 2A 12        jrncp    0x1B8A
1B79: 67 85        cpia     0x85
1B7B: 38 14        jrzp     0x1B90
1B7D: 67 81        cpia     0x81
1B7F: 38 10        jrzp     0x1B90
1B81: 67 82        cpia     0x82
1B83: 2A 09        jrncp    0x1B8D
1B85: 2C 04        jrp      0x1B8A
1B87: 02 08        lia      0x08
1B89: 37           rtn
1B8A: 02 01        lia      0x01
1B8C: 37           rtn
1B8D: 02 06        lia      0x06
1B8F: 37           rtn
1B90: 02 07        lia      0x07
1B92: 37           rtn
1B93: 09           exw
1B94: 08           mvw
1B95: 06           iy
1B96: 06           iy
1B97: 06           iy
1B98: 05           dx
1B99: 05           dx
1B9A: 04           ix
1B9B: 04           ix
1B9C: 02 03        lia      0x03
1B9E: 57           ldd
1B9F: 86           lp       0x06
1BA0: 10 C6 F6     lidp     0xC6F6
1BA3: 53           mvdm
1BA4: 67 76        cpia     0x76
1BA6: 3A 88        jrcp     0x1C2F
1BA8: 67 A0        cpia     0xA0
1BAA: 2A 3F        jrncp    0x1BEA
1BAC: 67 8C        cpia     0x8C
1BAE: 2A 23        jrncp    0x1BD2
1BB0: 67 86        cpia     0x86
1BB2: 2A 37        jrncp    0x1BEA
1BB4: 67 85        cpia     0x85
1BB6: 38 80        jrzp     0x1C37
1BB8: 67 81        cpia     0x81
1BBA: 38 7C        jrzp     0x1C37
1BBC: 67 82        cpia     0x82
1BBE: 2A A4        jrncp    0x1C63
1BC0: 67 7D        cpia     0x7D
1BC2: 2A 12        jrncp    0x1BD5
1BC4: 8B           lp       0x0B
1BC5: DB           exam
1BC6: 78 40 0F     call     0x400F
1BC9: 78 40 12     call     0x4012
1BCC: 3A 05        jrcp     0x1BD2
1BCE: 78 40 15     call     0x4015
1BD1: 37           rtn
1BD2: F7 05        cal      0x1705
1BD4: 37           rtn
1BD5: F1 6E        cal      0x116E
1BD7: 3A 0F        jrcp     0x1BE7
1BD9: 7A 02 1B E6  dtj      0x02, $1BE6
1BDD: 69           ptj
1BDE: 7D 0F 6A     .case    0x7D, 0x0F6A
1BE1: 7E 0F 1C     .case    0x7E, 0x0F1C
1BE4: 0E A0        .default 0x0EA0
1BE6: 37           rtn
1BE7: F7 27        cal      0x1727
1BE9: 37           rtn
1BEA: F1 6E        cal      0x116E
1BEC: 2B 06        jrncm    0x1BE7
1BEE: 7A 13 1C 2E  dtj      0x13, $1C2E
1BF2: 69           ptj
1BF3: 86 10 EA     .case    0x86, 0x10EA
1BF6: 87 0B 8F     .case    0x87, 0x0B8F
1BF9: 88 0F 8C     .case    0x88, 0x0F8C
1BFC: 8B 0E BE     .case    0x8B, 0x0EBE
1BFF: A0 0B 96     .case    0xA0, 0x0B96
1C02: A1 0B 9C     .case    0xA1, 0x0B9C
1C05: A2 0B A2     .case    0xA2, 0x0BA2
1C08: A3 0B AF     .case    0xA3, 0x0BAF
1C0B: A4 0B B5     .case    0xA4, 0x0BB5
1C0E: A5 0B BB     .case    0xA5, 0x0BBB
1C11: A6 0B C1     .case    0xA6, 0x0BC1
1C14: A7 0B C7     .case    0xA7, 0x0BC7
1C17: A8 0B CD     .case    0xA8, 0x0BCD
1C1A: A9 0C DE     .case    0xA9, 0x0CDE
1C1D: AA 0B 26     .case    0xAA, 0x0B26
1C20: AB 0B 2B     .case    0xAB, 0x0B2B
1C23: AC 44 E6     .case    0xAC, 0x44E6
1C26: AD 0A 3A     .case    0xAD, 0x0A3A
1C29: AE 40 18     .case    0xAE, 0x4018
1C2C: 40 1B        .default 0x401B
1C2E: 37           rtn
1C2F: 67 37        cpia     0x37
1C31: 3A 31        jrcp     0x1C63
1C33: 67 3A        cpia     0x3A
1C35: 38 4E        jrzp     0x1C84
1C37: F1 6E        cal      0x116E
1C39: 2B 53        jrncm    0x1BE7
1C3B: FC A7        cal      0x1CA7
1C3D: 39 6C        jrzm     0x1BD2
1C3F: 8A           lp       0x0A
1C40: DB           exam
1C41: DA           exab
1C42: 75 04        sbia     0x04
1C44: 03 F8        lib      0xF8
1C46: F1 F1        cal      0x11F1
1C48: 24           ixl
1C49: 67 D0        cpia     0xD0
1C4B: 39 65        jrzm     0x1BE7
1C4D: 8A           lp       0x0A
1C4E: 59           ldm
1C4F: 7A 04 1C 62  dtj      0x04, $1C62
1C53: 69           ptj
1C54: 37 0B 74     .case    0x37, 0x0B74
1C57: 38 0B 7D     .case    0x38, 0x0B7D
1C5A: 39 0B 86     .case    0x39, 0x0B86
1C5D: 85 10 B0     .case    0x85, 0x10B0
1C60: 10 A5        .default 0x10A5
1C62: 37           rtn
1C63: FC A7        cal      0x1CA7
1C65: 39 94        jrzm     0x1BD2
1C67: 7A 07 1C 83  dtj      0x07, $1C83
1C6B: 69           ptj
1C6C: 32 0C 4A     .case    0x32, 0x0C4A
1C6F: 33 0C 50     .case    0x33, 0x0C50
1C72: 34 0B DC     .case    0x34, 0x0BDC
1C75: 35 0B 4C     .case    0x35, 0x0B4C
1C78: 36 0B 63     .case    0x36, 0x0B63
1C7B: 82 0C 39     .case    0x82, 0x0C39
1C7E: 83 0C 42     .case    0x83, 0x0C42
1C81: 0B D3        .default 0x0BD3
1C83: 37           rtn
1C84: F1 6E        cal      0x116E
1C86: 2B A0        jrncm    0x1BE7
1C88: A2           lp       0x22
1C89: 62 FF        tsim     0xFF
1C8B: 38 0A        jrzp     0x1C96
1C8D: A1           lp       0x21
1C8E: 59           ldm
1C8F: 58           swp
1C90: 74 80        adia     0x80
1C92: 58           swp
1C93: DB           exam
1C94: D1           rc
1C95: 37           rtn
1C96: E0 9F        cal      0x009F
1C98: D1           rc
1C99: 37           rtn
1C9A: 62 22        tsim     0x22
1C9C: 38 09        jrzp     0x1CA6
1C9E: FB 13        cal      0x1B13
1CA0: 3A 05        jrcp     0x1CA6
1CA2: 02 37        lia      0x37
1CA4: FA E0        cal      0x1AE0
1CA6: 37           rtn
1CA7: 10 C6 F5     lidp     0xC6F5
1CAA: DA           exab
1CAB: 57           ldd
1CAC: 67 40        cpia     0x40
1CAE: DA           exab
1CAF: 37           rtn
1CB0: 10 C6 F6     lidp     0xC6F6
1CB3: 57           ldd
1CB4: 67 00        cpia     0x00
1CB6: 37           rtn
1CB7: 03 F8        lib      0xF8
1CB9: F1 EE        cal      0x11EE
1CBB: 07           dy
1CBC: 57           ldd
1CBD: FB 57        cal      0x1B57
1CBF: 67 08        cpia     0x08
1CC1: 37           rtn
1CC2: 86           lp       0x06
1CC3: 10 C6 F6     lidp     0xC6F6
1CC6: 53           mvdm
1CC7: 37           rtn
1CC8: FC D7        cal      0x1CD7
1CCA: 61 01        orim     0x01
1CCC: 37           rtn
1CCD: FC D7        cal      0x1CD7
1CCF: 61 02        orim     0x02
1CD1: 37           rtn
1CD2: FC D7        cal      0x1CD7
1CD4: 61 08        orim     0x08
1CD6: 37           rtn
1CD7: 97           lp       0x17
1CD8: 60 C0        anim     0xC0
1CDA: 37           rtn
1CDB: 02 00        lia      0x00
1CDD: 88           lp       0x08
1CDE: DB           exam
1CDF: 02 D0        lia      0xD0
1CE1: A4           lp       0x24
1CE2: DB           exam
1CE3: 10 C6 F7     lidp     0xC6F7
1CE6: 57           ldd
1CE7: 03 C7        lib      0xC7
1CE9: F1 F5        cal      0x11F5
1CEB: 06           iy
1CEC: A5           lp       0x25
1CED: 13 06        liq      0x06
1CEF: 0A           mvb
1CF0: 07           dy
1CF1: 37           rtn
1CF2: 24           ixl
1CF3: 67 51        cpia     0x51
1CF5: 3A 05        jrcp     0x1CFB
1CF7: 67 6B        cpia     0x6B
1CF9: 3A 03        jrcp     0x1CFD
1CFB: F7 05        cal      0x1705
1CFD: 05           dx
1CFE: D1           rc
1CFF: 37           rtn
1D00: 02 47        lia      0x47
1D02: 34           push
1D03: 02 2A        lia      0x2A
1D05: 34           push
1D06: 10 F8 BE     lidp     0xF8BE
1D09: D6 02        tsid     0x02
1D0B: 28 05        jrnzp    0x1D11
1D0D: 02 03        lia      0x03
1D0F: FF B1        cal      0x1FB1
1D11: D6 08        tsid     0x08
1D13: 28 03        jrnzp    0x1D17
1D15: 6B 01        test     0x01
1D17: 02 BA        lia      0xBA
1D19: 03 F8        lib      0xF8
1D1B: F1 F5        cal      0x11F5
1D1D: 02 00        lia      0x00
1D1F: 26           iys
1D20: 02 FB        lia      0xFB
1D22: 26           iys
1D23: 02 FB        lia      0xFB
1D25: 80           lp       0x00
1D26: DB           exam
1D27: 12 5C        lip      0x5C
1D29: 61 FF        orim     0xFF
1D2B: 5D           outa
1D2C: F1 5E        cal      0x115E
1D2E: 50           incp
1D2F: 60 F0        anim     0xF0
1D31: 61 08        orim     0x08
1D33: DD           outb
1D34: 4E 0F        wait     0x0F
1D36: CC           inb
1D37: 64 07        ania     0x07
1D39: 38 1F        jrzp     0x1D59
1D3B: D2           sr
1D3C: 3A 12        jrcp     0x1D4F
1D3E: D2           sr
1D3F: 3A 04        jrcp     0x1D44
1D41: 02 01        lia      0x01
1D43: 37           rtn
1D44: D6 01        tsid     0x01
1D46: 28 1C        jrnzp    0x1D63
1D48: D4 F8        anid     0xF8
1D4A: D5 01        orid     0x01
1D4C: 02 08        lia      0x08
1D4E: 37           rtn
1D4F: D6 04        tsid     0x04
1D51: 28 11        jrnzp    0x1D63
1D53: D4 F8        anid     0xF8
1D55: D5 04        orid     0x04
1D57: 2D 0C        jrm      0x1D4C
1D59: D6 02        tsid     0x02
1D5B: 28 07        jrnzp    0x1D63
1D5D: D4 F8        anid     0xF8
1D5F: D5 02        orid     0x02
1D61: 2D 16        jrm      0x1D4C
1D63: FF 44        cal      0x1F44
1D65: 7D 40 03     jpnc     0x4003
1D68: 34           push
1D69: FF 44        cal      0x1F44
1D6B: DA           exab
1D6C: 5B           pop
1D6D: 7D 40 03     jpnc     0x4003
1D70: 83           lp       0x03
1D71: C7           cpma
1D72: 28 F3        jrnzp    0x1E66
1D74: F1 62        cal      0x1162
1D76: D6 01        tsid     0x01
1D78: 28 C2        jrnzp    0x1E3B
1D7A: D5 01        orid     0x01
1D7C: 11 BF        lidl     0xBF
1D7E: 52           std
1D7F: 11 3D        lidl     0x3D
1D81: 67 20        cpia     0x20
1D83: 2A 6D        jrncp    0x1DF1
1D85: 67 04        cpia     0x04
1D87: 38 19        jrzp     0x1DA1
1D89: 67 11        cpia     0x11
1D8B: 38 4F        jrzp     0x1DDB
1D8D: 67 0C        cpia     0x0C
1D8F: 3A 12        jrcp     0x1DA2
1D91: D6 02        tsid     0x02
1D93: 38 0D        jrzp     0x1DA1
1D95: 75 0C        sbia     0x0C
1D97: 74 E1        adia     0xE1
1D99: 03 43        lib      0x43
1D9B: 2A 02        jrncp    0x1D9E
1D9D: C2           incb
1D9E: F1 F1        cal      0x11F1
1DA0: 24           ixl
1DA1: 37           rtn
1DA2: 67 07        cpia     0x07
1DA4: 3A 29        jrcp     0x1DCE
1DA6: 39 06        jrzm     0x1DA1
1DA8: 67 09        cpia     0x09
1DAA: 28 11        jrnzp    0x1DBC
1DAC: D6 02        tsid     0x02
1DAE: 38 05        jrzp     0x1DB4
1DB0: D4 FD        anid     0xFD
1DB2: 2D 90        jrm      0x1D23
1DB4: D5 02        orid     0x02
1DB6: 11 3C        lidl     0x3C
1DB8: D4 FE        anid     0xFE
1DBA: 2D 98        jrm      0x1D23
1DBC: 11 3C        lidl     0x3C
1DBE: D6 01        tsid     0x01
1DC0: 38 05        jrzp     0x1DC6
1DC2: D4 FE        anid     0xFE
1DC4: 2D A2        jrm      0x1D23
1DC6: D5 01        orid     0x01
1DC8: 11 3D        lidl     0x3D
1DCA: D4 FD        anid     0xFD
1DCC: 2D AA        jrm      0x1D23
1DCE: D6 02        tsid     0x02
1DD0: 39 30        jrzm     0x1DA1
1DD2: 67 00        cpia     0x00
1DD4: 28 04        jrnzp    0x1DD9
1DD6: 02 0B        lia      0x0B
1DD8: 37           rtn
1DD9: 42           inca
1DDA: 37           rtn
1DDB: D6 02        tsid     0x02
1DDD: 38 04        jrzp     0x1DE2
1DDF: 02 F1        lia      0xF1
1DE1: 37           rtn
1DE2: 11 3C        lidl     0x3C
1DE4: D6 01        tsid     0x01
1DE6: 39 46        jrzm     0x1DA1
1DE8: 11 3E        lidl     0x3E
1DEA: D6 02        tsid     0x02
1DEC: 39 4C        jrzm     0x1DA1
1DEE: 02 D1        lia      0xD1
1DF0: 37           rtn
1DF1: 67 51        cpia     0x51
1DF3: 2A 27        jrncp    0x1E1B
1DF5: 67 34        cpia     0x34
1DF7: 38 0D        jrzp     0x1E05
1DF9: D6 02        tsid     0x02
1DFB: 39 5B        jrzm     0x1DA1
1DFD: 75 35        sbia     0x35
1DFF: 74 E5        adia     0xE5
1E01: 03 43        lib      0x43
1E03: 2D 69        jrm      0x1D9B
1E05: D6 02        tsid     0x02
1E07: 38 04        jrzp     0x1E0C
1E09: 02 F4        lia      0xF4
1E0B: 37           rtn
1E0C: 11 3C        lidl     0x3C
1E0E: D6 01        tsid     0x01
1E10: 39 70        jrzm     0x1DA1
1E12: 11 3E        lidl     0x3E
1E14: D6 02        tsid     0x02
1E16: 39 76        jrzm     0x1DA1
1E18: 02 D4        lia      0xD4
1E1A: 37           rtn
1E1B: D6 02        tsid     0x02
1E1D: 28 15        jrnzp    0x1E33
1E1F: 11 3C        lidl     0x3C
1E21: D6 01        tsid     0x01
1E23: 39 83        jrzm     0x1DA1
1E25: 11 3E        lidl     0x3E
1E27: D6 02        tsid     0x02
1E29: 39 89        jrzm     0x1DA1
1E2B: 75 51        sbia     0x51
1E2D: 74 15        adia     0x15
1E2F: 03 44        lib      0x44
1E31: 2D 97        jrm      0x1D9B
1E33: 75 51        sbia     0x51
1E35: 74 FB        adia     0xFB
1E37: 03 43        lib      0x43
1E39: 2D 9F        jrm      0x1D9B
1E3B: D6 02        tsid     0x02
1E3D: 38 36        jrzp     0x1E74
1E3F: 11 BF        lidl     0xBF
1E41: 55           mvmd
1E42: C7           cpma
1E43: 28 2C        jrnzp    0x1E70
1E45: 11 B8        lidl     0xB8
1E47: 88           lp       0x08
1E48: 1A           mvbd
1E49: 48           inck
1E4A: 2A 02        jrncp    0x1E4D
1E4C: C8           incl
1E4D: 88           lp       0x08
1E4E: 11 B8        lidl     0xB8
1E50: 1B           exbd
1E51: 11 BE        lidl     0xBE
1E53: D6 08        tsid     0x08
1E55: 38 0F        jrzp     0x1E65
1E57: 6B 01        test     0x01
1E59: 38 0B        jrzp     0x1E65
1E5B: D6 04        tsid     0x04
1E5D: 38 07        jrzp     0x1E65
1E5F: FE D4        cal      0x1ED4
1E61: 10 F8 BF     lidp     0xF8BF
1E64: 57           ldd
1E65: 37           rtn
1E66: F1 62        cal      0x1162
1E68: D6 01        tsid     0x01
1E6A: 38 9A        jrzp     0x1F05
1E6C: D6 02        tsid     0x02
1E6E: 38 91        jrzp     0x1F00
1E70: 11 BE        lidl     0xBE
1E72: D4 FD        anid     0xFD
1E74: 00 FB        lii      0xFB
1E76: 6B 01        test     0x01
1E78: 38 43        jrzp     0x1EBC
1E7A: 02 BA        lia      0xBA
1E7C: 03 F8        lib      0xF8
1E7E: F1 F1        cal      0x11F1
1E80: 03 02        lib      0x02
1E82: 24           ixl
1E83: 66 0F        tsia     0x0F
1E85: 28 0D        jrnzp    0x1E93
1E87: 34           push
1E88: 02 00        lia      0x00
1E8A: FF B1        cal      0x1FB1
1E8C: 4E A0        wait     0xA0
1E8E: 02 01        lia      0x01
1E90: FF B1        cal      0x1FB1
1E92: 5B           pop
1E93: 42           inca
1E94: 52           std
1E95: 2A 20        jrncp    0x1EB6
1E97: C3           decb
1E98: 29 17        jrnzm    0x1E82
1E9A: 02 FF        lia      0xFF
1E9C: 03 02        lib      0x02
1E9E: 52           std
1E9F: 05           dx
1EA0: C3           decb
1EA1: 29 04        jrnzm    0x1E9E
1EA3: B0           lp       0x30
1EA4: 02 A0        lia      0xA0
1EA6: 03 08        lib      0x08
1EA8: DB           exam
1EA9: 59           ldm
1EAA: 42           inca
1EAB: 50           incp
1EAC: C3           decb
1EAD: 29 06        jrnzm    0x1EA8
1EAF: 02 08        lia      0x08
1EB1: FF B1        cal      0x1FB1
1EB3: 79 1D 23     jp       0x1D23
1EB6: 11 BE        lidl     0xBE
1EB8: D6 04        tsid     0x04
1EBA: 28 14        jrnzp    0x1ECF
1EBC: F1 62        cal      0x1162
1EBE: D6 01        tsid     0x01
1EC0: 7C 1D 27     jpnz     0x1D27
1EC3: 12 5D        lip      0x5D
1EC5: 61 0F        orim     0x0F
1EC7: DD           outb
1EC8: 02 05        lia      0x05
1ECA: FF B1        cal      0x1FB1
1ECC: 79 1D 27     jp       0x1D27
1ECF: FE D4        cal      0x1ED4
1ED1: 79 1D 27     jp       0x1D27
1ED4: 11 BE        lidl     0xBE
1ED6: D6 10        tsid     0x10
1ED8: 38 21        jrzp     0x1EFA
1EDA: D4 EF        anid     0xEF
1EDC: 10 C6 E8     lidp     0xC6E8
1EDF: 57           ldd
1EE0: FF BC        cal      0x1FBC
1EE2: 10 C6 E9     lidp     0xC6E9
1EE5: 57           ldd
1EE6: 42           inca
1EE7: 03 F8        lib      0xF8
1EE9: F1 F5        cal      0x11F5
1EEB: 67 40        cpia     0x40
1EED: 03 05        lib      0x05
1EEF: 2A 04        jrncp    0x1EF4
1EF1: FF B6        cal      0x1FB6
1EF3: 37           rtn
1EF4: 24           ixl
1EF5: 27           dys
1EF6: C3           decb
1EF7: 29 04        jrnzm    0x1EF4
1EF9: 37           rtn
1EFA: D5 10        orid     0x10
1EFC: 02 4C        lia      0x4C
1EFE: 2D 1F        jrm      0x1EE0
1F00: 40           inci
1F01: 2B 31        jrncm    0x1ED1
1F03: D4 FE        anid     0xFE
1F05: D6 08        tsid     0x08
1F07: 39 92        jrzm     0x1E76
1F09: 10 C6 F1     lidp     0xC6F1
1F0C: 02 B0        lia      0xB0
1F0E: 52           std
1F0F: 78 45 DB     call     0x45DB
1F12: F1 62        cal      0x1162
1F14: D4 E1        anid     0xE1
1F16: 79 1D 23     jp       0x1D23
1F19: 11 69        lidl     0x69
1F1B: 63 11        cpim     0x11
1F1D: 1F           fild
1F1E: 11 64        lidl     0x64
1F20: 5F           outf
1F21: 11 00        lidl     0x00
1F23: 00 00        lii      0x00
1F25: 00 00        lii      0x00
1F27: 00 00        lii      0x00
1F29: 00 00        lii      0x00
1F2B: 00 00        lii      0x00
1F2D: 00 00        lii      0x00
1F2F: 00 00        lii      0x00
1F31: 00 C2        lii      0xC2
1F33: 2A 08        jrncp    0x1F3C
1F35: D1           rc
1F36: 5A           sl
1F37: 3A 04        jrcp     0x1F3C
1F39: 48           inck
1F3A: 2D 06        jrm      0x1F35
1F3C: 02 34        lia      0x34
1F3E: 28 03        jrnzp    0x1F42
1F40: 88           lp       0x08
1F41: 59           ldm
1F42: DA           exab
1F43: 37           rtn
1F44: 6B 08        test     0x08
1F46: 38 05        jrzp     0x1F4C
1F48: 02 07        lia      0x07
1F4A: 2C 64        jrp      0x1FAF
1F4C: 88           lp       0x08
1F4D: 60 00        anim     0x00
1F4F: 89           lp       0x09
1F50: 02 07        lia      0x07
1F52: DB           exam
1F53: 8A           lp       0x0A
1F54: 61 FF        orim     0xFF
1F56: 03 FF        lib      0xFF
1F58: 12 5C        lip      0x5C
1F5A: 02 01        lia      0x01
1F5C: DB           exam
1F5D: 5D           outa
1F5E: 50           incp
1F5F: 60 F0        anim     0xF0
1F61: DD           outb
1F62: 51           decp
1F63: 59           ldm
1F64: D1           rc
1F65: 5A           sl
1F66: DB           exam
1F67: 8A           lp       0x0A
1F68: 4C           ina
1F69: 5D           outa
1F6A: DB           exam
1F6B: D1           rc
1F6C: 5A           sl
1F6D: 46           anma
1F6E: DB           exam
1F6F: 38 03        jrzp     0x1F73
1F71: FF 32        cal      0x1F32
1F73: 89           lp       0x09
1F74: 59           ldm
1F75: 88           lp       0x08
1F76: 44           adm
1F77: C9           decl
1F78: 12 5C        lip      0x5C
1F7A: 29 18        jrnzm    0x1F63
1F7C: 60 00        anim     0x00
1F7E: 5D           outa
1F7F: 50           incp
1F80: 61 01        orim     0x01
1F82: 89           lp       0x09
1F83: 02 03        lia      0x03
1F85: DB           exam
1F86: 12 5D        lip      0x5D
1F88: DD           outb
1F89: 59           ldm
1F8A: 64 03        ania     0x03
1F8C: 44           adm
1F8D: 4E 17        wait     0x17
1F8F: 4C           ina
1F90: 38 03        jrzp     0x1F94
1F92: FF 32        cal      0x1F32
1F94: 88           lp       0x08
1F95: 70 08        adim     0x08
1F97: C9           decl
1F98: 29 13        jrnzm    0x1F86
1F9A: 12 5D        lip      0x5D
1F9C: 60 F0        anim     0xF0
1F9E: DD           outb
1F9F: DA           exab
1FA0: 67 35        cpia     0x35
1FA2: 3A 02        jrcp     0x1FA5
1FA4: 37           rtn
1FA5: 74 2F        adia     0x2F
1FA7: 03 44        lib      0x44
1FA9: 2A 02        jrncp    0x1FAC
1FAB: C2           incb
1FAC: F1 F1        cal      0x11F1
1FAE: 24           ixl
1FAF: D0           sc
1FB0: 37           rtn
1FB1: 12 5F        lip      0x5F
1FB3: DB           exam
1FB4: DF           outc
1FB5: 37           rtn
1FB6: 24           ixl
1FB7: 26           iys
1FB8: C3           decb
1FB9: 29 04        jrnzm    0x1FB6
1FBB: 37           rtn
1FBC: 34           push
1FBD: 02 64        lia      0x64
1FBF: 03 44        lib      0x44
1FC1: F1 F1        cal      0x11F1
1FC3: 5B           pop
1FC4: 03 00        lib      0x00
1FC6: 67 20        cpia     0x20
1FC8: 2A 13        jrncp    0x1FDC
1FCA: 75 10        sbia     0x10
1FCC: 8B           lp       0x0B
1FCD: DB           exam
1FCE: 59           ldm
1FCF: 5A           sl
1FD0: 5A           sl
1FD1: DA           exab
1FD2: 5A           sl
1FD3: DA           exab
1FD4: 44           adm
1FD5: 59           ldm
1FD6: 2A 02        jrncp    0x1FD9
1FD8: C2           incb
1FD9: 84           lp       0x04
1FDA: 14           adb
1FDB: 37           rtn
1FDC: 75 20        sbia     0x20
1FDE: 2D 13        jrm      0x1FCC
1FE0: FF EE        cal      0x1FEE
1FE2: FF F6        cal      0x1FF6
1FE4: 78 44 EF     call     0x44EF
1FE7: FF F6        cal      0x1FF6
1FE9: FF EE        cal      0x1FEE
1FEB: 79 0E D7     jp       0x0ED7
1FEE: 10 F8 00     lidp     0xF800
1FF1: 00 0F        lii      0x0F
1FF3: B0           lp       0x30
1FF4: 19           exwd
1FF5: 37           rtn
1FF6: 10 C6 A7     lidp     0xC6A7
1FF9: 00 07        lii      0x07
1FFB: B0           lp       0x30
1FFC: 19           exwd
1FFD: 37           rtn
1FFE: C8           incl
1FFF: 00 00        lii      0x00
