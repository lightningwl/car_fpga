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

-- DATE "07/07/2021 00:11:25"

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


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	xiaoche IS
    PORT (
	pwmq_R : OUT std_logic;
	clkin : IN std_logic;
	papo : IN std_logic;
	input : IN std_logic_vector(3 DOWNTO 0);
	pwmh_R : OUT std_logic;
	pwmh_L : OUT std_logic;
	pwmq_L : OUT std_logic;
	moto_sy : OUT std_logic_vector(3 DOWNTO 0);
	moto_sz : OUT std_logic_vector(3 DOWNTO 0)
	);
END xiaoche;

-- Design Ports Information
-- pwmq_R	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwmh_R	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwmh_L	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pwmq_L	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- moto_sy[3]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- moto_sy[2]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- moto_sy[1]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- moto_sy[0]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- moto_sz[3]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- moto_sz[2]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- moto_sz[1]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- moto_sz[0]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- papo	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clkin	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[0]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[1]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[2]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[3]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF xiaoche IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_pwmq_R : std_logic;
SIGNAL ww_clkin : std_logic;
SIGNAL ww_papo : std_logic;
SIGNAL ww_input : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_pwmh_R : std_logic;
SIGNAL ww_pwmh_L : std_logic;
SIGNAL ww_pwmq_L : std_logic;
SIGNAL ww_moto_sy : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_moto_sz : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|U1|clkout~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|U0|clkout~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clkin~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pwmq_R~output_o\ : std_logic;
SIGNAL \pwmh_R~output_o\ : std_logic;
SIGNAL \pwmh_L~output_o\ : std_logic;
SIGNAL \pwmq_L~output_o\ : std_logic;
SIGNAL \moto_sy[3]~output_o\ : std_logic;
SIGNAL \moto_sy[2]~output_o\ : std_logic;
SIGNAL \moto_sy[1]~output_o\ : std_logic;
SIGNAL \moto_sy[0]~output_o\ : std_logic;
SIGNAL \moto_sz[3]~output_o\ : std_logic;
SIGNAL \moto_sz[2]~output_o\ : std_logic;
SIGNAL \moto_sz[1]~output_o\ : std_logic;
SIGNAL \moto_sz[0]~output_o\ : std_logic;
SIGNAL \clkin~input_o\ : std_logic;
SIGNAL \clkin~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst2|U0|clkt~q\ : std_logic;
SIGNAL \inst2|U0|cnt~0_combout\ : std_logic;
SIGNAL \inst2|U0|cnt~q\ : std_logic;
SIGNAL \inst2|U0|clkt~0_combout\ : std_logic;
SIGNAL \inst2|U0|clkout~feeder_combout\ : std_logic;
SIGNAL \inst2|U0|clkout~q\ : std_logic;
SIGNAL \inst2|U0|clkout~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|inst1|inst2|cnt[0]~6_combout\ : std_logic;
SIGNAL \inst1|inst1|inst2|cnt[0]~7\ : std_logic;
SIGNAL \inst1|inst1|inst2|cnt[1]~8_combout\ : std_logic;
SIGNAL \inst1|inst1|inst2|cnt[1]~9\ : std_logic;
SIGNAL \inst1|inst1|inst2|cnt[2]~10_combout\ : std_logic;
SIGNAL \inst1|inst1|inst2|up~q\ : std_logic;
SIGNAL \inst1|inst1|inst2|cnt[2]~11\ : std_logic;
SIGNAL \inst1|inst1|inst2|cnt[3]~12_combout\ : std_logic;
SIGNAL \inst1|inst1|inst2|Equal0~0_combout\ : std_logic;
SIGNAL \inst1|inst1|inst2|cnt~5_combout\ : std_logic;
SIGNAL \inst1|inst1|inst2|cnt[3]~13\ : std_logic;
SIGNAL \inst1|inst1|inst2|cnt[4]~14_combout\ : std_logic;
SIGNAL \inst2|U1|Add0~0_combout\ : std_logic;
SIGNAL \inst2|U1|Add0~1\ : std_logic;
SIGNAL \inst2|U1|Add0~2_combout\ : std_logic;
SIGNAL \inst2|U1|Add0~3\ : std_logic;
SIGNAL \inst2|U1|Add0~4_combout\ : std_logic;
SIGNAL \inst2|U1|Add0~5\ : std_logic;
SIGNAL \inst2|U1|Add0~6_combout\ : std_logic;
SIGNAL \inst2|U1|Add0~7\ : std_logic;
SIGNAL \inst2|U1|Add0~8_combout\ : std_logic;
SIGNAL \inst2|U1|cnt~4_combout\ : std_logic;
SIGNAL \inst2|U1|Add0~9\ : std_logic;
SIGNAL \inst2|U1|Add0~10_combout\ : std_logic;
SIGNAL \inst2|U1|Equal0~2_combout\ : std_logic;
SIGNAL \inst2|U1|Add0~11\ : std_logic;
SIGNAL \inst2|U1|Add0~12_combout\ : std_logic;
SIGNAL \inst2|U1|Add0~13\ : std_logic;
SIGNAL \inst2|U1|Add0~14_combout\ : std_logic;
SIGNAL \inst2|U1|cnt~3_combout\ : std_logic;
SIGNAL \inst2|U1|Add0~15\ : std_logic;
SIGNAL \inst2|U1|Add0~16_combout\ : std_logic;
SIGNAL \inst2|U1|Equal0~1_combout\ : std_logic;
SIGNAL \inst2|U1|Add0~17\ : std_logic;
SIGNAL \inst2|U1|Add0~18_combout\ : std_logic;
SIGNAL \inst2|U1|Add0~19\ : std_logic;
SIGNAL \inst2|U1|Add0~20_combout\ : std_logic;
SIGNAL \inst2|U1|Add0~21\ : std_logic;
SIGNAL \inst2|U1|Add0~22_combout\ : std_logic;
SIGNAL \inst2|U1|Add0~23\ : std_logic;
SIGNAL \inst2|U1|Add0~24_combout\ : std_logic;
SIGNAL \inst2|U1|cnt~5_combout\ : std_logic;
SIGNAL \inst2|U1|Add0~25\ : std_logic;
SIGNAL \inst2|U1|Add0~26_combout\ : std_logic;
SIGNAL \inst2|U1|Add0~27\ : std_logic;
SIGNAL \inst2|U1|Add0~28_combout\ : std_logic;
SIGNAL \inst2|U1|cnt~6_combout\ : std_logic;
SIGNAL \inst2|U1|Equal0~4_combout\ : std_logic;
SIGNAL \inst2|U1|Equal0~3_combout\ : std_logic;
SIGNAL \inst2|U1|Equal0~5_combout\ : std_logic;
SIGNAL \inst2|U1|Add0~29\ : std_logic;
SIGNAL \inst2|U1|Add0~30_combout\ : std_logic;
SIGNAL \inst2|U1|cnt~0_combout\ : std_logic;
SIGNAL \inst2|U1|Add0~31\ : std_logic;
SIGNAL \inst2|U1|Add0~32_combout\ : std_logic;
SIGNAL \inst2|U1|cnt~1_combout\ : std_logic;
SIGNAL \inst2|U1|Add0~33\ : std_logic;
SIGNAL \inst2|U1|Add0~34_combout\ : std_logic;
SIGNAL \inst2|U1|cnt~2_combout\ : std_logic;
SIGNAL \inst2|U1|Equal0~0_combout\ : std_logic;
SIGNAL \inst2|U1|clkt~q\ : std_logic;
SIGNAL \inst2|U1|clkt~0_combout\ : std_logic;
SIGNAL \inst2|U1|clkout~feeder_combout\ : std_logic;
SIGNAL \inst2|U1|clkout~q\ : std_logic;
SIGNAL \inst2|U1|clkout~clkctrl_outclk\ : std_logic;
SIGNAL \papo~input_o\ : std_logic;
SIGNAL \input[3]~input_o\ : std_logic;
SIGNAL \input[0]~input_o\ : std_logic;
SIGNAL \input[1]~input_o\ : std_logic;
SIGNAL \input[2]~input_o\ : std_logic;
SIGNAL \inst|Mux3~0_combout\ : std_logic;
SIGNAL \inst|NextState.TURN_RIGHT~q\ : std_logic;
SIGNAL \inst|ref_R~0_combout\ : std_logic;
SIGNAL \inst|Mux4~0_combout\ : std_logic;
SIGNAL \inst|NextState.TURN_LEFTW~q\ : std_logic;
SIGNAL \inst|Mux2~0_combout\ : std_logic;
SIGNAL \inst|NextState.TURN_LEFT~q\ : std_logic;
SIGNAL \inst|Mux0~0_combout\ : std_logic;
SIGNAL \inst|NextState.FORWARD~q\ : std_logic;
SIGNAL \inst|ref_R~1_combout\ : std_logic;
SIGNAL \inst|ref_R~2_combout\ : std_logic;
SIGNAL \inst|Mux5~0_combout\ : std_logic;
SIGNAL \inst|NextState.TURN_RIGHTW~q\ : std_logic;
SIGNAL \inst|ref_R~3_combout\ : std_logic;
SIGNAL \inst|WideOr4~combout\ : std_logic;
SIGNAL \inst|ref_R~5_combout\ : std_logic;
SIGNAL \inst|NextState.START~feeder_combout\ : std_logic;
SIGNAL \inst|NextState.START~q\ : std_logic;
SIGNAL \inst|Mux1~0_combout\ : std_logic;
SIGNAL \inst|NextState.STOP~q\ : std_logic;
SIGNAL \inst|ref_R~4_combout\ : std_logic;
SIGNAL \inst1|inst1|inst1|LessThan0~0_combout\ : std_logic;
SIGNAL \inst1|inst1|inst1|LessThan0~1_combout\ : std_logic;
SIGNAL \inst1|inst1|inst1|LessThan0~2_combout\ : std_logic;
SIGNAL \inst1|inst1|inst1|LessThan0~3_combout\ : std_logic;
SIGNAL \inst1|inst1|inst1|PWM~feeder_combout\ : std_logic;
SIGNAL \inst1|inst1|inst1|PWM~q\ : std_logic;
SIGNAL \inst1|inst1|inst4|PWM~feeder_combout\ : std_logic;
SIGNAL \inst1|inst1|inst4|PWM~q\ : std_logic;
SIGNAL \inst|ref_R~6_combout\ : std_logic;
SIGNAL \inst|ref_L~2_combout\ : std_logic;
SIGNAL \inst|ref_L~3_combout\ : std_logic;
SIGNAL \inst|ref_L~4_combout\ : std_logic;
SIGNAL \inst|WideOr5~combout\ : std_logic;
SIGNAL \inst|ref_L~6_combout\ : std_logic;
SIGNAL \inst|ref_L~5_combout\ : std_logic;
SIGNAL \inst1|inst1|inst3|LessThan0~0_combout\ : std_logic;
SIGNAL \inst1|inst1|inst3|LessThan0~1_combout\ : std_logic;
SIGNAL \inst1|inst1|inst3|LessThan0~2_combout\ : std_logic;
SIGNAL \inst1|inst1|inst3|LessThan0~3_combout\ : std_logic;
SIGNAL \inst1|inst1|inst3|PWM~feeder_combout\ : std_logic;
SIGNAL \inst1|inst1|inst3|PWM~q\ : std_logic;
SIGNAL \inst1|inst1|inst|PWM~feeder_combout\ : std_logic;
SIGNAL \inst1|inst1|inst|PWM~q\ : std_logic;
SIGNAL \inst|r[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|inst|moto_sy[3]~0_combout\ : std_logic;
SIGNAL \inst1|inst|moto_sy[2]~1_combout\ : std_logic;
SIGNAL \inst1|inst|moto_sz[3]~0_combout\ : std_logic;
SIGNAL \inst1|inst|process_0~0_combout\ : std_logic;
SIGNAL \inst2|U1|cnt\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \inst|ref_L\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst1|inst1|inst2|cnt\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|l\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|r\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|ref_R\ : std_logic_vector(4 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

pwmq_R <= ww_pwmq_R;
ww_clkin <= clkin;
ww_papo <= papo;
ww_input <= input;
pwmh_R <= ww_pwmh_R;
pwmh_L <= ww_pwmh_L;
pwmq_L <= ww_pwmq_L;
moto_sy <= ww_moto_sy;
moto_sz <= ww_moto_sz;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst2|U1|clkout~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|U1|clkout~q\);

\inst2|U0|clkout~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|U0|clkout~q\);

