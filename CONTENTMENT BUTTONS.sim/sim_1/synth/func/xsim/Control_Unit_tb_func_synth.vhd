-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Wed Mar 29 18:47:14 2023
-- Host        : DESKTOP-M09HIOT running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               {C:/Users/lewic/OneDrive/Documents/GitHub/VHDLproject/CONTENTMENT
--               BUTTONS.sim/sim_1/synth/func/xsim/Control_Unit_tb_func_synth.vhd}
-- Design      : Control_Unit
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Counter is
  port (
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    seg_OBUF : out STD_LOGIC_VECTOR ( 6 downto 0 );
    debounced_button_IBUF : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pause : in STD_LOGIC;
    digit_sel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    CLK : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end Counter;

architecture STRUCTURE of Counter is
  signal \^q\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \counters[10]_i_1_n_0\ : STD_LOGIC;
  signal \counters[11]_i_1_n_0\ : STD_LOGIC;
  signal \counters[11]_i_2_n_0\ : STD_LOGIC;
  signal \counters[15]_i_1_n_0\ : STD_LOGIC;
  signal \counters[1]_i_1_n_0\ : STD_LOGIC;
  signal \counters[2]_i_1_n_0\ : STD_LOGIC;
  signal \counters[3]_i_1_n_0\ : STD_LOGIC;
  signal \counters[3]_i_2_n_0\ : STD_LOGIC;
  signal \counters[5]_i_1_n_0\ : STD_LOGIC;
  signal \counters[6]_i_1_n_0\ : STD_LOGIC;
  signal \counters[7]_i_1_n_0\ : STD_LOGIC;
  signal \counters[7]_i_2_n_0\ : STD_LOGIC;
  signal \counters[9]_i_1_n_0\ : STD_LOGIC;
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal \plusOp_inferred__0/i__n_0\ : STD_LOGIC;
  signal \plusOp_inferred__1/i__n_0\ : STD_LOGIC;
  signal plusOp_n_0 : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counters[10]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \counters[11]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \counters[14]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \counters[15]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \counters[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \counters[3]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \counters[6]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \counters[7]_i_2\ : label is "soft_lutpair4";
  attribute nlopt_id : integer;
  attribute nlopt_id of plusOp : label is 5;
  attribute nlopt_id of \plusOp_inferred__0/i_\ : label is 11;
  attribute nlopt_id of \plusOp_inferred__1/i_\ : label is 17;
  attribute nlopt_id of \plusOp_inferred__2/i_\ : label is 23;
  attribute SOFT_HLUTNM of \seg_OBUF[0]_inst_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \seg_OBUF[1]_inst_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \seg_OBUF[2]_inst_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \seg_OBUF[3]_inst_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \seg_OBUF[4]_inst_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \seg_OBUF[5]_inst_i_1\ : label is "soft_lutpair2";
begin
  Q(15 downto 0) <= \^q\(15 downto 0);
\counters[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(8),
      I2 => \^q\(10),
      O => \counters[10]_i_1_n_0\
    );
\counters[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => debounced_button_IBUF(2),
      I1 => pause,
      O => \counters[11]_i_1_n_0\
    );
\counters[11]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(8),
      I2 => \^q\(10),
      I3 => \^q\(11),
      O => \counters[11]_i_2_n_0\
    );
\counters[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(12),
      I1 => \^q\(13),
      O => \plusOp__0\(13)
    );
\counters[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(13),
      I1 => \^q\(12),
      I2 => \^q\(14),
      O => \plusOp__0\(14)
    );
\counters[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => debounced_button_IBUF(3),
      I1 => pause,
      O => \counters[15]_i_1_n_0\
    );
\counters[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(13),
      I1 => \^q\(12),
      I2 => \^q\(14),
      I3 => \^q\(15),
      O => \plusOp__0\(15)
    );
\counters[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \counters[1]_i_1_n_0\
    );
\counters[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      O => \counters[2]_i_1_n_0\
    );
\counters[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => debounced_button_IBUF(0),
      I1 => pause,
      O => \counters[3]_i_1_n_0\
    );
\counters[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \counters[3]_i_2_n_0\
    );
\counters[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(5),
      O => \counters[5]_i_1_n_0\
    );
\counters[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => \^q\(6),
      O => \counters[6]_i_1_n_0\
    );
\counters[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => debounced_button_IBUF(1),
      I1 => pause,
      O => \counters[7]_i_1_n_0\
    );
\counters[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(4),
      I2 => \^q\(6),
      I3 => \^q\(7),
      O => \counters[7]_i_2_n_0\
    );
\counters[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(9),
      O => \counters[9]_i_1_n_0\
    );
\counters_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counters[3]_i_1_n_0\,
      CLR => AR(0),
      D => plusOp_n_0,
      Q => \^q\(0)
    );
