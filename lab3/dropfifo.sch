VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "aspartan3e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL firstword
        SIGNAL lastword
        SIGNAL XLXN_6
        SIGNAL XLXN_7
        SIGNAL XLXN_8
        SIGNAL fifowrite
        SIGNAL waddr(7:0)
        SIGNAL XLXN_20(7:0)
        SIGNAL XLXN_24
        SIGNAL XLXN_27
        SIGNAL in_fifo0(71:0)
        SIGNAL XLXN_31
        SIGNAL XLXN_32
        SIGNAL XLXN_33
        SIGNAL fiforead
        SIGNAL XLXN_37
        SIGNAL raddr(7:0)
        SIGNAL valid_data
        SIGNAL drop_pkt
        SIGNAL XLXN_49(0:0)
        SIGNAL in_fifo(71:0)
        SIGNAL clk
        SIGNAL rst
        SIGNAL out_fifo(71:0)
        PORT Input firstword
        PORT Input lastword
        PORT Input fifowrite
        PORT Input fiforead
        PORT Output valid_data
        PORT Input drop_pkt
        PORT Input in_fifo(71:0)
        PORT Input clk
        PORT Input rst
        PORT Output out_fifo(71:0)
        BEGIN BLOCKDEF fd
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -320 320 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
        END BLOCKDEF
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
        BEGIN BLOCKDEF comp8
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -384 320 -64 
            LINE N 384 -224 320 -224 
            RECTANGLE N 0 -332 64 -308 
            LINE N 0 -320 64 -320 
            RECTANGLE N 0 -140 64 -116 
            LINE N 0 -128 64 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF cb8cle
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -448 320 -64 
            LINE N 0 -192 64 -192 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 0 -384 64 -384 
            RECTANGLE N 0 -396 64 -372 
            LINE N 384 -384 320 -384 
            LINE N 384 -192 320 -192 
            RECTANGLE N 320 -396 384 -372 
            LINE N 384 -128 320 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF cb8ce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 384 -128 320 -128 
            RECTANGLE N 320 -268 384 -244 
            LINE N 384 -256 320 -256 
            LINE N 0 -192 64 -192 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 384 -192 320 -192 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF fdc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            RECTANGLE N 64 -320 320 -64 
            LINE N 64 -112 80 -128 
            LINE N 80 -128 64 -144 
            LINE N 192 -64 192 -32 
            LINE N 192 -32 64 -32 
        END BLOCKDEF
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
        BEGIN BLOCKDEF dual9Bmem
            TIMESTAMP 2026 1 29 23 21 37
            BEGIN LINE W 0 80 32 80 
            END LINE
            BEGIN LINE W 0 112 32 112 
            END LINE
            BEGIN LINE W 0 208 32 208 
            END LINE
            LINE N 0 272 32 272 
            BEGIN LINE W 0 336 32 336 
            END LINE
            LINE N 0 528 32 528 
            RECTANGLE N 32 32 292 576 
            BEGIN LINE W 320 304 288 304 
            END LINE
        END BLOCKDEF
        BEGIN BLOCKDEF or2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 28 -224 204 -48 112 -48 192 -96 
            ARC N -40 -152 72 -40 48 -48 48 -144 
            LINE N 112 -144 48 -144 
            ARC N 28 -144 204 32 192 -96 112 -144 
            LINE N 112 -48 48 -48 
        END BLOCKDEF
        BEGIN BLOCKDEF and2b1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -48 64 -144 
            LINE N 64 -144 144 -144 
            LINE N 144 -48 64 -48 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 256 -96 192 -96 
            LINE N 0 -128 64 -128 
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
        END BLOCKDEF
        BEGIN BLOCKDEF and3b2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
            LINE N 0 -128 40 -128 
            CIRCLE N 40 -140 64 -116 
            LINE N 0 -192 64 -192 
            LINE N 256 -128 192 -128 
            LINE N 64 -64 64 -192 
            ARC N 96 -176 192 -80 144 -80 144 -176 
            LINE N 144 -80 64 -80 
            LINE N 64 -176 144 -176 
        END BLOCKDEF
        BEGIN BLOCKDEF vcc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -32 64 -64 
            LINE N 64 0 64 -32 
            LINE N 96 -64 32 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 fd
            PIN C clk
            PIN D firstword
            PIN Q XLXN_7
        END BLOCK
        BEGIN BLOCK XLXI_2 fd
            PIN C clk
            PIN D lastword
            PIN Q XLXN_8
        END BLOCK
        BEGIN BLOCK XLXI_3 fd
            PIN C clk
            PIN D fifowrite
            PIN Q XLXN_49(0:0)
        END BLOCK
        BEGIN BLOCK XLXI_4 fd8ce
            PIN C clk
            PIN CE XLXN_24
            PIN CLR rst
            PIN D(7:0) waddr(7:0)
            PIN Q(7:0) XLXN_20(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_6 comp8
            PIN A(7:0) raddr(7:0)
            PIN B(7:0) XLXN_20(7:0)
            PIN EQ XLXN_33
        END BLOCK
        BEGIN BLOCK XLXI_7 cb8cle
            PIN C clk
            PIN CE XLXN_49(0:0)
            PIN CLR rst
            PIN D(7:0) XLXN_20(7:0)
            PIN L XLXN_31
            PIN CEO
            PIN Q(7:0) waddr(7:0)
            PIN TC
        END BLOCK
        BEGIN BLOCK XLXI_8 cb8ce
            PIN C clk
            PIN CE XLXN_37
            PIN CLR rst
            PIN CEO
            PIN Q(7:0) raddr(7:0)
            PIN TC
        END BLOCK
        BEGIN BLOCK XLXI_9 fdc
            PIN C clk
            PIN CLR rst
            PIN D XLXN_37
            PIN Q valid_data
        END BLOCK
        BEGIN BLOCK XLXI_14 or2
            PIN I0 XLXN_8
            PIN I1 XLXN_7
            PIN O XLXN_6
        END BLOCK
        BEGIN BLOCK XLXI_15 and2b1
            PIN I0 XLXN_31
            PIN I1 XLXN_6
            PIN O XLXN_24
        END BLOCK
        BEGIN BLOCK XLXI_17 fd
            PIN C clk
            PIN D drop_pkt
            PIN Q XLXN_31
        END BLOCK
        BEGIN BLOCK XLXI_5 comp8
            PIN A(7:0) waddr(7:0)
            PIN B(7:0) raddr(7:0)
            PIN EQ XLXN_32
        END BLOCK
        BEGIN BLOCK XLXI_16 and3b2
            PIN I0 XLXN_33
            PIN I1 XLXN_32
            PIN I2 fiforead
            PIN O XLXN_37
        END BLOCK
        BEGIN BLOCK XLXI_21 vcc
            PIN P XLXN_27
        END BLOCK
        BEGIN BLOCK XLXI_23 reg9B
            PIN q(71:0) in_fifo0(71:0)
            PIN d(71:0) in_fifo(71:0)
            PIN clk clk
            PIN ce XLXN_27
            PIN clr rst
        END BLOCK
        BEGIN BLOCK XLXI_24 dual9Bmem
            PIN addra(7:0) waddr(7:0)
            PIN dina(71:0) in_fifo0(71:0)
            PIN wea(0:0) XLXN_49(0:0)
            PIN clka clk
            PIN addrb(7:0) raddr(7:0)
            PIN clkb clk
            PIN doutb(71:0) out_fifo(71:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 384 640 R0
        INSTANCE XLXI_2 384 1008 R0
        INSTANCE XLXI_7 1952 1504 R0
        INSTANCE XLXI_9 1952 2432 R0
        BEGIN BRANCH firstword
            WIRE 288 384 384 384
        END BRANCH
        BEGIN BRANCH lastword
            WIRE 288 752 384 752
        END BRANCH
        INSTANCE XLXI_17 384 2720 R0
        INSTANCE XLXI_6 1008 2352 R0
        INSTANCE XLXI_3 1152 752 R0
        BEGIN BRANCH XLXN_8
            WIRE 768 752 864 752
        END BRANCH
        INSTANCE XLXI_14 864 816 R0
        BEGIN BRANCH XLXN_7
            WIRE 768 384 784 384
            WIRE 784 384 784 688
            WIRE 784 688 864 688
        END BRANCH
        BEGIN BRANCH fifowrite
            WIRE 1056 496 1152 496
        END BRANCH
        IOMARKER 288 384 firstword R180 28
        IOMARKER 288 752 lastword R180 28
        IOMARKER 1056 496 fifowrite R180 28
        INSTANCE XLXI_15 1184 944 R0
        BEGIN BRANCH XLXN_6
            WIRE 1120 720 1136 720
            WIRE 1136 720 1136 816
            WIRE 1136 816 1184 816
        END BRANCH
        BEGIN BRANCH XLXN_20(7:0)
            WIRE 768 1120 848 1120
            WIRE 848 1120 1952 1120
            WIRE 848 1120 848 2224
            WIRE 848 2224 1008 2224
        END BRANCH
        INSTANCE XLXI_4 384 1376 R0
        INSTANCE XLXI_5 1008 1856 R0
        BEGIN BRANCH waddr(7:0)
            WIRE 208 1120 384 1120
            WIRE 208 1120 208 1536
            WIRE 208 1536 960 1536
            WIRE 960 1536 1008 1536
            WIRE 960 960 2400 960
            WIRE 2400 960 2400 1120
            WIRE 2400 1120 2400 1152
            WIRE 2400 1152 2768 1152
            WIRE 960 960 960 1536
            WIRE 2336 1120 2352 1120
            WIRE 2352 1120 2400 1120
            BEGIN DISPLAY 2352 1120 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_24
            WIRE 256 1184 384 1184
            WIRE 256 1184 256 1408
            WIRE 256 1408 1456 1408
            WIRE 1440 848 1456 848
            WIRE 1456 848 1456 1408
        END BRANCH
        BEGIN BRANCH XLXN_27
            WIRE 2208 400 2208 640
            WIRE 2208 640 2288 640
        END BRANCH
        INSTANCE XLXI_21 2144 400 R0
        BEGIN BRANCH in_fifo0(71:0)
            WIRE 2672 512 2720 512
            WIRE 2720 512 2720 608
            WIRE 2720 608 2720 1184
            WIRE 2720 1184 2768 1184
            BEGIN DISPLAY 2720 608 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_31
            WIRE 768 2464 1792 2464
            WIRE 1168 768 1168 880
            WIRE 1168 880 1184 880
            WIRE 1168 768 1792 768
            WIRE 1792 768 1792 1248
            WIRE 1792 1248 1952 1248
            WIRE 1792 1248 1792 2464
        END BRANCH
        BEGIN BRANCH XLXN_32
            WIRE 1392 1632 1504 1632
        END BRANCH
        INSTANCE XLXI_16 1504 1760 R0
        BEGIN BRANCH fiforead
            WIRE 1440 1504 1504 1504
            WIRE 1504 1504 1504 1568
        END BRANCH
        BEGIN BRANCH XLXN_33
            WIRE 1392 2128 1408 2128
            WIRE 1408 1696 1504 1696
            WIRE 1408 1696 1408 2128
        END BRANCH
        BEGIN BRANCH XLXN_37
            WIRE 1760 1632 1856 1632
            WIRE 1856 1632 1856 1680
            WIRE 1856 1680 1856 2176
            WIRE 1856 2176 1952 2176
            WIRE 1856 1680 1952 1680
        END BRANCH
        IOMARKER 1440 1504 fiforead R180 28
        BEGIN BRANCH raddr(7:0)
            WIRE 896 1728 896 1888
            WIRE 896 1888 896 2032
            WIRE 896 2032 1008 2032
            WIRE 896 1888 2480 1888
            WIRE 896 1728 944 1728
            WIRE 944 1728 1008 1728
            WIRE 2336 1616 2480 1616
            WIRE 2480 1616 2480 1888
            WIRE 2480 1408 2768 1408
            WIRE 2480 1408 2480 1616
            BEGIN DISPLAY 944 1728 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH valid_data
            WIRE 2336 2176 2448 2176
        END BRANCH
        IOMARKER 2448 2176 valid_data R0 28
        BEGIN BRANCH drop_pkt
            WIRE 288 2464 384 2464
        END BRANCH
        IOMARKER 288 2464 drop_pkt R180 28
        BEGIN BRANCH XLXN_49(0:0)
            WIRE 1536 496 1856 496
            WIRE 1856 496 1856 880
            WIRE 1856 880 1856 1312
            WIRE 1856 1312 1952 1312
            WIRE 1856 880 2560 880
            WIRE 2560 880 2560 1280
            WIRE 2560 1280 2768 1280
        END BRANCH
        BEGIN BRANCH in_fifo(71:0)
            WIRE 2160 512 2288 512
        END BRANCH
        IOMARKER 2160 512 in_fifo(71:0) R180 28
        BEGIN BRANCH clk
            WIRE 272 512 336 512
            WIRE 336 512 384 512
            WIRE 336 512 336 624
            WIRE 336 624 336 880
            WIRE 336 880 384 880
            WIRE 336 880 336 1008
            WIRE 336 1008 336 1248
            WIRE 336 1248 384 1248
            WIRE 336 1248 336 2592
            WIRE 336 2592 384 2592
            WIRE 336 1008 1824 1008
            WIRE 1824 1008 1824 1376
            WIRE 1824 1376 1952 1376
            WIRE 1824 1376 1824 1744
            WIRE 1824 1744 1824 1984
            WIRE 1824 1984 1824 2304
            WIRE 1824 2304 1952 2304
            WIRE 1824 1984 2688 1984
            WIRE 1824 1744 1952 1744
            WIRE 336 624 1152 624
            WIRE 1824 576 2288 576
            WIRE 1824 576 1824 1008
            WIRE 2688 1344 2768 1344
            WIRE 2688 1344 2688 1600
            WIRE 2688 1600 2768 1600
            WIRE 2688 1600 2688 1984
        END BRANCH
        IOMARKER 272 512 clk R180 28
        INSTANCE XLXI_8 1952 1872 R0
        BEGIN BRANCH rst
            WIRE 160 1424 384 1424
            WIRE 384 1424 1904 1424
            WIRE 1904 1424 1904 1472
            WIRE 1904 1472 1904 1840
            WIRE 1904 1840 1904 2400
            WIRE 1904 2400 1952 2400
            WIRE 1904 1840 1952 1840
            WIRE 1904 1472 1952 1472
            WIRE 384 1344 384 1360
            WIRE 384 1360 384 1424
            WIRE 1904 704 2288 704
            WIRE 1904 704 1904 1424
        END BRANCH
        IOMARKER 160 1424 rst R180 28
        BEGIN INSTANCE XLXI_23 2288 736 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_24 2768 1072 R0
        END INSTANCE
        BEGIN BRANCH out_fifo(71:0)
            WIRE 3088 1376 3152 1376
        END BRANCH
        IOMARKER 3152 1376 out_fifo(71:0) R0 28
    END SHEET
END SCHEMATIC
