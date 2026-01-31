VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "aspartan3e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL d(71:64)
        SIGNAL d(63:48)
        SIGNAL d(47:32)
        SIGNAL d(31:16)
        SIGNAL d(15:0)
        SIGNAL clr
        SIGNAL ce
        SIGNAL clk
        SIGNAL q(71:64)
        SIGNAL q(63:48)
        SIGNAL q(47:32)
        SIGNAL q(31:16)
        SIGNAL q(15:0)
        SIGNAL d(71:0)
        SIGNAL q(71:0)
        PORT Input clr
        PORT Input ce
        PORT Input clk
        PORT Input d(71:0)
        PORT Output q(71:0)
        BEGIN BLOCKDEF fd8ce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            RECTANGLE N 320 -268 384 -244 
            RECTANGLE N 0 -268 64 -244 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF fd16ce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            RECTANGLE N 320 -268 384 -244 
            RECTANGLE N 0 -268 64 -244 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 fd8ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(7:0) d(71:64)
            PIN Q(7:0) q(71:64)
        END BLOCK
        BEGIN BLOCK XLXI_6 fd16ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(15:0) d(63:48)
            PIN Q(15:0) q(63:48)
        END BLOCK
        BEGIN BLOCK XLXI_7 fd16ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(15:0) d(47:32)
            PIN Q(15:0) q(47:32)
        END BLOCK
        BEGIN BLOCK XLXI_8 fd16ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(15:0) d(31:16)
            PIN Q(15:0) q(31:16)
        END BLOCK
        BEGIN BLOCK XLXI_9 fd16ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(15:0) d(15:0)
            PIN Q(15:0) q(15:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 1328 752 R0
        BEGIN BRANCH d(71:64)
            WIRE 960 496 1008 496
            WIRE 1008 496 1328 496
            BEGIN DISPLAY 1008 496 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d(63:48)
            WIRE 960 848 1008 848
            WIRE 1008 848 1328 848
            BEGIN DISPLAY 1008 848 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d(47:32)
            WIRE 960 1200 992 1200
            WIRE 992 1200 1328 1200
            BEGIN DISPLAY 992 1200 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d(31:16)
            WIRE 960 1568 992 1568
            WIRE 992 1568 1328 1568
            BEGIN DISPLAY 992 1568 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d(15:0)
            WIRE 960 1936 992 1936
            WIRE 992 1936 1328 1936
            BEGIN DISPLAY 992 1936 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clr
            WIRE 1040 720 1280 720
            WIRE 1280 720 1328 720
            WIRE 1280 720 1280 1072
            WIRE 1280 1072 1328 1072
            WIRE 1280 1072 1280 1424
            WIRE 1280 1424 1328 1424
            WIRE 1280 1424 1280 1792
            WIRE 1280 1792 1328 1792
            WIRE 1280 1792 1280 2160
            WIRE 1280 2160 1328 2160
        END BRANCH
        BEGIN BRANCH ce
            WIRE 1040 560 1168 560
            WIRE 1168 560 1328 560
            WIRE 1168 560 1168 912
            WIRE 1168 912 1328 912
            WIRE 1168 912 1168 1264
            WIRE 1168 1264 1328 1264
            WIRE 1168 1264 1168 1632
            WIRE 1168 1632 1328 1632
            WIRE 1168 1632 1168 2000
            WIRE 1168 2000 1328 2000
        END BRANCH
        BEGIN BRANCH clk
            WIRE 1040 624 1216 624
            WIRE 1216 624 1216 976
            WIRE 1216 976 1216 1328
            WIRE 1216 1328 1216 1696
            WIRE 1216 1696 1216 2064
            WIRE 1216 2064 1328 2064
            WIRE 1216 1696 1328 1696
            WIRE 1216 1328 1328 1328
            WIRE 1216 976 1328 976
            WIRE 1216 624 1328 624
        END BRANCH
        IOMARKER 1040 560 ce R180 28
        IOMARKER 1040 624 clk R180 28
        IOMARKER 1040 720 clr R180 28
        BEGIN BRANCH q(71:64)
            WIRE 1712 496 1792 496
            WIRE 1792 496 1872 496
            BEGIN DISPLAY 1792 496 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(63:48)
            WIRE 1712 848 1792 848
            WIRE 1792 848 1856 848
            BEGIN DISPLAY 1792 848 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(47:32)
            WIRE 1712 1200 1808 1200
            WIRE 1808 1200 1872 1200
            BEGIN DISPLAY 1808 1200 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(31:16)
            WIRE 1712 1568 1824 1568
            WIRE 1824 1568 1872 1568
            BEGIN DISPLAY 1824 1568 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(15:0)
            WIRE 1712 1936 1824 1936
            WIRE 1824 1936 1856 1936
            BEGIN DISPLAY 1824 1936 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d(71:0)
            WIRE 1024 224 1216 224
        END BRANCH
        BEGIN BRANCH q(71:0)
            WIRE 1008 272 1216 272
        END BRANCH
        IOMARKER 1024 224 d(71:0) R180 28
        IOMARKER 1216 272 q(71:0) R0 28
        INSTANCE XLXI_6 1328 1104 R0
        INSTANCE XLXI_7 1328 1456 R0
        INSTANCE XLXI_8 1328 1824 R0
        INSTANCE XLXI_9 1328 2192 R0
    END SHEET
END SCHEMATIC