\counters_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counters[11]_i_1_n_0\,
      CLR => AR(0),
      D => \counters[10]_i_1_n_0\,
      Q => \^q\(10)
    );
\counters_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counters[11]_i_1_n_0\,
      CLR => AR(0),
      D => \counters[11]_i_2_n_0\,
      Q => \^q\(11)
    );
\counters_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counters[15]_i_1_n_0\,
      CLR => AR(0),
      D => \plusOp__0\(12),
      Q => \^q\(12)
    );
\counters_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counters[15]_i_1_n_0\,
      CLR => AR(0),
      D => \plusOp__0\(13),
      Q => \^q\(13)
    );
\counters_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counters[15]_i_1_n_0\,
      CLR => AR(0),
      D => \plusOp__0\(14),
      Q => \^q\(14)
    );
\counters_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counters[15]_i_1_n_0\,
      CLR => AR(0),
      D => \plusOp__0\(15),
      Q => \^q\(15)
    );
\counters_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counters[3]_i_1_n_0\,
      CLR => AR(0),
      D => \counters[1]_i_1_n_0\,
      Q => \^q\(1)
    );
\counters_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counters[3]_i_1_n_0\,
      CLR => AR(0),
      D => \counters[2]_i_1_n_0\,
      Q => \^q\(2)
    );
\counters_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counters[3]_i_1_n_0\,
      CLR => AR(0),
      D => \counters[3]_i_2_n_0\,
      Q => \^q\(3)
    );
\counters_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counters[7]_i_1_n_0\,
      CLR => AR(0),
      D => \plusOp_inferred__0/i__n_0\,
      Q => \^q\(4)
    );
\counters_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counters[7]_i_1_n_0\,
      CLR => AR(0),
      D => \counters[5]_i_1_n_0\,
      Q => \^q\(5)
    );
\counters_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counters[7]_i_1_n_0\,
      CLR => AR(0),
      D => \counters[6]_i_1_n_0\,
      Q => \^q\(6)
    );
\counters_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counters[7]_i_1_n_0\,
      CLR => AR(0),
      D => \counters[7]_i_2_n_0\,
      Q => \^q\(7)
    );
\counters_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counters[11]_i_1_n_0\,
      CLR => AR(0),
      D => \plusOp_inferred__1/i__n_0\,
      Q => \^q\(8)
    );
\counters_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \counters[11]_i_1_n_0\,
      CLR => AR(0),
      D => \counters[9]_i_1_n_0\,
      Q => \^q\(9)
    );
plusOp: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => plusOp_n_0
    );
\plusOp_inferred__0/i_\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(4),
      O => \plusOp_inferred__0/i__n_0\
    );
\plusOp_inferred__1/i_\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(8),
      O => \plusOp_inferred__1/i__n_0\
    );
\plusOp_inferred__2/i_\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(12),
      O => \plusOp__0\(12)
    );
\seg_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA9C"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => sel0(1),
      O => seg_OBUF(0)
    );
\seg_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACE8"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(0),
      O => seg_OBUF(1)
    );
\seg_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAB0"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      O => seg_OBUF(2)
    );
\seg_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA9C"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => sel0(1),
      O => seg_OBUF(3)
    );
\seg_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFB8"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => sel0(0),
      O => seg_OBUF(4)
    );
\seg_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F9B8"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(0),
      O => seg_OBUF(5)
    );
\seg_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAA5"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(0),
      I2 => sel0(2),
      I3 => sel0(1),
      O => seg_OBUF(6)
    );
\seg_OBUF[6]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDB97531ECA86420"
    )
        port map (
      I0 => digit_sel(1),
      I1 => digit_sel(0),
      I2 => \^q\(11),
      I3 => \^q\(7),
      I4 => \^q\(15),
      I5 => \^q\(3),
      O => sel0(3)
    );
\seg_OBUF[6]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDB97531ECA86420"
    )
        port map (
      I0 => digit_sel(1),
      I1 => digit_sel(0),
      I2 => \^q\(8),
      I3 => \^q\(4),
      I4 => \^q\(12),
      I5 => \^q\(0),
      O => sel0(0)
    );
