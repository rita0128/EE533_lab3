VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "aspartan2e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL datain(111:0)
        SIGNAL XLXN_2(55:0)
        SIGNAL XLXN_3(55:0)
        SIGNAL XLXN_4(55:0)
        SIGNAL XLXN_5(55:0)
        SIGNAL XLXN_6(55:0)
        SIGNAL XLXN_7(55:0)
        SIGNAL XLXN_8(55:0)
        SIGNAL datacomp(55:0)
        SIGNAL XLXN_10(6:0)
        SIGNAL XLXN_11(6:0)
        SIGNAL XLXN_12(6:0)
        SIGNAL XLXN_13(6:0)
        SIGNAL XLXN_14(6:0)
        SIGNAL XLXN_15(6:0)
        SIGNAL XLXN_16(6:0)
        SIGNAL wildcard(6:0)
        SIGNAL datain(55:0)
        SIGNAL datain(63:8)
        SIGNAL datain(71:16)
        SIGNAL datain(79:24)
        SIGNAL datain(87:32)
        SIGNAL datain(95:40)
        SIGNAL datain(103:48)
        SIGNAL datain(111:56)
        SIGNAL XLXN_26
        SIGNAL XLXN_27
        SIGNAL XLXN_28
        SIGNAL XLXN_29
        SIGNAL XLXN_30
        SIGNAL XLXN_31
        SIGNAL XLXN_32
        SIGNAL XLXN_33
        SIGNAL XLXN_34
        SIGNAL XLXN_36
        SIGNAL match
        PORT Input datain(111:0)
        PORT Input datacomp(55:0)
        PORT Input wildcard(6:0)
        PORT Output match
        BEGIN BLOCKDEF comparator
            TIMESTAMP 2026 1 29 0 3 0
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF or8
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 48 -64 
            LINE N 0 -128 48 -128 
            LINE N 0 -192 48 -192 
            LINE N 0 -384 48 -384 
            LINE N 0 -448 48 -448 
            LINE N 0 -512 48 -512 
            LINE N 256 -288 192 -288 
            LINE N 0 -320 64 -320 
            LINE N 0 -256 64 -256 
            ARC N 28 -336 204 -160 192 -288 112 -336 
            LINE N 112 -240 48 -240 
            ARC N 28 -416 204 -240 112 -240 192 -288 
            ARC N -40 -344 72 -232 48 -240 48 -336 
            LINE N 112 -336 48 -336 
            LINE N 48 -336 48 -512 
            LINE N 48 -64 48 -240 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(55:0)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_26
        END BLOCK
        BEGIN BLOCK XLXI_2 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(63:8)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_29
        END BLOCK
        BEGIN BLOCK XLXI_3 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(71:16)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_30
        END BLOCK
        BEGIN BLOCK XLXI_4 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(79:24)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_31
        END BLOCK
        BEGIN BLOCK XLXI_5 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(87:32)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_32
        END BLOCK
        BEGIN BLOCK XLXI_6 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(95:40)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_33
        END BLOCK
        BEGIN BLOCK XLXI_7 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(103:48)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_34
        END BLOCK
        BEGIN BLOCK XLXI_8 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(111:56)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_36
        END BLOCK
        BEGIN BLOCK XLXI_9 or8
            PIN I0 XLXN_36
            PIN I1 XLXN_34
            PIN I2 XLXN_33
            PIN I3 XLXN_32
            PIN I4 XLXN_31
            PIN I5 XLXN_30
            PIN I6 XLXN_29
            PIN I7 XLXN_26
            PIN O match
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 928 480 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_2 928 752 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 928 1024 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 928 1296 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_5 928 1568 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_6 928 1824 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_7 928 2080 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_8 928 2352 R0
        END INSTANCE
        BEGIN BRANCH datain(111:0)
            WIRE 960 144 1264 144
        END BRANCH
        IOMARKER 960 144 datain(111:0) R180 28
        BEGIN BRANCH datacomp(55:0)
            WIRE 592 320 640 320
            WIRE 640 320 928 320
            WIRE 640 320 640 592
            WIRE 640 592 928 592
            WIRE 640 592 640 864
            WIRE 640 864 928 864
            WIRE 640 864 640 1136
            WIRE 640 1136 928 1136
            WIRE 640 1136 640 1408
            WIRE 640 1408 928 1408
            WIRE 640 1408 640 1664
            WIRE 640 1664 928 1664
            WIRE 640 1664 640 1920
            WIRE 640 1920 928 1920
            WIRE 640 1920 640 2192
            WIRE 640 2192 928 2192
        END BRANCH
        IOMARKER 592 320 datacomp(55:0) R180 28
        BEGIN BRANCH wildcard(6:0)
            WIRE 576 448 688 448
            WIRE 688 448 928 448
            WIRE 688 448 688 720
            WIRE 688 720 928 720
            WIRE 688 720 688 992
            WIRE 688 992 928 992
            WIRE 688 992 688 1264
            WIRE 688 1264 928 1264
            WIRE 688 1264 688 1536
            WIRE 688 1536 928 1536
            WIRE 688 1536 688 1792
            WIRE 688 1792 928 1792
            WIRE 688 1792 688 2048
            WIRE 688 2048 928 2048
            WIRE 688 2048 688 2320
            WIRE 688 2320 928 2320
        END BRANCH
        IOMARKER 576 448 wildcard(6:0) R180 28
        BEGIN BRANCH datain(55:0)
            WIRE 800 384 832 384
            WIRE 832 384 928 384
            BEGIN DISPLAY 832 384 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(63:8)
            WIRE 800 656 848 656
            WIRE 848 656 928 656
            BEGIN DISPLAY 848 656 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(71:16)
            WIRE 800 928 832 928
            WIRE 832 928 928 928
            BEGIN DISPLAY 832 928 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(79:24)
            WIRE 800 1200 848 1200
            WIRE 848 1200 928 1200
            BEGIN DISPLAY 848 1200 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(87:32)
            WIRE 800 1472 848 1472
            WIRE 848 1472 928 1472
            BEGIN DISPLAY 848 1472 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(95:40)
            WIRE 800 1728 832 1728
            WIRE 832 1728 928 1728
            BEGIN DISPLAY 832 1728 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(103:48)
            WIRE 800 1984 816 1984
            WIRE 816 1984 928 1984
            BEGIN DISPLAY 816 1984 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(111:56)
            WIRE 800 2256 832 2256
            WIRE 832 2256 928 2256
            BEGIN DISPLAY 832 2256 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_9 1648 1504 R0
        BEGIN BRANCH XLXN_26
            WIRE 1312 320 1504 320
            WIRE 1504 320 1504 992
            WIRE 1504 992 1648 992
        END BRANCH
        BEGIN BRANCH XLXN_29
            WIRE 1312 592 1456 592
            WIRE 1456 592 1456 1056
            WIRE 1456 1056 1648 1056
        END BRANCH
        BEGIN BRANCH XLXN_30
            WIRE 1312 864 1424 864
            WIRE 1424 864 1424 1120
            WIRE 1424 1120 1648 1120
        END BRANCH
        BEGIN BRANCH XLXN_31
            WIRE 1312 1136 1472 1136
            WIRE 1472 1136 1472 1184
            WIRE 1472 1184 1648 1184
        END BRANCH
        BEGIN BRANCH XLXN_32
            WIRE 1312 1408 1472 1408
            WIRE 1472 1248 1472 1408
            WIRE 1472 1248 1648 1248
        END BRANCH
        BEGIN BRANCH XLXN_33
            WIRE 1312 1664 1488 1664
            WIRE 1488 1312 1488 1664
            WIRE 1488 1312 1648 1312
        END BRANCH
        BEGIN BRANCH XLXN_34
            WIRE 1312 1920 1504 1920
            WIRE 1504 1376 1504 1920
            WIRE 1504 1376 1648 1376
        END BRANCH
        BEGIN BRANCH XLXN_36
            WIRE 1312 2192 1552 2192
            WIRE 1552 1440 1552 2192
            WIRE 1552 1440 1648 1440
        END BRANCH
        BEGIN BRANCH match
            WIRE 1904 1216 2096 1216
        END BRANCH
        IOMARKER 2096 1216 match R0 28
    END SHEET
END SCHEMATIC
