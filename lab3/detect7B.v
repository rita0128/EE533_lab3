--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 10.1
--  \   \         Application : sch2vhdl
--  /   /         Filename : detect7B.vhf
-- /___/   /\     Timestamp : 01/29/2026 20:26:55
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2vhdl.exe -intstyle ise -family aspartan3e -flat -suppress -w "C:/Documents and Settings/student/lab3/detect7B.sch" detect7B.vhf
--Design Name: detect7B
--Device: aspartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesis and simulted, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity detect7B is
   port ( ce       : in    std_logic; 
          clk      : in    std_logic; 
          hwregA   : in    std_logic_vector (63 downto 0); 
          match_en : in    std_logic; 
          mrst     : in    std_logic; 
          pipe1    : in    std_logic_vector (71 downto 0); 
          match    : out   std_logic);
end detect7B;

architecture BEHAVIORAL of detect7B is
   attribute BOX_TYPE   : string ;
   attribute INIT       : string ;
   signal pipe0       : std_logic_vector (71 downto 0);
   signal XLXN_3      : std_logic_vector (111 downto 0);
   signal XLXN_10     : std_logic;
   signal XLXN_17     : std_logic;
   signal XLXN_25     : std_logic;
   signal match_DUMMY : std_logic;
   component busmerge
      port ( da : in    std_logic_vector (47 downto 0); 
             db : in    std_logic_vector (63 downto 0); 
             q  : out   std_logic_vector (111 downto 0));
   end component;
   
   component wordmatch
      port ( datacomp : in    std_logic_vector (55 downto 0); 
             match    : out   std_logic; 
             datain   : in    std_logic_vector (111 downto 0); 
             wildcard : in    std_logic_vector (6 downto 0));
   end component;
   
   component AND3B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3B1 : component is "BLACK_BOX";
   
   component FDCE
      -- synopsys translate_off
      generic( INIT : bit :=  '0');
      -- synopsys translate_on
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute INIT of FDCE : component is "0";
   attribute BOX_TYPE of FDCE : component is "BLACK_BOX";
   
   component FD
      -- synopsys translate_off
      generic( INIT : bit :=  '0');
      -- synopsys translate_on
      port ( C : in    std_logic; 
             D : in    std_logic; 
             Q : out   std_logic);
   end component;
   attribute INIT of FD : component is "0";
   attribute BOX_TYPE of FD : component is "BLACK_BOX";
   
   component reg9B
      port ( q   : out   std_logic_vector (71 downto 0); 
             d   : in    std_logic_vector (71 downto 0); 
             clk : in    std_logic; 
             ce  : in    std_logic; 
             clr : in    std_logic);
   end component;
   
begin
   match <= match_DUMMY;
   XLXI_2 : busmerge
      port map (da(47 downto 0)=>pipe0(47 downto 0),
                db(63 downto 0)=>pipe1(63 downto 0),
                q(111 downto 0)=>XLXN_3(111 downto 0));
   
   XLXI_3 : wordmatch
      port map (datacomp(55 downto 0)=>hwregA(55 downto 0),
                datain(111 downto 0)=>XLXN_3(111 downto 0),
                wildcard(6 downto 0)=>hwregA(62 downto 56),
                match=>XLXN_17);
   
   XLXI_4 : AND3B1
      port map (I0=>match_DUMMY,
                I1=>match_en,
                I2=>XLXN_17,
                O=>XLXN_25);
   
   XLXI_5 : FDCE
      port map (C=>clk,
                CE=>XLXN_25,
                CLR=>XLXN_10,
                D=>XLXN_25,
                Q=>match_DUMMY);
   
   XLXI_6 : FD
      port map (C=>clk,
                D=>mrst,
                Q=>XLXN_10);
   
   XLXI_7 : reg9B
      port map (ce=>ce,
                clk=>clk,
                clr=>XLXN_10,
                d(71 downto 0)=>pipe1(71 downto 0),
                q(71 downto 0)=>pipe0(71 downto 0));
   
end BEHAVIORAL;