\seg_OBUF[6]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDB97531ECA86420"
    )
        port map (
      I0 => digit_sel(1),
      I1 => digit_sel(0),
      I2 => \^q\(10),
      I3 => \^q\(6),
      I4 => \^q\(14),
      I5 => \^q\(2),
      O => sel0(2)
    );
\seg_OBUF[6]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDB97531ECA86420"
    )
        port map (
      I0 => digit_sel(1),
      I1 => digit_sel(0),
      I2 => \^q\(9),
      I3 => \^q\(5),
      I4 => \^q\(13),
      I5 => \^q\(1),
      O => sel0(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Display is
  port (
    an_OBUF : out STD_LOGIC_VECTOR ( 3 downto 0 );
    digit_sel : out STD_LOGIC_VECTOR ( 1 downto 0 );
    CLK : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end Display;

architecture STRUCTURE of Display is
  signal digit_count : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \digit_count[3]_i_2_n_0\ : STD_LOGIC;
  signal \digit_count[5]_i_2_n_0\ : STD_LOGIC;
  signal \digit_count[5]_i_3_n_0\ : STD_LOGIC;
  signal \digit_count[7]_i_2_n_0\ : STD_LOGIC;
  signal \digit_count[7]_i_3_n_0\ : STD_LOGIC;
  signal \digit_count[9]_i_2_n_0\ : STD_LOGIC;
  signal digit_count_0 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \^digit_sel\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \digit_sel[0]_i_1_n_0\ : STD_LOGIC;
  signal \digit_sel[1]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \an_OBUF[1]_inst_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \an_OBUF[2]_inst_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \an_OBUF[3]_inst_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \digit_count[0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \digit_count[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \digit_count[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \digit_count[3]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \digit_count[4]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \digit_count[5]_i_3\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \digit_count[7]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \digit_count[7]_i_3\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \digit_count[8]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \digit_count[9]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \digit_sel[1]_i_1\ : label is "soft_lutpair7";
begin
  digit_sel(1 downto 0) <= \^digit_sel\(1 downto 0);
\an_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^digit_sel\(1),
      I1 => \^digit_sel\(0),
      O => an_OBUF(0)
    );
\an_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^digit_sel\(1),
      I1 => \^digit_sel\(0),
      O => an_OBUF(1)
    );
\an_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^digit_sel\(0),
      I1 => \^digit_sel\(1),
      O => an_OBUF(2)
    );
\an_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^digit_sel\(1),
      I1 => \^digit_sel\(0),
      O => an_OBUF(3)
    );
\digit_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => digit_count(0),
      O => digit_count_0(0)
    );
\digit_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => digit_count(0),
      I1 => digit_count(1),
      O => digit_count_0(1)
    );
\digit_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => digit_count(1),
      I1 => digit_count(0),
      I2 => digit_count(2),
      O => digit_count_0(2)
    );
\digit_count[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00000000FF7F"
    )
        port map (
      I0 => digit_count(5),
      I1 => digit_count(6),
      I2 => digit_count(7),
      I3 => \digit_count[3]_i_2_n_0\,
      I4 => \digit_count[5]_i_3_n_0\,
      I5 => digit_count(3),
      O => digit_count_0(3)
    );
\digit_count[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => digit_count(9),
      I1 => digit_count(8),
      I2 => digit_count(4),
      O => \digit_count[3]_i_2_n_0\
    );
\digit_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => digit_count(3),
      I1 => digit_count(1),
      I2 => digit_count(0),
      I3 => digit_count(2),
      I4 => digit_count(4),
      O => digit_count_0(4)
    );
\digit_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0BCACB0A0"
    )
        port map (
      I0 => \digit_count[7]_i_2_n_0\,
      I1 => digit_count(3),
      I2 => digit_count(5),
      I3 => \digit_count[5]_i_2_n_0\,
      I4 => digit_count(4),
      I5 => \digit_count[5]_i_3_n_0\,
      O => digit_count_0(5)
    );
\digit_count[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => digit_count(6),
      I1 => digit_count(7),
      O => \digit_count[5]_i_2_n_0\
    );
\digit_count[5]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => digit_count(1),
      I1 => digit_count(0),
      I2 => digit_count(2),
      O => \digit_count[5]_i_3_n_0\
    );
\digit_count[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF00FFC011C0"
    )
        port map (
      I0 => digit_count(7),
      I1 => digit_count(3),
      I2 => digit_count(4),
      I3 => digit_count(6),
      I4 => \digit_count[7]_i_2_n_0\,
      I5 => \digit_count[7]_i_3_n_0\,
      O => digit_count_0(6)
    );