\clkin~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clkin~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X28_Y0_N16
\pwmq_R~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1|inst1|PWM~q\,
	devoe => ww_devoe,
	o => \pwmq_R~output_o\);

-- Location: IOOBUF_X30_Y0_N16
\pwmh_R~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1|inst4|PWM~q\,
	devoe => ww_devoe,
	o => \pwmh_R~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\pwmh_L~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1|inst3|PWM~q\,
	devoe => ww_devoe,
	o => \pwmh_L~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\pwmq_L~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst1|inst|PWM~q\,
	devoe => ww_devoe,
	o => \pwmq_L~output_o\);

-- Location: IOOBUF_X28_Y0_N9
\moto_sy[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst|moto_sy[3]~0_combout\,
	devoe => ww_devoe,
	o => \moto_sy[3]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\moto_sy[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst|moto_sy[2]~1_combout\,
	devoe => ww_devoe,
	o => \moto_sy[2]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\moto_sy[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst|moto_sy[3]~0_combout\,
	devoe => ww_devoe,
	o => \moto_sy[1]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\moto_sy[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst|moto_sy[2]~1_combout\,
	devoe => ww_devoe,
	o => \moto_sy[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\moto_sz[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst|moto_sz[3]~0_combout\,
	devoe => ww_devoe,
	o => \moto_sz[3]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\moto_sz[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst|process_0~0_combout\,
	devoe => ww_devoe,
	o => \moto_sz[2]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\moto_sz[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst|moto_sz[3]~0_combout\,
	devoe => ww_devoe,
	o => \moto_sz[1]~output_o\);

-- Location: IOOBUF_X21_Y0_N2
\moto_sz[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst|process_0~0_combout\,
	devoe => ww_devoe,
	o => \moto_sz[0]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clkin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clkin,
	o => \clkin~input_o\);

-- Location: CLKCTRL_G2
\clkin~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clkin~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clkin~inputclkctrl_outclk\);

-- Location: FF_X33_Y12_N3
\inst2|U0|clkt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \inst2|U0|clkt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|U0|clkt~q\);

-- Location: LCCOMB_X32_Y13_N12
\inst2|U0|cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|U0|cnt~0_combout\ = !\inst2|U0|cnt~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|U0|cnt~q\,
	combout => \inst2|U0|cnt~0_combout\);

-- Location: FF_X32_Y13_N13
\inst2|U0|cnt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \inst2|U0|cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|U0|cnt~q\);

-- Location: LCCOMB_X33_Y12_N2
\inst2|U0|clkt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|U0|clkt~0_combout\ = \inst2|U0|clkt~q\ $ (\inst2|U0|cnt~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|U0|clkt~q\,
	datad => \inst2|U0|cnt~q\,
	combout => \inst2|U0|clkt~0_combout\);

-- Location: LCCOMB_X33_Y12_N26
\inst2|U0|clkout~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|U0|clkout~feeder_combout\ = \inst2|U0|clkt~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|U0|clkt~0_combout\,
	combout => \inst2|U0|clkout~feeder_combout\);

-- Location: FF_X33_Y12_N27
\inst2|U0|clkout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \inst2|U0|clkout~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|U0|clkout~q\);

-- Location: CLKCTRL_G9
\inst2|U0|clkout~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|U0|clkout~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|U0|clkout~clkctrl_outclk\);

