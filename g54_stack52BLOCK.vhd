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

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"
-- CREATED		"Wed Feb 22 15:40:11 2017"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY g54_stack52BLOCK IS 
	PORT
	(
		RST :  IN  STD_LOGIC;
		clk :  IN  STD_LOGIC;
		ADDR :  IN  STD_LOGIC_VECTOR(5 DOWNTO 0);
		DATA :  IN  STD_LOGIC_VECTOR(5 DOWNTO 0);
		mode :  IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		empty :  OUT  STD_LOGIC;
		full :  OUT  STD_LOGIC;
		NUM :  OUT  STD_LOGIC_VECTOR(5 DOWNTO 0);
		value :  OUT  STD_LOGIC_VECTOR(5 DOWNTO 0)
	);
END g54_stack52BLOCK;

ARCHITECTURE bdf_type OF g54_stack52BLOCK IS 

COMPONENT g54_stack52
	PORT(RST : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 ADDR : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 DATA : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		 mode : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 empty : OUT STD_LOGIC;
		 full : OUT STD_LOGIC;
		 NUM : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
		 value : OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
	);
END COMPONENT;



BEGIN 



b2v_inst : g54_stack52
PORT MAP(RST => RST,
		 clk => clk,
		 ADDR => ADDR,
		 DATA => DATA,
		 mode => mode,
		 empty => empty,
		 full => full,
		 NUM => NUM,
		 value => value);


END bdf_type;