\digit_count[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF00FF800F80"
    )
        port map (
      I0 => digit_count(3),
      I1 => digit_count(4),
      I2 => digit_count(6),
      I3 => digit_count(7),
      I4 => \digit_count[7]_i_2_n_0\,
      I5 => \digit_count[7]_i_3_n_0\,
      O => digit_count_0(7)
    );
\digit_count[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FF7"
    )
        port map (
      I0 => digit_count(8),
      I1 => digit_count(9),
      I2 => digit_count(4),
      I3 => digit_count(3),
      O => \digit_count[7]_i_2_n_0\
    );
\digit_count[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => digit_count(2),
      I1 => digit_count(0),
      I2 => digit_count(1),
      I3 => digit_count(5),
      O => \digit_count[7]_i_3_n_0\
    );
\digit_count[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C3CCCCC4"
    )
        port map (
      I0 => digit_count(9),
      I1 => digit_count(8),
      I2 => \digit_count[9]_i_2_n_0\,
      I3 => digit_count(4),
      I4 => digit_count(3),
      O => digit_count_0(8)
    );
\digit_count[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C6CCCCC4"
    )
        port map (
      I0 => digit_count(8),
      I1 => digit_count(9),
      I2 => \digit_count[9]_i_2_n_0\,
      I3 => digit_count(4),
      I4 => digit_count(3),
      O => digit_count_0(9)
    );
\digit_count[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => digit_count(5),
      I1 => digit_count(1),
      I2 => digit_count(0),
      I3 => digit_count(2),
      I4 => digit_count(7),
      I5 => digit_count(6),
      O => \digit_count[9]_i_2_n_0\
    );
\digit_count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => digit_count_0(0),
      Q => digit_count(0)
    );
\digit_count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => digit_count_0(1),
      Q => digit_count(1)
    );
\digit_count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => digit_count_0(2),
      Q => digit_count(2)
    );
\digit_count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => digit_count_0(3),
      Q => digit_count(3)
    );
\digit_count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => digit_count_0(4),
      Q => digit_count(4)
    );
\digit_count_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => digit_count_0(5),
      Q => digit_count(5)
    );
\digit_count_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => digit_count_0(6),
      Q => digit_count(6)
    );
\digit_count_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => digit_count_0(7),
      Q => digit_count(7)
    );
\digit_count_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => digit_count_0(8),
      Q => digit_count(8)
    );
\digit_count_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => digit_count_0(9),
      Q => digit_count(9)
    );
\digit_sel[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00001000"
    )
        port map (
      I0 => \digit_count[9]_i_2_n_0\,
      I1 => digit_count(4),
      I2 => digit_count(8),
      I3 => digit_count(9),
      I4 => digit_count(3),
      I5 => \^digit_sel\(0),
      O => \digit_sel[0]_i_1_n_0\
    );
\digit_sel[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD0002"
    )
        port map (
      I0 => \^digit_sel\(0),
      I1 => digit_count(3),
      I2 => \digit_count[3]_i_2_n_0\,
      I3 => \digit_count[9]_i_2_n_0\,
      I4 => \^digit_sel\(1),
      O => \digit_sel[1]_i_1_n_0\
    );
\digit_sel_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => \digit_sel[0]_i_1_n_0\,
      Q => \^digit_sel\(0)
    );
\digit_sel_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => \digit_sel[1]_i_1_n_0\,
      Q => \^digit_sel\(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Control_Unit is
  port (
    clk : in STD_LOGIC;
    reset_btn : in STD_LOGIC;
    pause_btn : in STD_LOGIC;
    debounced_button : in STD_LOGIC_VECTOR ( 3 downto 0 );
    counter_values : inout STD_LOGIC_VECTOR ( 15 downto 0 );
    warning_light : out STD_LOGIC;
    seg : out STD_LOGIC_VECTOR ( 6 downto 0 );
    an : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Control_Unit : entity is true;
end Control_Unit;

architecture STRUCTURE of Control_Unit is
  component WarningLight is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    counter_values : in STD_LOGIC_VECTOR ( 15 downto 0 );
    warning_light : out STD_LOGIC
  );
  end component WarningLight;
  signal an_OBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal counter_values_IBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal debounced_button_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal digit_sel : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal pause : STD_LOGIC;
  signal pause_btn_IBUF : STD_LOGIC;
  signal reset : STD_LOGIC;
  signal reset_btn_IBUF : STD_LOGIC;
  signal seg_OBUF : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal warning_light_OBUF : STD_LOGIC;
begin
\an_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => an_OBUF(0),
      O => an(0)
    );
