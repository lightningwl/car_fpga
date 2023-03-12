-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "07/04/2021 15:44:59"

-- 
-- Device: Altera EP4CE6F17C8 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	translator IS
    PORT (
	l : IN std_logic_vector(1 DOWNTO 0);
	r : IN std_logic_vector(1 DOWNTO 0);
	moto_sz : OUT std_logic_vector(3 DOWNTO 0);
	moto_sy : OUT std_logic_vector(3 DOWNTO 0)
	);
END translator;

-- Design Ports Information
-- moto_sz[0]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- moto_sz[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- moto_sz[2]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- moto_sz[3]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- moto_sy[0]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- moto_sy[1]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- moto_sy[2]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- moto_sy[3]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[1]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l[0]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r[0]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l[1]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF translator IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_l : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_r : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_moto_sz : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_moto_sy : std_logic_vector(3 DOWNTO 0);
SIGNAL \moto_sz[0]~output_o\ : std_logic;
SIGNAL \moto_sz[1]~output_o\ : std_logic;
SIGNAL \moto_sz[2]~output_o\ : std_logic;
SIGNAL \moto_sz[3]~output_o\ : std_logic;
SIGNAL \moto_sy[0]~output_o\ : std_logic;
SIGNAL \moto_sy[1]~output_o\ : std_logic;
SIGNAL \moto_sy[2]~output_o\ : std_logic;
SIGNAL \moto_sy[3]~output_o\ : std_logic;
SIGNAL \l[0]~input_o\ : std_logic;
SIGNAL \r[1]~input_o\ : std_logic;
SIGNAL \r[0]~input_o\ : std_logic;
SIGNAL \moto_sz~0_combout\ : std_logic;
SIGNAL \l[1]~input_o\ : std_logic;
SIGNAL \moto_sy~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_l <= l;
ww_r <= r;
moto_sz <= ww_moto_sz;
moto_sy <= ww_moto_sy;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X5_Y24_N2
\moto_sz[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \moto_sz[0]~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\moto_sz[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \moto_sz~0_combout\,
	devoe => ww_devoe,
	o => \moto_sz[1]~output_o\);

-- Location: IOOBUF_X34_Y6_N16
\moto_sz[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \moto_sz[2]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\moto_sz[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \moto_sz~0_combout\,
	devoe => ww_devoe,
	o => \moto_sz[3]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\moto_sy[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \moto_sy[0]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\moto_sy[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \moto_sy~0_combout\,
	devoe => ww_devoe,
	o => \moto_sy[1]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\moto_sy[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \moto_sy[2]~output_o\);

-- Location: IOOBUF_X23_Y24_N23
\moto_sy[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \moto_sy~0_combout\,
	devoe => ww_devoe,
	o => \moto_sy[3]~output_o\);

-- Location: IOIBUF_X25_Y24_N8
\l[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_l(0),
	o => \l[0]~input_o\);

-- Location: IOIBUF_X25_Y24_N22
\r[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r(1),
	o => \r[1]~input_o\);

-- Location: IOIBUF_X25_Y24_N1
\r[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r(0),
	o => \r[0]~input_o\);

-- Location: LCCOMB_X26_Y20_N0
\moto_sz~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \moto_sz~0_combout\ = (!\l[0]~input_o\ & (\r[1]~input_o\ & !\r[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \l[0]~input_o\,
	datab => \r[1]~input_o\,
	datac => \r[0]~input_o\,
	combout => \moto_sz~0_combout\);

-- Location: IOIBUF_X0_Y11_N8
\l[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_l(1),
	o => \l[1]~input_o\);

-- Location: LCCOMB_X26_Y20_N2
\moto_sy~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \moto_sy~0_combout\ = (!\r[0]~input_o\ & (\l[1]~input_o\ & !\l[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r[0]~input_o\,
	datac => \l[1]~input_o\,
	datad => \l[0]~input_o\,
	combout => \moto_sy~0_combout\);

ww_moto_sz(0) <= \moto_sz[0]~output_o\;

ww_moto_sz(1) <= \moto_sz[1]~output_o\;

ww_moto_sz(2) <= \moto_sz[2]~output_o\;

ww_moto_sz(3) <= \moto_sz[3]~output_o\;

ww_moto_sy(0) <= \moto_sy[0]~output_o\;

ww_moto_sy(1) <= \moto_sy[1]~output_o\;

ww_moto_sy(2) <= \moto_sy[2]~output_o\;

ww_moto_sy(3) <= \moto_sy[3]~output_o\;
END structure;


