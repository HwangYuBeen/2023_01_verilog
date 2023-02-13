-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "02/02/2023 12:46:04"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	carry_save_multiplier IS
    PORT (
	clk : IN std_logic;
	n_rst : IN std_logic;
	start : IN std_logic;
	a : IN std_logic_vector(3 DOWNTO 0);
	b : IN std_logic_vector(3 DOWNTO 0);
	product : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END carry_save_multiplier;

-- Design Ports Information
-- product[0]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[1]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[2]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[3]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[4]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[5]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[6]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[7]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_rst	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF carry_save_multiplier IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_n_rst : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_a : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_product : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \n_rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \product[0]~output_o\ : std_logic;
SIGNAL \product[1]~output_o\ : std_logic;
SIGNAL \product[2]~output_o\ : std_logic;
SIGNAL \product[3]~output_o\ : std_logic;
SIGNAL \product[4]~output_o\ : std_logic;
SIGNAL \product[5]~output_o\ : std_logic;
SIGNAL \product[6]~output_o\ : std_logic;
SIGNAL \product[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \n_rst~input_o\ : std_logic;
SIGNAL \n_rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \a_m[1]~feeder_combout\ : std_logic;
SIGNAL \u_half_adder0|sum~0_combout\ : std_logic;
SIGNAL \product[1]~reg0_q\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \u_full_adder4|Add0~0_combout\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \u_full_adder4|Add0~1_combout\ : std_logic;
SIGNAL \product[2]~reg0_q\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \u_full_adder8|Add0~0_combout\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \u_half_adder0|sum~1\ : std_logic;
SIGNAL \u_half_adder0|c_out~0_combout\ : std_logic;
SIGNAL \u_full_adder8|Add0~1_combout\ : std_logic;
SIGNAL \product[3]~reg0_q\ : std_logic;
SIGNAL \u_full_adder9|Add0~0_combout\ : std_logic;
SIGNAL \u_full_adder9|Add0~1_combout\ : std_logic;
SIGNAL \product[4]~reg0_q\ : std_logic;
SIGNAL \u_half_adder0|c_out~1\ : std_logic;
SIGNAL \u_half_adder0|Add0~0_combout\ : std_logic;
SIGNAL \u_full_adder10|Add0~0_combout\ : std_logic;
SIGNAL \product[5]~reg0_q\ : std_logic;
SIGNAL \u_half_adder0|Add0~1\ : std_logic;
SIGNAL \u_half_adder0|Add0~2_combout\ : std_logic;
SIGNAL \product[6]~reg0_q\ : std_logic;
SIGNAL \u_half_adder0|Add0~3\ : std_logic;
SIGNAL \u_half_adder0|Add0~4_combout\ : std_logic;
SIGNAL \product[7]~reg0_q\ : std_logic;
SIGNAL m_and : std_logic_vector(15 DOWNTO 0);
SIGNAL b_m : std_logic_vector(3 DOWNTO 0);
SIGNAL a_m : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_n_rst <= n_rst;
ww_start <= start;
ww_a <= a;
ww_b <= b;
product <= ww_product;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\n_rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \n_rst~input_o\);

-- Location: IOOBUF_X23_Y29_N2
\product[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \product[0]~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\product[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product[1]~reg0_q\,
	devoe => ww_devoe,
	o => \product[1]~output_o\);

-- Location: IOOBUF_X7_Y29_N9
\product[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product[2]~reg0_q\,
	devoe => ww_devoe,
	o => \product[2]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\product[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product[3]~reg0_q\,
	devoe => ww_devoe,
	o => \product[3]~output_o\);

-- Location: IOOBUF_X0_Y3_N9
\product[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product[4]~reg0_q\,
	devoe => ww_devoe,
	o => \product[4]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\product[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product[5]~reg0_q\,
	devoe => ww_devoe,
	o => \product[5]~output_o\);

-- Location: IOOBUF_X0_Y9_N23
\product[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product[6]~reg0_q\,
	devoe => ww_devoe,
	o => \product[6]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\product[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \product[7]~reg0_q\,
	devoe => ww_devoe,
	o => \product[7]~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y10_N8
\a[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: IOIBUF_X0_Y14_N8
\n_rst~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_rst,
	o => \n_rst~input_o\);

-- Location: CLKCTRL_G2
\n_rst~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \n_rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \n_rst~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y4_N8
\start~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: FF_X1_Y6_N13
\a_m[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[0]~input_o\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_m(0));

-- Location: IOIBUF_X0_Y3_N1
\b[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: FF_X1_Y6_N15
\b_m[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[1]~input_o\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_m(1));

-- Location: LCCOMB_X1_Y6_N14
\m_and[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- m_and(1) = (a_m(0) & b_m(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => a_m(0),
	datac => b_m(1),
	combout => m_and(1));

-- Location: IOIBUF_X0_Y9_N15
\b[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: FF_X1_Y6_N11
\b_m[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[0]~input_o\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_m(0));

-- Location: IOIBUF_X0_Y5_N15
\a[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: LCCOMB_X1_Y6_N8
\a_m[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a_m[1]~feeder_combout\ = \a[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a[1]~input_o\,
	combout => \a_m[1]~feeder_combout\);

-- Location: FF_X1_Y6_N9
\a_m[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a_m[1]~feeder_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_m(1));

-- Location: LCCOMB_X1_Y6_N10
\m_and[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- m_and(2) = (b_m(0) & a_m(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => b_m(0),
	datad => a_m(1),
	combout => m_and(2));

-- Location: LCCOMB_X1_Y6_N16
\u_half_adder0|sum~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_half_adder0|sum~0_combout\ = (m_and(1) & (m_and(2) $ (VCC))) # (!m_and(1) & (m_and(2) & VCC))
-- \u_half_adder0|sum~1\ = CARRY((m_and(1) & m_and(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => m_and(1),
	datab => m_and(2),
	datad => VCC,
	combout => \u_half_adder0|sum~0_combout\,
	cout => \u_half_adder0|sum~1\);

-- Location: FF_X1_Y6_N17
\product[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_half_adder0|sum~0_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product[1]~reg0_q\);

-- Location: IOIBUF_X0_Y4_N22
\a[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: FF_X1_Y6_N27
\a_m[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[2]~input_o\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_m(2));

-- Location: LCCOMB_X1_Y6_N26
\u_full_adder4|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_full_adder4|Add0~0_combout\ = (b_m(1) & (a_m(1) $ (((a_m(2) & b_m(0)))))) # (!b_m(1) & (((a_m(2) & b_m(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => b_m(1),
	datab => a_m(1),
	datac => a_m(2),
	datad => b_m(0),
	combout => \u_full_adder4|Add0~0_combout\);

-- Location: IOIBUF_X0_Y13_N15
\b[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: FF_X1_Y6_N21
\b_m[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[2]~input_o\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_m(2));

-- Location: LCCOMB_X1_Y6_N0
\u_full_adder4|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_full_adder4|Add0~1_combout\ = \u_full_adder4|Add0~0_combout\ $ (((a_m(0) & b_m(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_full_adder4|Add0~0_combout\,
	datac => a_m(0),
	datad => b_m(2),
	combout => \u_full_adder4|Add0~1_combout\);

-- Location: FF_X1_Y6_N1
\product[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_full_adder4|Add0~1_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product[2]~reg0_q\);

-- Location: IOIBUF_X7_Y0_N29
\b[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: FF_X1_Y6_N29
\b_m[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[3]~input_o\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_m(3));

-- Location: LCCOMB_X1_Y6_N12
\u_full_adder8|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_full_adder8|Add0~0_combout\ = (b_m(3) & (a_m(0) $ (((b_m(2) & a_m(1)))))) # (!b_m(3) & (b_m(2) & ((a_m(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => b_m(3),
	datab => b_m(2),
	datac => a_m(0),
	datad => a_m(1),
	combout => \u_full_adder8|Add0~0_combout\);

-- Location: IOIBUF_X0_Y5_N8
\a[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: FF_X1_Y6_N19
\a_m[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[3]~input_o\,
	clrn => \n_rst~inputclkctrl_outclk\,
	sload => VCC,
	ena => \start~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_m(3));

-- Location: LCCOMB_X1_Y6_N18
\u_half_adder0|c_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_half_adder0|c_out~0_combout\ = (\u_half_adder0|sum~1\ & (((!a_m(3))) # (!b_m(1)))) # (!\u_half_adder0|sum~1\ & (((b_m(1) & a_m(3))) # (GND)))
-- \u_half_adder0|c_out~1\ = CARRY(((!\u_half_adder0|sum~1\) # (!a_m(3))) # (!b_m(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_m(1),
	datab => a_m(3),
	datad => VCC,
	cin => \u_half_adder0|sum~1\,
	combout => \u_half_adder0|c_out~0_combout\,
	cout => \u_half_adder0|c_out~1\);

-- Location: LCCOMB_X1_Y6_N2
\u_full_adder8|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_full_adder8|Add0~1_combout\ = \u_full_adder8|Add0~0_combout\ $ (\u_half_adder0|c_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_full_adder8|Add0~0_combout\,
	datad => \u_half_adder0|c_out~0_combout\,
	combout => \u_full_adder8|Add0~1_combout\);

-- Location: FF_X1_Y6_N3
\product[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_full_adder8|Add0~1_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product[3]~reg0_q\);

-- Location: LCCOMB_X1_Y6_N28
\u_full_adder9|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_full_adder9|Add0~0_combout\ = (a_m(2) & (b_m(2) $ (((a_m(1) & b_m(3)))))) # (!a_m(2) & (a_m(1) & (b_m(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a_m(2),
	datab => a_m(1),
	datac => b_m(3),
	datad => b_m(2),
	combout => \u_full_adder9|Add0~0_combout\);

-- Location: LCCOMB_X1_Y6_N4
\u_full_adder9|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_full_adder9|Add0~1_combout\ = \u_full_adder9|Add0~0_combout\ $ (\u_half_adder0|c_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_full_adder9|Add0~0_combout\,
	datad => \u_half_adder0|c_out~0_combout\,
	combout => \u_full_adder9|Add0~1_combout\);

-- Location: FF_X1_Y6_N5
\product[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_full_adder9|Add0~1_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product[4]~reg0_q\);

-- Location: LCCOMB_X1_Y6_N20
\u_half_adder0|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_half_adder0|Add0~0_combout\ = (\u_half_adder0|c_out~1\ & (a_m(3) & (b_m(2) & VCC))) # (!\u_half_adder0|c_out~1\ & ((((a_m(3) & b_m(2))))))
-- \u_half_adder0|Add0~1\ = CARRY((a_m(3) & (b_m(2) & !\u_half_adder0|c_out~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => a_m(3),
	datab => b_m(2),
	datad => VCC,
	cin => \u_half_adder0|c_out~1\,
	combout => \u_half_adder0|Add0~0_combout\,
	cout => \u_half_adder0|Add0~1\);

-- Location: LCCOMB_X1_Y6_N30
\u_full_adder10|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_full_adder10|Add0~0_combout\ = \u_half_adder0|Add0~0_combout\ $ (((b_m(3) & a_m(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => b_m(3),
	datac => a_m(2),
	datad => \u_half_adder0|Add0~0_combout\,
	combout => \u_full_adder10|Add0~0_combout\);

-- Location: FF_X1_Y6_N31
\product[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_full_adder10|Add0~0_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product[5]~reg0_q\);

-- Location: LCCOMB_X1_Y6_N22
\u_half_adder0|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_half_adder0|Add0~2_combout\ = (\u_half_adder0|Add0~1\ & (((!b_m(3))) # (!a_m(3)))) # (!\u_half_adder0|Add0~1\ & (((a_m(3) & b_m(3))) # (GND)))
-- \u_half_adder0|Add0~3\ = CARRY(((!\u_half_adder0|Add0~1\) # (!b_m(3))) # (!a_m(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => a_m(3),
	datab => b_m(3),
	datad => VCC,
	cin => \u_half_adder0|Add0~1\,
	combout => \u_half_adder0|Add0~2_combout\,
	cout => \u_half_adder0|Add0~3\);

-- Location: FF_X1_Y6_N23
\product[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_half_adder0|Add0~2_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product[6]~reg0_q\);

-- Location: LCCOMB_X1_Y6_N24
\u_half_adder0|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_half_adder0|Add0~4_combout\ = !\u_half_adder0|Add0~3\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_half_adder0|Add0~3\,
	combout => \u_half_adder0|Add0~4_combout\);

-- Location: FF_X1_Y6_N25
\product[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \u_half_adder0|Add0~4_combout\,
	clrn => \n_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \product[7]~reg0_q\);

ww_product(0) <= \product[0]~output_o\;

ww_product(1) <= \product[1]~output_o\;

ww_product(2) <= \product[2]~output_o\;

ww_product(3) <= \product[3]~output_o\;

ww_product(4) <= \product[4]~output_o\;

ww_product(5) <= \product[5]~output_o\;

ww_product(6) <= \product[6]~output_o\;

ww_product(7) <= \product[7]~output_o\;
END structure;