\an_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => an_OBUF(1),
      O => an(1)
    );
\an_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => an_OBUF(2),
      O => an(2)
    );
\an_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => an_OBUF(3),
      O => an(3)
    );
clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_IBUF,
      O => clk_IBUF_BUFG
    );
clk_IBUF_inst: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => clk,
      O => clk_IBUF
    );
\counter_values_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => counter_values_IBUF(0),
      O => counter_values(0)
    );
\counter_values_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => counter_values_IBUF(10),
      O => counter_values(10)
    );
\counter_values_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => counter_values_IBUF(11),
      O => counter_values(11)
    );
\counter_values_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => counter_values_IBUF(12),
      O => counter_values(12)
    );
\counter_values_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => counter_values_IBUF(13),
      O => counter_values(13)
    );
\counter_values_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => counter_values_IBUF(14),
      O => counter_values(14)
    );
\counter_values_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => counter_values_IBUF(15),
      O => counter_values(15)
    );
\counter_values_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => counter_values_IBUF(1),
      O => counter_values(1)
    );
\counter_values_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => counter_values_IBUF(2),
      O => counter_values(2)
    );
\counter_values_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => counter_values_IBUF(3),
      O => counter_values(3)
    );
\counter_values_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => counter_values_IBUF(4),
      O => counter_values(4)
    );
\counter_values_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => counter_values_IBUF(5),
      O => counter_values(5)
    );
\counter_values_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => counter_values_IBUF(6),
      O => counter_values(6)
    );
\counter_values_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => counter_values_IBUF(7),
      O => counter_values(7)
    );
\counter_values_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => counter_values_IBUF(8),
      O => counter_values(8)
    );
\counter_values_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => counter_values_IBUF(9),
      O => counter_values(9)
    );
ctr: entity work.Counter
     port map (
      AR(0) => reset,
      CLK => clk_IBUF_BUFG,
      Q(15 downto 0) => counter_values_IBUF(15 downto 0),
      debounced_button_IBUF(3 downto 0) => debounced_button_IBUF(3 downto 0),
      digit_sel(1 downto 0) => digit_sel(1 downto 0),
      pause => pause,
      seg_OBUF(6 downto 0) => seg_OBUF(6 downto 0)
    );
\debounced_button_IBUF[0]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => debounced_button(0),
      O => debounced_button_IBUF(0)
    );
\debounced_button_IBUF[1]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => debounced_button(1),
      O => debounced_button_IBUF(1)
    );
\debounced_button_IBUF[2]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => debounced_button(2),
      O => debounced_button_IBUF(2)
    );
\debounced_button_IBUF[3]_inst\: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => debounced_button(3),
      O => debounced_button_IBUF(3)
    );
disp: entity work.Display
     port map (
      AR(0) => reset,
      CLK => clk_IBUF_BUFG,
      an_OBUF(3 downto 0) => an_OBUF(3 downto 0),
      digit_sel(1 downto 0) => digit_sel(1 downto 0)
    );
pause_btn_IBUF_inst: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => pause_btn,
      O => pause_btn_IBUF
    );
pause_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => pause_btn_IBUF,
      Q => pause,
      R => '0'
    );
reset_btn_IBUF_inst: unisim.vcomponents.IBUF
    generic map(
      CCIO_EN => "TRUE"
    )
        port map (
      I => reset_btn,
      O => reset_btn_IBUF
    );
reset_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => reset_btn_IBUF,
      Q => reset,
      R => '0'
    );
\seg_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg_OBUF(0),
      O => seg(0)
    );
\seg_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg_OBUF(1),
      O => seg(1)
    );
\seg_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg_OBUF(2),
      O => seg(2)
    );
\seg_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg_OBUF(3),
      O => seg(3)
    );
\seg_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg_OBUF(4),
      O => seg(4)
    );
\seg_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg_OBUF(5),
      O => seg(5)
    );
\seg_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => seg_OBUF(6),
      O => seg(6)
    );
w_light: component WarningLight
     port map (
      clk => clk_IBUF_BUFG,
      counter_values(15 downto 0) => counter_values_IBUF(15 downto 0),
      reset => reset,
      warning_light => warning_light_OBUF
    );
warning_light_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => warning_light_OBUF,
      O => warning_light
    );
end STRUCTURE;
