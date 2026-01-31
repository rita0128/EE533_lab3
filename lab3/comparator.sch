VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "aspartan2e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_5
        SIGNAL b(31:24)
        SIGNAL a(31:24)
        SIGNAL b(39:32)
        SIGNAL a(39:32)
        SIGNAL b(47:40)
        SIGNAL a(47:40)
        SIGNAL b(55:48)
        SIGNAL a(55:48)
        SIGNAL XLXN_4
        SIGNAL XLXN_3
        SIGNAL XLXN_2
        SIGNAL XLXN_1
        SIGNAL XLXN_61
        SIGNAL XLXN_62
        SIGNAL XLXN_63
        SIGNAL XLXN_64
        SIGNAL XLXN_65
        SIGNAL XLXN_66
        SIGNAL XLXN_7
        SIGNAL XLXN_6
        SIGNAL XLXN_71
        SIGNAL XLXN_72
        SIGNAL XLXN_73
        SIGNAL XLXN_74
        SIGNAL XLXN_75
        SIGNAL XLXN_76
        SIGNAL match
        SIGNAL a(55:0)
        SIGNAL b(55:0)
        SIGNAL amask(6:0)
        SIGNAL a(23:16)
        SIGNAL b(23:16)
        SIGNAL a(15:8)
        SIGNAL b(15:8)
        SIGNAL a(7:0)
        SIGNAL b(7:0)
        SIGNAL amask(6)
        SIGNAL amask(5)
        SIGNAL amask(3)
        SIGNAL amask(4)
        SIGNAL amask(0)
        SIGNAL amask(1)
        SIGNAL amask(2)
        PORT Output match
        PORT Input a(55:0)
        PORT Input b(55:0)
        PORT Input amask(6:0)
        BEGIN BLOCKDEF comp8
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -384 320 -64 
            LINE N 384 -224 320 -224 
            RECTANGLE N 0 -332 64 -308 
            LINE N 0 -320 64 -320 
            RECTANGLE N 0 -140 64 -116 
            LINE N 0 -128 64 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF or2b1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 32 -64 
            CIRCLE N 32 -76 56 -52 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            LINE N 112 -48 48 -48 
            ARC N 28 -144 204 32 192 -96 112 -144 
            LINE N 112 -144 48 -144 
            ARC N -40 -152 72 -40 48 -48 48 -144 
            ARC N 28 -224 204 -48 112 -48 192 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF and7
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -448 64 -64 
            ARC N 96 -304 192 -208 144 -208 144 -304 
            LINE N 64 -304 144 -304 
            LINE N 144 -208 64 -208 
            LINE N 256 -256 192 -256 
            LINE N 0 -448 64 -448 
            LINE N 0 -384 64 -384 
            LINE N 0 -320 64 -320 
            LINE N 0 -256 64 -256 
            LINE N 0 -192 64 -192 
            LINE N 0 -128 64 -128 
            LINE N 0 -64 64 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_25 and7
            PIN I0 XLXN_76
            PIN I1 XLXN_75
            PIN I2 XLXN_74
            PIN I3 XLXN_72
            PIN I4 XLXN_66
            PIN I5 XLXN_64
            PIN I6 XLXN_61
            PIN O match
        END BLOCK
        BEGIN BLOCK XLXI_12 or2b1
            PIN I0 amask(2)
            PIN I1 XLXN_5
            PIN O XLXN_74
        END BLOCK
        BEGIN BLOCK XLXI_5 comp8
            PIN A(7:0) a(23:16)
            PIN B(7:0) b(23:16)
            PIN EQ XLXN_5
        END BLOCK
        BEGIN BLOCK XLXI_11 or2b1
            PIN I0 amask(3)
            PIN I1 XLXN_4
            PIN O XLXN_72
        END BLOCK
        BEGIN BLOCK XLXI_10 or2b1
            PIN I0 amask(4)
            PIN I1 XLXN_3
            PIN O XLXN_66
        END BLOCK
        BEGIN BLOCK XLXI_9 or2b1
            PIN I0 amask(5)
            PIN I1 XLXN_2
            PIN O XLXN_64
        END BLOCK
        BEGIN BLOCK XLXI_8 or2b1
            PIN I0 amask(6)
            PIN I1 XLXN_1
            PIN O XLXN_61
        END BLOCK
        BEGIN BLOCK XLXI_4 comp8
            PIN A(7:0) a(31:24)
            PIN B(7:0) b(31:24)
            PIN EQ XLXN_4
        END BLOCK
        BEGIN BLOCK XLXI_3 comp8
            PIN A(7:0) a(39:32)
            PIN B(7:0) b(39:32)
            PIN EQ XLXN_3
        END BLOCK
        BEGIN BLOCK XLXI_2 comp8
            PIN A(7:0) a(47:40)
            PIN B(7:0) b(47:40)
            PIN EQ XLXN_2
        END BLOCK
        BEGIN BLOCK XLXI_1 comp8
            PIN A(7:0) a(55:48)
            PIN B(7:0) b(55:48)
            PIN EQ XLXN_1
        END BLOCK
        BEGIN BLOCK XLXI_14 or2b1
            PIN I0 amask(0)
            PIN I1 XLXN_7
            PIN O XLXN_76
        END BLOCK
        BEGIN BLOCK XLXI_7 comp8
            PIN A(7:0) a(7:0)
            PIN B(7:0) b(7:0)
            PIN EQ XLXN_7
        END BLOCK
        BEGIN BLOCK XLXI_13 or2b1
            PIN I0 amask(1)
            PIN I1 XLXN_6
            PIN O XLXN_75
        END BLOCK
        BEGIN BLOCK XLXI_6 comp8
            PIN A(7:0) a(15:8)
            PIN B(7:0) b(15:8)
            PIN EQ XLXN_6
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_25 2896 1680 R0
        INSTANCE XLXI_12 2336 1088 R0
        INSTANCE XLXI_5 1888 1184 R0
        BEGIN BRANCH XLXN_5
            WIRE 2272 960 2336 960
        END BRANCH
        INSTANCE XLXI_11 1216 2064 R0
        INSTANCE XLXI_10 1200 1664 R0
        INSTANCE XLXI_9 1216 1264 R0
        INSTANCE XLXI_8 1216 864 R0
        INSTANCE XLXI_4 768 2160 R0
        INSTANCE XLXI_3 768 1760 R0
        INSTANCE XLXI_2 768 1360 R0
        INSTANCE XLXI_1 768 960 R0
        BEGIN BRANCH b(31:24)
            WIRE 608 2032 624 2032
            WIRE 624 2032 768 2032
            BEGIN DISPLAY 624 2032 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(31:24)
            WIRE 592 1840 608 1840
            WIRE 608 1840 768 1840
            BEGIN DISPLAY 608 1840 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(39:32)
            WIRE 592 1632 624 1632
            WIRE 624 1632 768 1632
            BEGIN DISPLAY 624 1632 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(39:32)
            WIRE 592 1440 608 1440
            WIRE 608 1440 768 1440
            BEGIN DISPLAY 608 1440 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(47:40)
            WIRE 576 1232 592 1232
            WIRE 592 1232 768 1232
            BEGIN DISPLAY 592 1232 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(47:40)
            WIRE 592 1040 608 1040
            WIRE 608 1040 768 1040
            BEGIN DISPLAY 608 1040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(55:48)
            WIRE 592 832 608 832
            WIRE 608 832 768 832
            BEGIN DISPLAY 608 832 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(55:48)
            WIRE 592 640 624 640
            WIRE 624 640 768 640
            BEGIN DISPLAY 624 640 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_4
            WIRE 1152 1936 1216 1936
        END BRANCH
        BEGIN BRANCH XLXN_3
            WIRE 1152 1536 1200 1536
        END BRANCH
        BEGIN BRANCH XLXN_2
            WIRE 1152 1136 1216 1136
        END BRANCH
        BEGIN BRANCH XLXN_1
            WIRE 1152 736 1216 736
        END BRANCH
        BEGIN BRANCH XLXN_61
            WIRE 1472 768 2896 768
            WIRE 2896 768 2896 1232
        END BRANCH
        BEGIN BRANCH XLXN_64
            WIRE 1472 1168 2832 1168
            WIRE 2832 1168 2832 1296
            WIRE 2832 1296 2896 1296
        END BRANCH
        BEGIN BRANCH XLXN_66
            WIRE 1456 1568 1600 1568
            WIRE 1600 1200 1600 1568
            WIRE 1600 1200 2784 1200
            WIRE 2784 1200 2784 1360
            WIRE 2784 1360 2896 1360
        END BRANCH
        INSTANCE XLXI_14 2336 2048 R0
        INSTANCE XLXI_7 1888 2144 R0
        BEGIN BRANCH XLXN_7
            WIRE 2272 1920 2336 1920
        END BRANCH
        INSTANCE XLXI_13 2336 1584 R0
        INSTANCE XLXI_6 1888 1680 R0
        BEGIN BRANCH XLXN_6
            WIRE 2272 1456 2336 1456
        END BRANCH
        BEGIN BRANCH XLXN_72
            WIRE 1472 1968 1616 1968
            WIRE 1616 1232 1616 1968
            WIRE 1616 1232 2752 1232
            WIRE 2752 1232 2752 1424
            WIRE 2752 1424 2896 1424
        END BRANCH
        BEGIN BRANCH XLXN_74
            WIRE 2592 992 2672 992
            WIRE 2672 992 2672 1488
            WIRE 2672 1488 2896 1488
        END BRANCH
        BEGIN BRANCH XLXN_75
            WIRE 2592 1488 2624 1488
            WIRE 2624 1488 2624 1552
            WIRE 2624 1552 2896 1552
        END BRANCH
        BEGIN BRANCH XLXN_76
            WIRE 2592 1952 2896 1952
            WIRE 2896 1616 2896 1952
        END BRANCH
        BEGIN BRANCH match
            WIRE 3152 1424 3296 1424
        END BRANCH
        BEGIN BRANCH a(55:0)
            WIRE 784 272 1136 272
        END BRANCH
        BEGIN BRANCH b(55:0)
            WIRE 784 320 1136 320
        END BRANCH
        BEGIN BRANCH amask(6:0)
            WIRE 784 368 1136 368
        END BRANCH
        IOMARKER 784 272 a(55:0) R180 28
        IOMARKER 784 320 b(55:0) R180 28
        IOMARKER 784 368 amask(6:0) R180 28
        BEGIN BRANCH a(23:16)
            WIRE 1712 864 1728 864
            WIRE 1728 864 1888 864
            BEGIN DISPLAY 1728 864 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(23:16)
            WIRE 1696 1056 1712 1056
            WIRE 1712 1056 1888 1056
            BEGIN DISPLAY 1712 1056 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(15:8)
            WIRE 1712 1360 1728 1360
            WIRE 1728 1360 1888 1360
            BEGIN DISPLAY 1728 1360 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(15:8)
            WIRE 1712 1552 1728 1552
            WIRE 1728 1552 1888 1552
            BEGIN DISPLAY 1728 1552 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(7:0)
            WIRE 1696 1824 1728 1824
            WIRE 1728 1824 1872 1824
            WIRE 1872 1824 1888 1824
            BEGIN DISPLAY 1728 1824 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(7:0)
            WIRE 1696 2016 1712 2016
            WIRE 1712 2016 1888 2016
            BEGIN DISPLAY 1712 2016 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(6)
            WIRE 1152 800 1184 800
            WIRE 1184 800 1216 800
            BEGIN DISPLAY 1184 800 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(5)
            WIRE 1152 1200 1168 1200
            WIRE 1168 1200 1216 1200
            BEGIN DISPLAY 1168 1200 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(3)
            WIRE 1152 2000 1184 2000
            WIRE 1184 2000 1216 2000
            BEGIN DISPLAY 1184 2000 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(4)
            WIRE 1152 1600 1168 1600
            WIRE 1168 1600 1200 1600
            BEGIN DISPLAY 1168 1600 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(0)
            WIRE 2272 1984 2288 1984
            WIRE 2288 1984 2336 1984
            BEGIN DISPLAY 2288 1984 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(1)
            WIRE 2272 1520 2304 1520
            WIRE 2304 1520 2336 1520
            BEGIN DISPLAY 2304 1520 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH amask(2)
            WIRE 2288 1024 2304 1024
            WIRE 2304 1024 2336 1024
            BEGIN DISPLAY 2304 1024 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 3296 1424 match R0 28
    END SHEET
END SCHEMATIC
