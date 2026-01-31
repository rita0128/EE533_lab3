VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "aspartan3e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_3(111:0)
        SIGNAL pipe1(71:0)
        SIGNAL clk
        SIGNAL ce
        SIGNAL XLXN_10
        SIGNAL pipe0(71:0)
        SIGNAL XLXN_17
        SIGNAL match_en
        SIGNAL XLXN_25
        SIGNAL match
        SIGNAL mrst
        SIGNAL hwregA(63:0)
        SIGNAL hwregA(62:56)
        SIGNAL hwregA(55:0)
        SIGNAL pipe0(47:0)
        SIGNAL pipe1(63:0)
        PORT Input pipe1(71:0)
        PORT Input clk
        PORT Input ce
        PORT Input match_en
        PORT Output match
        PORT Input mrst
        PORT Input hwregA(63:0)
        BEGIN BLOCKDEF reg9B
            TIMESTAMP 2026 1 29 23 18 23
            RECTANGLE N 64 -256 320 0 
            RECTANGLE N 320 -236 384 -212 
            LINE N 320 -224 384 -224 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF busmerge
            TIMESTAMP 2026 1 30 9 35 15
            RECTANGLE N 64 -128 320 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF wordmatch
            TIMESTAMP 2026 1 29 0 22 6
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            LINE N 320 -160 384 -160 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF and3b1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 256 -128 192 -128 
            LINE N 64 -64 64 -192 
            ARC N 96 -176 192 -80 144 -80 144 -176 
            LINE N 144 -80 64 -80 
            LINE N 64 -176 144 -176 
        END BLOCKDEF
        BEGIN BLOCKDEF fdce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 64 -112 80 -128 
            LINE N 80 -128 64 -144 
            LINE N 192 -64 192 -32 
            LINE N 192 -32 64 -32 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF fd
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -320 320 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
        END BLOCKDEF
        BEGIN BLOCK XLXI_3 wordmatch
            PIN datacomp(55:0) hwregA(55:0)
            PIN match XLXN_17
            PIN datain(111:0) XLXN_3(111:0)
            PIN wildcard(6:0) hwregA(62:56)
        END BLOCK
        BEGIN BLOCK XLXI_4 and3b1
            PIN I0 match
            PIN I1 match_en
            PIN I2 XLXN_17
            PIN O XLXN_25
        END BLOCK
        BEGIN BLOCK XLXI_5 fdce
            PIN C clk
            PIN CE XLXN_25
            PIN CLR XLXN_10
            PIN D XLXN_25
            PIN Q match
        END BLOCK
        BEGIN BLOCK XLXI_6 fd
            PIN C clk
            PIN D mrst
            PIN Q XLXN_10
        END BLOCK
        BEGIN BLOCK XLXI_7 reg9B
            PIN q(71:0) pipe0(71:0)
            PIN d(71:0) pipe1(71:0)
            PIN clk clk
            PIN ce ce
            PIN clr XLXN_10
        END BLOCK
        BEGIN BLOCK XLXI_8 busmerge
            PIN da(47:0) pipe0(47:0)
            PIN db(63:0) pipe1(63:0)
            PIN q(111:0) XLXN_3(111:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_3 1376 1552 R0
        END INSTANCE
        INSTANCE XLXI_4 1968 1584 R0
        INSTANCE XLXI_5 2384 1712 R0
        INSTANCE XLXI_6 1856 2096 R0
        BEGIN BRANCH XLXN_3(111:0)
            WIRE 1216 1520 1376 1520
        END BRANCH
        BEGIN BRANCH pipe1(71:0)
            WIRE 704 1008 832 1008
        END BRANCH
        BEGIN BRANCH ce
            WIRE 704 1136 832 1136
        END BRANCH
        BEGIN BRANCH XLXN_10
            WIRE 768 1200 832 1200
            WIRE 768 1200 768 2096
            WIRE 768 2096 2384 2096
            WIRE 2240 1840 2384 1840
            WIRE 2384 1840 2384 2096
            WIRE 2384 1680 2384 1840
        END BRANCH
        BEGIN BRANCH pipe0(71:0)
            WIRE 1216 1008 1328 1008
            BEGIN DISPLAY 1328 1008 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_17
            WIRE 1760 1392 1968 1392
        END BRANCH
        BEGIN BRANCH match_en
            WIRE 1872 1456 1968 1456
        END BRANCH
        BEGIN BRANCH clk
            WIRE 704 1072 800 1072
            WIRE 800 1072 832 1072
            WIRE 800 1072 800 1264
            WIRE 800 1264 800 1968
            WIRE 800 1968 1856 1968
            WIRE 800 1264 1776 1264
            WIRE 1776 1264 1776 1584
            WIRE 1776 1584 2384 1584
        END BRANCH
        IOMARKER 1872 1456 match_en R180 28
        BEGIN BRANCH XLXN_25
            WIRE 2224 1456 2288 1456
            WIRE 2288 1456 2384 1456
            WIRE 2288 1456 2288 1520
            WIRE 2288 1520 2384 1520
        END BRANCH
        BEGIN BRANCH match
            WIRE 1920 1280 1920 1520
            WIRE 1920 1520 1968 1520
            WIRE 1920 1280 2800 1280
            WIRE 2800 1280 2800 1456
            WIRE 2800 1456 2896 1456
            WIRE 2768 1456 2800 1456
        END BRANCH
        IOMARKER 2896 1456 match R0 28
        BEGIN BRANCH mrst
            WIRE 1744 1840 1856 1840
        END BRANCH
        BEGIN BRANCH hwregA(63:0)
            WIRE 704 816 960 816
        END BRANCH
        IOMARKER 704 816 hwregA(63:0) R180 28
        IOMARKER 704 1008 pipe1(71:0) R180 28
        IOMARKER 704 1072 clk R180 28
        IOMARKER 704 1136 ce R180 28
        IOMARKER 1744 1840 mrst R180 28
        BEGIN BRANCH hwregA(62:56)
            WIRE 1184 1392 1264 1392
            WIRE 1264 1392 1376 1392
            BEGIN DISPLAY 1264 1392 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH hwregA(55:0)
            WIRE 1184 1456 1248 1456
            WIRE 1248 1456 1376 1456
            BEGIN DISPLAY 1248 1456 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pipe0(47:0)
            WIRE 672 1520 832 1520
            BEGIN DISPLAY 672 1520 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pipe1(63:0)
            WIRE 672 1584 720 1584
            WIRE 720 1584 832 1584
            BEGIN DISPLAY 672 1584 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_7 832 1232 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_8 832 1616 R0
        END INSTANCE
    END SHEET
END SCHEMATIC