-- Location: LCCOMB_X23_Y2_N16
\inst1|inst1|inst2|cnt[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst2|cnt[0]~6_combout\ = \inst1|inst1|inst2|cnt\(0) $ (VCC)
-- \inst1|inst1|inst2|cnt[0]~7\ = CARRY(\inst1|inst1|inst2|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst1|inst2|cnt\(0),
	datad => VCC,
	combout => \inst1|inst1|inst2|cnt[0]~6_combout\,
	cout => \inst1|inst1|inst2|cnt[0]~7\);

-- Location: FF_X23_Y2_N17
\inst1|inst1|inst2|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|U0|clkout~clkctrl_outclk\,
	d => \inst1|inst1|inst2|cnt[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst1|inst2|cnt\(0));

-- Location: LCCOMB_X23_Y2_N18
\inst1|inst1|inst2|cnt[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst2|cnt[1]~8_combout\ = (\inst1|inst1|inst2|cnt\(1) & ((\inst1|inst1|inst2|cnt~5_combout\ & (!\inst1|inst1|inst2|cnt[0]~7\)) # (!\inst1|inst1|inst2|cnt~5_combout\ & (\inst1|inst1|inst2|cnt[0]~7\ & VCC)))) # (!\inst1|inst1|inst2|cnt\(1) & 
-- ((\inst1|inst1|inst2|cnt~5_combout\ & ((\inst1|inst1|inst2|cnt[0]~7\) # (GND))) # (!\inst1|inst1|inst2|cnt~5_combout\ & (!\inst1|inst1|inst2|cnt[0]~7\))))
-- \inst1|inst1|inst2|cnt[1]~9\ = CARRY((\inst1|inst1|inst2|cnt\(1) & (\inst1|inst1|inst2|cnt~5_combout\ & !\inst1|inst1|inst2|cnt[0]~7\)) # (!\inst1|inst1|inst2|cnt\(1) & ((\inst1|inst1|inst2|cnt~5_combout\) # (!\inst1|inst1|inst2|cnt[0]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|inst2|cnt\(1),
	datab => \inst1|inst1|inst2|cnt~5_combout\,
	datad => VCC,
	cin => \inst1|inst1|inst2|cnt[0]~7\,
	combout => \inst1|inst1|inst2|cnt[1]~8_combout\,
	cout => \inst1|inst1|inst2|cnt[1]~9\);

-- Location: FF_X23_Y2_N19
\inst1|inst1|inst2|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|U0|clkout~clkctrl_outclk\,
	d => \inst1|inst1|inst2|cnt[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst1|inst2|cnt\(1));

-- Location: LCCOMB_X23_Y2_N20
\inst1|inst1|inst2|cnt[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst2|cnt[2]~10_combout\ = ((\inst1|inst1|inst2|cnt\(2) $ (\inst1|inst1|inst2|cnt~5_combout\ $ (\inst1|inst1|inst2|cnt[1]~9\)))) # (GND)
-- \inst1|inst1|inst2|cnt[2]~11\ = CARRY((\inst1|inst1|inst2|cnt\(2) & ((!\inst1|inst1|inst2|cnt[1]~9\) # (!\inst1|inst1|inst2|cnt~5_combout\))) # (!\inst1|inst1|inst2|cnt\(2) & (!\inst1|inst1|inst2|cnt~5_combout\ & !\inst1|inst1|inst2|cnt[1]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|inst2|cnt\(2),
	datab => \inst1|inst1|inst2|cnt~5_combout\,
	datad => VCC,
	cin => \inst1|inst1|inst2|cnt[1]~9\,
	combout => \inst1|inst1|inst2|cnt[2]~10_combout\,
	cout => \inst1|inst1|inst2|cnt[2]~11\);

-- Location: FF_X23_Y2_N21
\inst1|inst1|inst2|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|U0|clkout~clkctrl_outclk\,
	d => \inst1|inst1|inst2|cnt[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst1|inst2|cnt\(2));

-- Location: FF_X23_Y2_N5
\inst1|inst1|inst2|up\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|U0|clkout~clkctrl_outclk\,
	d => \inst1|inst1|inst2|cnt~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst1|inst2|up~q\);

-- Location: LCCOMB_X23_Y2_N22
\inst1|inst1|inst2|cnt[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst2|cnt[3]~12_combout\ = (\inst1|inst1|inst2|cnt\(3) & ((\inst1|inst1|inst2|cnt~5_combout\ & (!\inst1|inst1|inst2|cnt[2]~11\)) # (!\inst1|inst1|inst2|cnt~5_combout\ & (\inst1|inst1|inst2|cnt[2]~11\ & VCC)))) # (!\inst1|inst1|inst2|cnt\(3) & 
-- ((\inst1|inst1|inst2|cnt~5_combout\ & ((\inst1|inst1|inst2|cnt[2]~11\) # (GND))) # (!\inst1|inst1|inst2|cnt~5_combout\ & (!\inst1|inst1|inst2|cnt[2]~11\))))
-- \inst1|inst1|inst2|cnt[3]~13\ = CARRY((\inst1|inst1|inst2|cnt\(3) & (\inst1|inst1|inst2|cnt~5_combout\ & !\inst1|inst1|inst2|cnt[2]~11\)) # (!\inst1|inst1|inst2|cnt\(3) & ((\inst1|inst1|inst2|cnt~5_combout\) # (!\inst1|inst1|inst2|cnt[2]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|inst2|cnt\(3),
	datab => \inst1|inst1|inst2|cnt~5_combout\,
	datad => VCC,
	cin => \inst1|inst1|inst2|cnt[2]~11\,
	combout => \inst1|inst1|inst2|cnt[3]~12_combout\,
	cout => \inst1|inst1|inst2|cnt[3]~13\);

-- Location: FF_X23_Y2_N23
\inst1|inst1|inst2|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|U0|clkout~clkctrl_outclk\,
	d => \inst1|inst1|inst2|cnt[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst1|inst2|cnt\(3));

-- Location: LCCOMB_X23_Y2_N2
\inst1|inst1|inst2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst2|Equal0~0_combout\ = (!\inst1|inst1|inst2|cnt\(1) & (!\inst1|inst1|inst2|cnt\(3) & !\inst1|inst1|inst2|cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst1|inst2|cnt\(1),
	datac => \inst1|inst1|inst2|cnt\(3),
	datad => \inst1|inst1|inst2|cnt\(0),
	combout => \inst1|inst1|inst2|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y2_N4
\inst1|inst1|inst2|cnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst2|cnt~5_combout\ = (\inst1|inst1|inst2|cnt\(2) & (\inst1|inst1|inst2|up~q\ & ((!\inst1|inst1|inst2|Equal0~0_combout\) # (!\inst1|inst1|inst2|cnt\(4))))) # (!\inst1|inst1|inst2|cnt\(2) & ((\inst1|inst1|inst2|up~q\) # 
-- ((!\inst1|inst1|inst2|cnt\(4) & \inst1|inst1|inst2|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst1|inst2|cnt\(2),
	datab => \inst1|inst1|inst2|cnt\(4),
	datac => \inst1|inst1|inst2|up~q\,
	datad => \inst1|inst1|inst2|Equal0~0_combout\,
	combout => \inst1|inst1|inst2|cnt~5_combout\);

-- Location: LCCOMB_X23_Y2_N24
\inst1|inst1|inst2|cnt[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst2|cnt[4]~14_combout\ = \inst1|inst1|inst2|cnt\(4) $ (\inst1|inst1|inst2|cnt[3]~13\ $ (\inst1|inst1|inst2|cnt~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst1|inst2|cnt\(4),
	datad => \inst1|inst1|inst2|cnt~5_combout\,
	cin => \inst1|inst1|inst2|cnt[3]~13\,
	combout => \inst1|inst1|inst2|cnt[4]~14_combout\);

-- Location: FF_X23_Y2_N25
\inst1|inst1|inst2|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|U0|clkout~clkctrl_outclk\,
	d => \inst1|inst1|inst2|cnt[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst1|inst2|cnt\(4));

-- Location: LCCOMB_X32_Y13_N14
\inst2|U1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|U1|Add0~0_combout\ = (\inst2|U0|cnt~q\ & (\inst2|U1|cnt\(1) $ (VCC))) # (!\inst2|U0|cnt~q\ & (\inst2|U1|cnt\(1) & VCC))
-- \inst2|U1|Add0~1\ = CARRY((\inst2|U0|cnt~q\ & \inst2|U1|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|U0|cnt~q\,
	datab => \inst2|U1|cnt\(1),
	datad => VCC,
	combout => \inst2|U1|Add0~0_combout\,
	cout => \inst2|U1|Add0~1\);

-- Location: FF_X32_Y13_N15
\inst2|U1|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \inst2|U1|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|U1|cnt\(1));

-- Location: LCCOMB_X32_Y13_N16
\inst2|U1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|U1|Add0~2_combout\ = (\inst2|U1|cnt\(2) & (!\inst2|U1|Add0~1\)) # (!\inst2|U1|cnt\(2) & ((\inst2|U1|Add0~1\) # (GND)))
-- \inst2|U1|Add0~3\ = CARRY((!\inst2|U1|Add0~1\) # (!\inst2|U1|cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|U1|cnt\(2),
	datad => VCC,
	cin => \inst2|U1|Add0~1\,
	combout => \inst2|U1|Add0~2_combout\,
	cout => \inst2|U1|Add0~3\);

-- Location: FF_X32_Y13_N17
\inst2|U1|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \inst2|U1|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|U1|cnt\(2));

-- Location: LCCOMB_X32_Y13_N18
\inst2|U1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|U1|Add0~4_combout\ = (\inst2|U1|cnt\(3) & (\inst2|U1|Add0~3\ $ (GND))) # (!\inst2|U1|cnt\(3) & (!\inst2|U1|Add0~3\ & VCC))
-- \inst2|U1|Add0~5\ = CARRY((\inst2|U1|cnt\(3) & !\inst2|U1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|U1|cnt\(3),
	datad => VCC,
	cin => \inst2|U1|Add0~3\,
	combout => \inst2|U1|Add0~4_combout\,
	cout => \inst2|U1|Add0~5\);

-- Location: FF_X32_Y13_N19
\inst2|U1|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \inst2|U1|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|U1|cnt\(3));

-- Location: LCCOMB_X32_Y13_N20
\inst2|U1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|U1|Add0~6_combout\ = (\inst2|U1|cnt\(4) & (!\inst2|U1|Add0~5\)) # (!\inst2|U1|cnt\(4) & ((\inst2|U1|Add0~5\) # (GND)))
-- \inst2|U1|Add0~7\ = CARRY((!\inst2|U1|Add0~5\) # (!\inst2|U1|cnt\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|U1|cnt\(4),
	datad => VCC,
	cin => \inst2|U1|Add0~5\,
	combout => \inst2|U1|Add0~6_combout\,
	cout => \inst2|U1|Add0~7\);

-- Location: FF_X32_Y13_N21
\inst2|U1|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \inst2|U1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|U1|cnt\(4));

-- Location: LCCOMB_X32_Y13_N22
\inst2|U1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|U1|Add0~8_combout\ = (\inst2|U1|cnt\(5) & (\inst2|U1|Add0~7\ $ (GND))) # (!\inst2|U1|cnt\(5) & (!\inst2|U1|Add0~7\ & VCC))
-- \inst2|U1|Add0~9\ = CARRY((\inst2|U1|cnt\(5) & !\inst2|U1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|U1|cnt\(5),
	datad => VCC,
	cin => \inst2|U1|Add0~7\,
	combout => \inst2|U1|Add0~8_combout\,
	cout => \inst2|U1|Add0~9\);

-- Location: LCCOMB_X32_Y13_N10
\inst2|U1|cnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|U1|cnt~4_combout\ = (\inst2|U1|Add0~8_combout\ & ((!\inst2|U1|Equal0~5_combout\) # (!\inst2|U1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|U1|Add0~8_combout\,
	datab => \inst2|U1|Equal0~0_combout\,
	datac => \inst2|U1|Equal0~5_combout\,
	combout => \inst2|U1|cnt~4_combout\);

-- Location: FF_X32_Y13_N11
\inst2|U1|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \inst2|U1|cnt~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|U1|cnt\(5));

-- Location: LCCOMB_X32_Y13_N24
\inst2|U1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|U1|Add0~10_combout\ = (\inst2|U1|cnt\(6) & (!\inst2|U1|Add0~9\)) # (!\inst2|U1|cnt\(6) & ((\inst2|U1|Add0~9\) # (GND)))
-- \inst2|U1|Add0~11\ = CARRY((!\inst2|U1|Add0~9\) # (!\inst2|U1|cnt\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|U1|cnt\(6),
	datad => VCC,
	cin => \inst2|U1|Add0~9\,
	combout => \inst2|U1|Add0~10_combout\,
	cout => \inst2|U1|Add0~11\);

-- Location: FF_X32_Y13_N25
\inst2|U1|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \inst2|U1|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|U1|cnt\(6));

-- Location: LCCOMB_X32_Y13_N4
\inst2|U1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|U1|Equal0~2_combout\ = (!\inst2|U1|cnt\(5) & (\inst2|U1|cnt\(4) & (\inst2|U1|cnt\(3) & !\inst2|U1|cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|U1|cnt\(5),
	datab => \inst2|U1|cnt\(4),
	datac => \inst2|U1|cnt\(3),
	datad => \inst2|U1|cnt\(6),
	combout => \inst2|U1|Equal0~2_combout\);

-- Location: LCCOMB_X32_Y13_N26
\inst2|U1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|U1|Add0~12_combout\ = (\inst2|U1|cnt\(7) & (\inst2|U1|Add0~11\ $ (GND))) # (!\inst2|U1|cnt\(7) & (!\inst2|U1|Add0~11\ & VCC))
-- \inst2|U1|Add0~13\ = CARRY((\inst2|U1|cnt\(7) & !\inst2|U1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|U1|cnt\(7),
	datad => VCC,
	cin => \inst2|U1|Add0~11\,
	combout => \inst2|U1|Add0~12_combout\,
	cout => \inst2|U1|Add0~13\);

-- Location: FF_X32_Y13_N27
\inst2|U1|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \inst2|U1|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|U1|cnt\(7));

-- Location: LCCOMB_X32_Y13_N28
\inst2|U1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|U1|Add0~14_combout\ = (\inst2|U1|cnt\(8) & (!\inst2|U1|Add0~13\)) # (!\inst2|U1|cnt\(8) & ((\inst2|U1|Add0~13\) # (GND)))
-- \inst2|U1|Add0~15\ = CARRY((!\inst2|U1|Add0~13\) # (!\inst2|U1|cnt\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|U1|cnt\(8),
	datad => VCC,
	cin => \inst2|U1|Add0~13\,
	combout => \inst2|U1|Add0~14_combout\,
	cout => \inst2|U1|Add0~15\);

-- Location: LCCOMB_X32_Y13_N6
\inst2|U1|cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|U1|cnt~3_combout\ = (\inst2|U1|Add0~14_combout\ & ((!\inst2|U1|Equal0~5_combout\) # (!\inst2|U1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|U1|Equal0~0_combout\,
	datac => \inst2|U1|Equal0~5_combout\,
	datad => \inst2|U1|Add0~14_combout\,
	combout => \inst2|U1|cnt~3_combout\);

-- Location: FF_X32_Y13_N7
\inst2|U1|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \inst2|U1|cnt~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|U1|cnt\(8));

-- Location: LCCOMB_X32_Y13_N30
\inst2|U1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|U1|Add0~16_combout\ = (\inst2|U1|cnt\(9) & (\inst2|U1|Add0~15\ $ (GND))) # (!\inst2|U1|cnt\(9) & (!\inst2|U1|Add0~15\ & VCC))
-- \inst2|U1|Add0~17\ = CARRY((\inst2|U1|cnt\(9) & !\inst2|U1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|U1|cnt\(9),
	datad => VCC,
	cin => \inst2|U1|Add0~15\,
	combout => \inst2|U1|Add0~16_combout\,
	cout => \inst2|U1|Add0~17\);

-- Location: FF_X32_Y13_N31
\inst2|U1|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \inst2|U1|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|U1|cnt\(9));

-- Location: LCCOMB_X32_Y13_N0
\inst2|U1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|U1|Equal0~1_combout\ = (!\inst2|U1|cnt\(7) & (\inst2|U0|cnt~q\ & (!\inst2|U1|cnt\(9) & \inst2|U1|cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|U1|cnt\(7),
	datab => \inst2|U0|cnt~q\,
	datac => \inst2|U1|cnt\(9),
	datad => \inst2|U1|cnt\(8),
	combout => \inst2|U1|Equal0~1_combout\);

-- Location: LCCOMB_X32_Y12_N0
\inst2|U1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|U1|Add0~18_combout\ = (\inst2|U1|cnt\(10) & (!\inst2|U1|Add0~17\)) # (!\inst2|U1|cnt\(10) & ((\inst2|U1|Add0~17\) # (GND)))
-- \inst2|U1|Add0~19\ = CARRY((!\inst2|U1|Add0~17\) # (!\inst2|U1|cnt\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|U1|cnt\(10),
	datad => VCC,
	cin => \inst2|U1|Add0~17\,
	combout => \inst2|U1|Add0~18_combout\,
	cout => \inst2|U1|Add0~19\);

-- Location: FF_X32_Y12_N1
\inst2|U1|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \inst2|U1|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|U1|cnt\(10));

-- Location: LCCOMB_X32_Y12_N2
\inst2|U1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|U1|Add0~20_combout\ = (\inst2|U1|cnt\(11) & (\inst2|U1|Add0~19\ $ (GND))) # (!\inst2|U1|cnt\(11) & (!\inst2|U1|Add0~19\ & VCC))
-- \inst2|U1|Add0~21\ = CARRY((\inst2|U1|cnt\(11) & !\inst2|U1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|U1|cnt\(11),
	datad => VCC,
	cin => \inst2|U1|Add0~19\,
	combout => \inst2|U1|Add0~20_combout\,
	cout => \inst2|U1|Add0~21\);

-- Location: FF_X32_Y12_N3
\inst2|U1|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \inst2|U1|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|U1|cnt\(11));

-- Location: LCCOMB_X32_Y12_N4
\inst2|U1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|U1|Add0~22_combout\ = (\inst2|U1|cnt\(12) & (!\inst2|U1|Add0~21\)) # (!\inst2|U1|cnt\(12) & ((\inst2|U1|Add0~21\) # (GND)))
-- \inst2|U1|Add0~23\ = CARRY((!\inst2|U1|Add0~21\) # (!\inst2|U1|cnt\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|U1|cnt\(12),
	datad => VCC,
	cin => \inst2|U1|Add0~21\,
	combout => \inst2|U1|Add0~22_combout\,
	cout => \inst2|U1|Add0~23\);

-- Location: FF_X32_Y12_N5
\inst2|U1|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \inst2|U1|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|U1|cnt\(12));

-- Location: LCCOMB_X32_Y12_N6
\inst2|U1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|U1|Add0~24_combout\ = (\inst2|U1|cnt\(13) & (\inst2|U1|Add0~23\ $ (GND))) # (!\inst2|U1|cnt\(13) & (!\inst2|U1|Add0~23\ & VCC))
-- \inst2|U1|Add0~25\ = CARRY((\inst2|U1|cnt\(13) & !\inst2|U1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|U1|cnt\(13),
	datad => VCC,
	cin => \inst2|U1|Add0~23\,
	combout => \inst2|U1|Add0~24_combout\,
	cout => \inst2|U1|Add0~25\);

-- Location: LCCOMB_X32_Y12_N30
\inst2|U1|cnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|U1|cnt~5_combout\ = (\inst2|U1|Add0~24_combout\ & ((!\inst2|U1|Equal0~5_combout\) # (!\inst2|U1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|U1|Equal0~0_combout\,
	datac => \inst2|U1|Equal0~5_combout\,
	datad => \inst2|U1|Add0~24_combout\,
	combout => \inst2|U1|cnt~5_combout\);

-- Location: FF_X32_Y12_N31
\inst2|U1|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \inst2|U1|cnt~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|U1|cnt\(13));

-- Location: LCCOMB_X32_Y12_N8
\inst2|U1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|U1|Add0~26_combout\ = (\inst2|U1|cnt\(14) & (!\inst2|U1|Add0~25\)) # (!\inst2|U1|cnt\(14) & ((\inst2|U1|Add0~25\) # (GND)))
-- \inst2|U1|Add0~27\ = CARRY((!\inst2|U1|Add0~25\) # (!\inst2|U1|cnt\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|U1|cnt\(14),
	datad => VCC,
	cin => \inst2|U1|Add0~25\,
	combout => \inst2|U1|Add0~26_combout\,
	cout => \inst2|U1|Add0~27\);

-- Location: FF_X32_Y12_N9
\inst2|U1|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \inst2|U1|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|U1|cnt\(14));

-- Location: LCCOMB_X32_Y12_N10
\inst2|U1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|U1|Add0~28_combout\ = (\inst2|U1|cnt\(15) & (\inst2|U1|Add0~27\ $ (GND))) # (!\inst2|U1|cnt\(15) & (!\inst2|U1|Add0~27\ & VCC))
-- \inst2|U1|Add0~29\ = CARRY((\inst2|U1|cnt\(15) & !\inst2|U1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|U1|cnt\(15),
	datad => VCC,
	cin => \inst2|U1|Add0~27\,
	combout => \inst2|U1|Add0~28_combout\,
	cout => \inst2|U1|Add0~29\);

-- Location: LCCOMB_X32_Y12_N20
\inst2|U1|cnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|U1|cnt~6_combout\ = (\inst2|U1|Add0~28_combout\ & ((!\inst2|U1|Equal0~5_combout\) # (!\inst2|U1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|U1|Equal0~0_combout\,
	datac => \inst2|U1|Equal0~5_combout\,
	datad => \inst2|U1|Add0~28_combout\,
	combout => \inst2|U1|cnt~6_combout\);

-- Location: FF_X32_Y12_N21
\inst2|U1|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \inst2|U1|cnt~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|U1|cnt\(15));

-- Location: LCCOMB_X32_Y12_N22
\inst2|U1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|U1|Equal0~4_combout\ = (\inst2|U1|cnt\(13) & (!\inst2|U1|cnt\(12) & (!\inst2|U1|cnt\(14) & \inst2|U1|cnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|U1|cnt\(13),
	datab => \inst2|U1|cnt\(12),
	datac => \inst2|U1|cnt\(14),
	datad => \inst2|U1|cnt\(15),
	combout => \inst2|U1|Equal0~4_combout\);

-- Location: LCCOMB_X32_Y13_N2
\inst2|U1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|U1|Equal0~3_combout\ = (\inst2|U1|cnt\(2) & (!\inst2|U1|cnt\(10) & (\inst2|U1|cnt\(1) & !\inst2|U1|cnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|U1|cnt\(2),
	datab => \inst2|U1|cnt\(10),
	datac => \inst2|U1|cnt\(1),
	datad => \inst2|U1|cnt\(11),
	combout => \inst2|U1|Equal0~3_combout\);

-- Location: LCCOMB_X32_Y13_N8
\inst2|U1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|U1|Equal0~5_combout\ = (\inst2|U1|Equal0~2_combout\ & (\inst2|U1|Equal0~1_combout\ & (\inst2|U1|Equal0~4_combout\ & \inst2|U1|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|U1|Equal0~2_combout\,
	datab => \inst2|U1|Equal0~1_combout\,
	datac => \inst2|U1|Equal0~4_combout\,
	datad => \inst2|U1|Equal0~3_combout\,
	combout => \inst2|U1|Equal0~5_combout\);

-- Location: LCCOMB_X32_Y12_N12
\inst2|U1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|U1|Add0~30_combout\ = (\inst2|U1|cnt\(16) & (!\inst2|U1|Add0~29\)) # (!\inst2|U1|cnt\(16) & ((\inst2|U1|Add0~29\) # (GND)))
-- \inst2|U1|Add0~31\ = CARRY((!\inst2|U1|Add0~29\) # (!\inst2|U1|cnt\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|U1|cnt\(16),
	datad => VCC,
	cin => \inst2|U1|Add0~29\,
	combout => \inst2|U1|Add0~30_combout\,
	cout => \inst2|U1|Add0~31\);

-- Location: LCCOMB_X32_Y12_N26
\inst2|U1|cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|U1|cnt~0_combout\ = (\inst2|U1|Add0~30_combout\ & ((!\inst2|U1|Equal0~5_combout\) # (!\inst2|U1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|U1|Equal0~0_combout\,
	datac => \inst2|U1|Equal0~5_combout\,
	datad => \inst2|U1|Add0~30_combout\,
	combout => \inst2|U1|cnt~0_combout\);

-- Location: FF_X32_Y12_N27
\inst2|U1|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \inst2|U1|cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|U1|cnt\(16));

-- Location: LCCOMB_X32_Y12_N14
\inst2|U1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|U1|Add0~32_combout\ = (\inst2|U1|cnt\(17) & (\inst2|U1|Add0~31\ $ (GND))) # (!\inst2|U1|cnt\(17) & (!\inst2|U1|Add0~31\ & VCC))
-- \inst2|U1|Add0~33\ = CARRY((\inst2|U1|cnt\(17) & !\inst2|U1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|U1|cnt\(17),
	datad => VCC,
	cin => \inst2|U1|Add0~31\,
	combout => \inst2|U1|Add0~32_combout\,
	cout => \inst2|U1|Add0~33\);

-- Location: LCCOMB_X32_Y12_N28
\inst2|U1|cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|U1|cnt~1_combout\ = (\inst2|U1|Add0~32_combout\ & ((!\inst2|U1|Equal0~5_combout\) # (!\inst2|U1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|U1|Equal0~0_combout\,
	datac => \inst2|U1|Add0~32_combout\,
	datad => \inst2|U1|Equal0~5_combout\,
	combout => \inst2|U1|cnt~1_combout\);

-- Location: FF_X32_Y12_N29
\inst2|U1|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \inst2|U1|cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|U1|cnt\(17));

-- Location: LCCOMB_X32_Y12_N16
\inst2|U1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|U1|Add0~34_combout\ = \inst2|U1|Add0~33\ $ (\inst2|U1|cnt\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|U1|cnt\(18),
	cin => \inst2|U1|Add0~33\,
	combout => \inst2|U1|Add0~34_combout\);

-- Location: LCCOMB_X32_Y12_N18
\inst2|U1|cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|U1|cnt~2_combout\ = (\inst2|U1|Add0~34_combout\ & ((!\inst2|U1|Equal0~5_combout\) # (!\inst2|U1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|U1|Equal0~0_combout\,
	datac => \inst2|U1|Equal0~5_combout\,
	datad => \inst2|U1|Add0~34_combout\,
	combout => \inst2|U1|cnt~2_combout\);

-- Location: FF_X32_Y12_N19
\inst2|U1|cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \inst2|U1|cnt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|U1|cnt\(18));

-- Location: LCCOMB_X32_Y12_N24
\inst2|U1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|U1|Equal0~0_combout\ = (\inst2|U1|cnt\(18) & (\inst2|U1|cnt\(16) & \inst2|U1|cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|U1|cnt\(18),
	datac => \inst2|U1|cnt\(16),
	datad => \inst2|U1|cnt\(17),
	combout => \inst2|U1|Equal0~0_combout\);

-- Location: FF_X33_Y13_N19
\inst2|U1|clkt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \inst2|U1|clkt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|U1|clkt~q\);

-- Location: LCCOMB_X33_Y13_N18
\inst2|U1|clkt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|U1|clkt~0_combout\ = \inst2|U1|clkt~q\ $ (((\inst2|U1|Equal0~0_combout\ & \inst2|U1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|U1|Equal0~0_combout\,
	datac => \inst2|U1|clkt~q\,
	datad => \inst2|U1|Equal0~5_combout\,
	combout => \inst2|U1|clkt~0_combout\);

-- Location: LCCOMB_X33_Y13_N30
\inst2|U1|clkout~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|U1|clkout~feeder_combout\ = \inst2|U1|clkt~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|U1|clkt~0_combout\,
	combout => \inst2|U1|clkout~feeder_combout\);

-- Location: FF_X33_Y13_N31
\inst2|U1|clkout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin~inputclkctrl_outclk\,
	d => \inst2|U1|clkout~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|U1|clkout~q\);

-- Location: CLKCTRL_G8
\inst2|U1|clkout~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|U1|clkout~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|U1|clkout~clkctrl_outclk\);

-- Location: IOIBUF_X34_Y5_N15
\papo~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_papo,
	o => \papo~input_o\);

-- Location: IOIBUF_X25_Y24_N15
\input[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(3),
	o => \input[3]~input_o\);

-- Location: IOIBUF_X25_Y24_N8
\input[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(0),
	o => \input[0]~input_o\);

-- Location: IOIBUF_X25_Y24_N1
\input[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(1),
	o => \input[1]~input_o\);

-- Location: IOIBUF_X25_Y24_N22
\input[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(2),
	o => \input[2]~input_o\);

-- Location: LCCOMB_X21_Y2_N16
\inst|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~0_combout\ = (!\input[3]~input_o\ & (\input[1]~input_o\ & ((\input[0]~input_o\) # (!\input[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[3]~input_o\,
	datab => \input[0]~input_o\,
	datac => \input[1]~input_o\,
	datad => \input[2]~input_o\,
	combout => \inst|Mux3~0_combout\);

-- Location: FF_X22_Y2_N3
\inst|NextState.TURN_RIGHT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|U1|clkout~clkctrl_outclk\,
	asdata => \inst|Mux3~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|NextState.TURN_RIGHT~q\);

-- Location: LCCOMB_X21_Y2_N26
\inst|ref_R~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ref_R~0_combout\ = (\papo~input_o\ & \inst|NextState.TURN_RIGHT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \papo~input_o\,
	datac => \inst|NextState.TURN_RIGHT~q\,
	combout => \inst|ref_R~0_combout\);

-- Location: FF_X21_Y2_N27
\inst|ref_R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|U1|clkout~clkctrl_outclk\,
	d => \inst|ref_R~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ref_R\(4));

-- Location: LCCOMB_X22_Y2_N30
\inst|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux4~0_combout\ = (!\input[0]~input_o\ & (\input[2]~input_o\ & (\input[3]~input_o\ & \input[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[0]~input_o\,
	datab => \input[2]~input_o\,
	datac => \input[3]~input_o\,
	datad => \input[1]~input_o\,
	combout => \inst|Mux4~0_combout\);

-- Location: FF_X22_Y2_N31
\inst|NextState.TURN_LEFTW\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|U1|clkout~clkctrl_outclk\,
	d => \inst|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|NextState.TURN_LEFTW~q\);

-- Location: LCCOMB_X21_Y2_N6
\inst|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~0_combout\ = (\input[3]~input_o\ & (!\input[1]~input_o\ & ((\input[2]~input_o\) # (!\input[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[3]~input_o\,
	datab => \input[0]~input_o\,
	datac => \input[1]~input_o\,
	datad => \input[2]~input_o\,
	combout => \inst|Mux2~0_combout\);

-- Location: FF_X22_Y2_N25
\inst|NextState.TURN_LEFT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|U1|clkout~clkctrl_outclk\,
	asdata => \inst|Mux2~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|NextState.TURN_LEFT~q\);

-- Location: LCCOMB_X22_Y2_N22
\inst|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux0~0_combout\ = (\input[0]~input_o\ & (\input[1]~input_o\ $ (((!\input[3]~input_o\) # (!\input[2]~input_o\))))) # (!\input[0]~input_o\ & ((\input[2]~input_o\ & (!\input[3]~input_o\)) # (!\input[2]~input_o\ & (\input[3]~input_o\ & 
-- \input[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[0]~input_o\,
	datab => \input[2]~input_o\,
	datac => \input[3]~input_o\,
	datad => \input[1]~input_o\,
	combout => \inst|Mux0~0_combout\);

-- Location: FF_X22_Y2_N23
\inst|NextState.FORWARD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|U1|clkout~clkctrl_outclk\,
	d => \inst|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|NextState.FORWARD~q\);

-- Location: LCCOMB_X22_Y2_N2
\inst|ref_R~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ref_R~1_combout\ = (\inst|NextState.TURN_LEFT~q\) # ((\papo~input_o\ & ((\inst|NextState.FORWARD~q\))) # (!\papo~input_o\ & (\inst|NextState.TURN_RIGHT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|NextState.TURN_LEFT~q\,
	datab => \papo~input_o\,
	datac => \inst|NextState.TURN_RIGHT~q\,
	datad => \inst|NextState.FORWARD~q\,
	combout => \inst|ref_R~1_combout\);

-- Location: LCCOMB_X22_Y2_N6
\inst|ref_R~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ref_R~2_combout\ = (\inst|NextState.TURN_LEFTW~q\) # (\inst|ref_R~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|NextState.TURN_LEFTW~q\,
	datad => \inst|ref_R~1_combout\,
	combout => \inst|ref_R~2_combout\);

-- Location: FF_X22_Y2_N7
\inst|ref_R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|U1|clkout~clkctrl_outclk\,
	d => \inst|ref_R~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ref_R\(3));

-- Location: LCCOMB_X22_Y2_N8
\inst|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux5~0_combout\ = (\input[0]~input_o\ & (!\input[2]~input_o\ & (\input[3]~input_o\ & \input[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[0]~input_o\,
	datab => \input[2]~input_o\,
	datac => \input[3]~input_o\,
	datad => \input[1]~input_o\,
	combout => \inst|Mux5~0_combout\);

-- Location: FF_X22_Y2_N9
\inst|NextState.TURN_RIGHTW\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|U1|clkout~clkctrl_outclk\,
	d => \inst|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|NextState.TURN_RIGHTW~q\);

-- Location: LCCOMB_X22_Y2_N4
\inst|ref_R~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ref_R~3_combout\ = (\inst|NextState.TURN_RIGHTW~q\) # ((\inst|NextState.FORWARD~q\) # ((\papo~input_o\ & \inst|NextState.TURN_LEFT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \papo~input_o\,
	datab => \inst|NextState.TURN_RIGHTW~q\,
	datac => \inst|NextState.TURN_LEFT~q\,
	datad => \inst|NextState.FORWARD~q\,
	combout => \inst|ref_R~3_combout\);

-- Location: FF_X22_Y2_N5
\inst|ref_R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|U1|clkout~clkctrl_outclk\,
	d => \inst|ref_R~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ref_R\(2));

-- Location: LCCOMB_X22_Y2_N28
\inst|WideOr4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr4~combout\ = (\inst|NextState.TURN_LEFT~q\) # ((\inst|NextState.TURN_LEFTW~q\) # (\inst|NextState.FORWARD~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|NextState.TURN_LEFT~q\,
	datac => \inst|NextState.TURN_LEFTW~q\,
	datad => \inst|NextState.FORWARD~q\,
	combout => \inst|WideOr4~combout\);

-- Location: LCCOMB_X22_Y2_N14
\inst|ref_R~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ref_R~5_combout\ = (\papo~input_o\ & ((\inst|WideOr4~combout\))) # (!\papo~input_o\ & (\inst|NextState.TURN_RIGHTW~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \papo~input_o\,
	datac => \inst|NextState.TURN_RIGHTW~q\,
	datad => \inst|WideOr4~combout\,
	combout => \inst|ref_R~5_combout\);

-- Location: FF_X22_Y2_N15
\inst|ref_R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|U1|clkout~clkctrl_outclk\,
	d => \inst|ref_R~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ref_R\(0));

-- Location: LCCOMB_X21_Y2_N30
\inst|NextState.START~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|NextState.START~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst|NextState.START~feeder_combout\);

-- Location: FF_X21_Y2_N31
\inst|NextState.START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|U1|clkout~clkctrl_outclk\,
	d => \inst|NextState.START~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|NextState.START~q\);

-- Location: LCCOMB_X21_Y2_N24
\inst|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux1~0_combout\ = (!\input[3]~input_o\ & (!\input[0]~input_o\ & (!\input[1]~input_o\ & !\input[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[3]~input_o\,
	datab => \input[0]~input_o\,
	datac => \input[1]~input_o\,
	datad => \input[2]~input_o\,
	combout => \inst|Mux1~0_combout\);

-- Location: FF_X21_Y2_N25
\inst|NextState.STOP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|U1|clkout~clkctrl_outclk\,
	d => \inst|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|NextState.STOP~q\);

-- Location: LCCOMB_X21_Y2_N20
\inst|ref_R~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ref_R~4_combout\ = (\inst|NextState.START~q\ & (!\inst|NextState.STOP~q\ & ((\papo~input_o\) # (!\inst|NextState.TURN_RIGHTW~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|NextState.START~q\,
	datab => \inst|NextState.STOP~q\,
	datac => \papo~input_o\,
	datad => \inst|NextState.TURN_RIGHTW~q\,
	combout => \inst|ref_R~4_combout\);

-- Location: FF_X21_Y2_N21
\inst|ref_R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|U1|clkout~clkctrl_outclk\,
	d => \inst|ref_R~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ref_R\(1));

-- Location: LCCOMB_X23_Y2_N0
\inst1|inst1|inst1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst1|LessThan0~0_combout\ = (\inst1|inst1|inst2|cnt\(1) & (\inst|ref_R\(0) & (!\inst1|inst1|inst2|cnt\(0) & \inst|ref_R\(1)))) # (!\inst1|inst1|inst2|cnt\(1) & ((\inst|ref_R\(1)) # ((\inst|ref_R\(0) & !\inst1|inst1|inst2|cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ref_R\(0),
	datab => \inst1|inst1|inst2|cnt\(0),
	datac => \inst1|inst1|inst2|cnt\(1),
	datad => \inst|ref_R\(1),
	combout => \inst1|inst1|inst1|LessThan0~0_combout\);

-- Location: LCCOMB_X23_Y2_N10
\inst1|inst1|inst1|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst1|LessThan0~1_combout\ = (\inst1|inst1|inst2|cnt\(2) & (\inst|ref_R\(2) & \inst1|inst1|inst1|LessThan0~0_combout\)) # (!\inst1|inst1|inst2|cnt\(2) & ((\inst|ref_R\(2)) # (\inst1|inst1|inst1|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst1|inst2|cnt\(2),
	datac => \inst|ref_R\(2),
	datad => \inst1|inst1|inst1|LessThan0~0_combout\,
	combout => \inst1|inst1|inst1|LessThan0~1_combout\);

-- Location: LCCOMB_X23_Y2_N28
\inst1|inst1|inst1|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst1|LessThan0~2_combout\ = (\inst|ref_R\(3) & ((\inst1|inst1|inst1|LessThan0~1_combout\) # (!\inst1|inst1|inst2|cnt\(3)))) # (!\inst|ref_R\(3) & (!\inst1|inst1|inst2|cnt\(3) & \inst1|inst1|inst1|LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|ref_R\(3),
	datac => \inst1|inst1|inst2|cnt\(3),
	datad => \inst1|inst1|inst1|LessThan0~1_combout\,
	combout => \inst1|inst1|inst1|LessThan0~2_combout\);

-- Location: LCCOMB_X23_Y2_N30
\inst1|inst1|inst1|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst1|LessThan0~3_combout\ = (\inst1|inst1|inst2|cnt\(4) & (\inst|ref_R\(4) & \inst1|inst1|inst1|LessThan0~2_combout\)) # (!\inst1|inst1|inst2|cnt\(4) & ((\inst|ref_R\(4)) # (\inst1|inst1|inst1|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst1|inst2|cnt\(4),
	datac => \inst|ref_R\(4),
	datad => \inst1|inst1|inst1|LessThan0~2_combout\,
	combout => \inst1|inst1|inst1|LessThan0~3_combout\);

-- Location: LCCOMB_X23_Y2_N8
\inst1|inst1|inst1|PWM~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst1|PWM~feeder_combout\ = \inst1|inst1|inst1|LessThan0~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst1|inst1|LessThan0~3_combout\,
	combout => \inst1|inst1|inst1|PWM~feeder_combout\);

-- Location: FF_X23_Y2_N9
\inst1|inst1|inst1|PWM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|U0|clkout~clkctrl_outclk\,
	d => \inst1|inst1|inst1|PWM~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst1|inst1|PWM~q\);

-- Location: LCCOMB_X23_Y2_N14
\inst1|inst1|inst4|PWM~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst4|PWM~feeder_combout\ = \inst1|inst1|inst1|LessThan0~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst1|inst1|LessThan0~3_combout\,
	combout => \inst1|inst1|inst4|PWM~feeder_combout\);

-- Location: FF_X23_Y2_N15
\inst1|inst1|inst4|PWM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|U0|clkout~clkctrl_outclk\,
	d => \inst1|inst1|inst4|PWM~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst1|inst4|PWM~q\);

-- Location: LCCOMB_X21_Y2_N14
\inst|ref_R~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ref_R~6_combout\ = (\papo~input_o\ & \inst|NextState.TURN_LEFT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \papo~input_o\,
	datad => \inst|NextState.TURN_LEFT~q\,
	combout => \inst|ref_R~6_combout\);

-- Location: FF_X21_Y2_N15
\inst|ref_L[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|U1|clkout~clkctrl_outclk\,
	d => \inst|ref_R~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ref_L\(4));

-- Location: LCCOMB_X22_Y2_N24
\inst|ref_L~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ref_L~2_combout\ = (\inst|NextState.TURN_RIGHT~q\) # ((\papo~input_o\ & (\inst|NextState.FORWARD~q\)) # (!\papo~input_o\ & ((\inst|NextState.TURN_LEFT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|NextState.FORWARD~q\,
	datab => \inst|NextState.TURN_RIGHT~q\,
	datac => \inst|NextState.TURN_LEFT~q\,
	datad => \papo~input_o\,
	combout => \inst|ref_L~2_combout\);

-- Location: LCCOMB_X22_Y2_N12
\inst|ref_L~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ref_L~3_combout\ = (\inst|NextState.TURN_RIGHTW~q\) # (\inst|ref_L~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|NextState.TURN_RIGHTW~q\,
	datad => \inst|ref_L~2_combout\,
	combout => \inst|ref_L~3_combout\);

-- Location: FF_X22_Y2_N13
\inst|ref_L[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|U1|clkout~clkctrl_outclk\,
	d => \inst|ref_L~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ref_L\(3));

-- Location: LCCOMB_X22_Y2_N16
\inst|ref_L~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ref_L~4_combout\ = (\inst|NextState.FORWARD~q\) # ((\inst|NextState.TURN_LEFTW~q\) # ((\papo~input_o\ & \inst|NextState.TURN_RIGHT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \papo~input_o\,
	datab => \inst|NextState.TURN_RIGHT~q\,
	datac => \inst|NextState.FORWARD~q\,
	datad => \inst|NextState.TURN_LEFTW~q\,
	combout => \inst|ref_L~4_combout\);

-- Location: FF_X22_Y2_N17
\inst|ref_L[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|U1|clkout~clkctrl_outclk\,
	d => \inst|ref_L~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ref_L\(2));

-- Location: LCCOMB_X22_Y2_N18
\inst|WideOr5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr5~combout\ = (\inst|NextState.FORWARD~q\) # ((\inst|NextState.TURN_RIGHT~q\) # (\inst|NextState.TURN_RIGHTW~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|NextState.FORWARD~q\,
	datab => \inst|NextState.TURN_RIGHT~q\,
	datac => \inst|NextState.TURN_RIGHTW~q\,
	combout => \inst|WideOr5~combout\);

-- Location: LCCOMB_X22_Y2_N0
\inst|ref_L~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ref_L~6_combout\ = (\papo~input_o\ & ((\inst|WideOr5~combout\))) # (!\papo~input_o\ & (\inst|NextState.TURN_LEFTW~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \papo~input_o\,
	datac => \inst|NextState.TURN_LEFTW~q\,
	datad => \inst|WideOr5~combout\,
	combout => \inst|ref_L~6_combout\);

-- Location: FF_X22_Y2_N1
\inst|ref_L[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|U1|clkout~clkctrl_outclk\,
	d => \inst|ref_L~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ref_L\(0));

-- Location: LCCOMB_X21_Y2_N28
\inst|ref_L~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ref_L~5_combout\ = (!\inst|NextState.STOP~q\ & (\inst|NextState.START~q\ & ((\papo~input_o\) # (!\inst|NextState.TURN_LEFTW~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \papo~input_o\,
	datab => \inst|NextState.STOP~q\,
	datac => \inst|NextState.START~q\,
	datad => \inst|NextState.TURN_LEFTW~q\,
	combout => \inst|ref_L~5_combout\);

-- Location: FF_X21_Y2_N29
\inst|ref_L[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|U1|clkout~clkctrl_outclk\,
	d => \inst|ref_L~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ref_L\(1));

-- Location: LCCOMB_X23_Y2_N12
\inst1|inst1|inst3|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst3|LessThan0~0_combout\ = (\inst1|inst1|inst2|cnt\(1) & (\inst|ref_L\(0) & (!\inst1|inst1|inst2|cnt\(0) & \inst|ref_L\(1)))) # (!\inst1|inst1|inst2|cnt\(1) & ((\inst|ref_L\(1)) # ((\inst|ref_L\(0) & !\inst1|inst1|inst2|cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ref_L\(0),
	datab => \inst1|inst1|inst2|cnt\(0),
	datac => \inst1|inst1|inst2|cnt\(1),
	datad => \inst|ref_L\(1),
	combout => \inst1|inst1|inst3|LessThan0~0_combout\);

-- Location: LCCOMB_X23_Y2_N6
\inst1|inst1|inst3|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst3|LessThan0~1_combout\ = (\inst1|inst1|inst2|cnt\(2) & (\inst|ref_L\(2) & \inst1|inst1|inst3|LessThan0~0_combout\)) # (!\inst1|inst1|inst2|cnt\(2) & ((\inst|ref_L\(2)) # (\inst1|inst1|inst3|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst1|inst2|cnt\(2),
	datac => \inst|ref_L\(2),
	datad => \inst1|inst1|inst3|LessThan0~0_combout\,
	combout => \inst1|inst1|inst3|LessThan0~1_combout\);

-- Location: LCCOMB_X23_Y2_N26
\inst1|inst1|inst3|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst3|LessThan0~2_combout\ = (\inst|ref_L\(3) & ((\inst1|inst1|inst3|LessThan0~1_combout\) # (!\inst1|inst1|inst2|cnt\(3)))) # (!\inst|ref_L\(3) & (!\inst1|inst1|inst2|cnt\(3) & \inst1|inst1|inst3|LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ref_L\(3),
	datac => \inst1|inst1|inst2|cnt\(3),
	datad => \inst1|inst1|inst3|LessThan0~1_combout\,
	combout => \inst1|inst1|inst3|LessThan0~2_combout\);

-- Location: LCCOMB_X22_Y2_N10
\inst1|inst1|inst3|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst3|LessThan0~3_combout\ = (\inst|ref_L\(4) & ((\inst1|inst1|inst3|LessThan0~2_combout\) # (!\inst1|inst1|inst2|cnt\(4)))) # (!\inst|ref_L\(4) & (!\inst1|inst1|inst2|cnt\(4) & \inst1|inst1|inst3|LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ref_L\(4),
	datab => \inst1|inst1|inst2|cnt\(4),
	datad => \inst1|inst1|inst3|LessThan0~2_combout\,
	combout => \inst1|inst1|inst3|LessThan0~3_combout\);

-- Location: LCCOMB_X22_Y2_N26
\inst1|inst1|inst3|PWM~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst3|PWM~feeder_combout\ = \inst1|inst1|inst3|LessThan0~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|inst1|inst3|LessThan0~3_combout\,
	combout => \inst1|inst1|inst3|PWM~feeder_combout\);

-- Location: FF_X22_Y2_N27
\inst1|inst1|inst3|PWM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|U0|clkout~clkctrl_outclk\,
	d => \inst1|inst1|inst3|PWM~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst1|inst3|PWM~q\);

-- Location: LCCOMB_X22_Y2_N20
\inst1|inst1|inst|PWM~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst|PWM~feeder_combout\ = \inst1|inst1|inst3|LessThan0~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|inst1|inst3|LessThan0~3_combout\,
	combout => \inst1|inst1|inst|PWM~feeder_combout\);

-- Location: FF_X22_Y2_N21
\inst1|inst1|inst|PWM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|U0|clkout~clkctrl_outclk\,
	d => \inst1|inst1|inst|PWM~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst1|inst|PWM~q\);

-- Location: LCCOMB_X21_Y2_N12
\inst|r[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|r[0]~feeder_combout\ = \inst|NextState.TURN_LEFT~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|NextState.TURN_LEFT~q\,
	combout => \inst|r[0]~feeder_combout\);

-- Location: FF_X21_Y2_N13
\inst|r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|U1|clkout~clkctrl_outclk\,
	d => \inst|r[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|r\(0));

-- Location: FF_X22_Y2_N19
\inst|r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|U1|clkout~clkctrl_outclk\,
	d => \inst|WideOr5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|r\(1));

-- Location: FF_X22_Y2_N11
\inst|l[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|U1|clkout~clkctrl_outclk\,
	asdata => \inst|NextState.TURN_RIGHT~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|l\(0));

-- Location: FF_X22_Y2_N29
\inst|l[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|U1|clkout~clkctrl_outclk\,
	d => \inst|WideOr4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|l\(1));

-- Location: LCCOMB_X21_Y2_N18
\inst1|inst|moto_sy[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst|moto_sy[3]~0_combout\ = (!\inst|l\(0) & ((\inst|r\(1) & (!\inst|r\(0))) # (!\inst|r\(1) & ((\inst|l\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|r\(0),
	datab => \inst|r\(1),
	datac => \inst|l\(0),
	datad => \inst|l\(1),
	combout => \inst1|inst|moto_sy[3]~0_combout\);

-- Location: LCCOMB_X21_Y2_N0
\inst1|inst|moto_sy[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst|moto_sy[2]~1_combout\ = (!\inst|r\(0) & (\inst|r\(1) & (\inst|l\(0) & !\inst|l\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|r\(0),
	datab => \inst|r\(1),
	datac => \inst|l\(0),
	datad => \inst|l\(1),
	combout => \inst1|inst|moto_sy[2]~1_combout\);

-- Location: LCCOMB_X21_Y2_N10
\inst1|inst|moto_sz[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst|moto_sz[3]~0_combout\ = (!\inst|r\(0) & ((\inst|l\(1) & ((!\inst|l\(0)))) # (!\inst|l\(1) & (\inst|r\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|r\(0),
	datab => \inst|r\(1),
	datac => \inst|l\(0),
	datad => \inst|l\(1),
	combout => \inst1|inst|moto_sz[3]~0_combout\);

-- Location: LCCOMB_X21_Y2_N8
\inst1|inst|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst|process_0~0_combout\ = (\inst|r\(0) & (!\inst|r\(1) & (!\inst|l\(0) & \inst|l\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|r\(0),
	datab => \inst|r\(1),
	datac => \inst|l\(0),
	datad => \inst|l\(1),
	combout => \inst1|inst|process_0~0_combout\);

ww_pwmq_R <= \pwmq_R~output_o\;

ww_pwmh_R <= \pwmh_R~output_o\;

ww_pwmh_L <= \pwmh_L~output_o\;

ww_pwmq_L <= \pwmq_L~output_o\;

ww_moto_sy(3) <= \moto_sy[3]~output_o\;

ww_moto_sy(2) <= \moto_sy[2]~output_o\;

ww_moto_sy(1) <= \moto_sy[1]~output_o\;

ww_moto_sy(0) <= \moto_sy[0]~output_o\;

ww_moto_sz(3) <= \moto_sz[3]~output_o\;

ww_moto_sz(2) <= \moto_sz[2]~output_o\;

ww_moto_sz(1) <= \moto_sz[1]~output_o\;

ww_moto_sz(0) <= \moto_sz[0]~output_o\;
END structure;


