--
-- Synopsys
-- Vhdl wrapper for top level design, written on Tue Nov 18 13:35:30 2025
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity wrapper_for_led_blinker is
   port (
      clk_i : in std_logic;
      reset_n_i : in std_logic;
      led_o : out std_logic_vector(7 downto 0)
   );
end wrapper_for_led_blinker;

architecture rtl of wrapper_for_led_blinker is

component led_blinker
 port (
   clk_i : in std_logic;
   reset_n_i : in std_logic;
   led_o : out std_logic_vector (7 downto 0)
 );
end component;

signal tmp_clk_i : std_logic;
signal tmp_reset_n_i : std_logic;
signal tmp_led_o : std_logic_vector (7 downto 0);

begin

tmp_clk_i <= clk_i;

tmp_reset_n_i <= reset_n_i;

led_o <= tmp_led_o;



u1:   led_blinker port map (
		clk_i => tmp_clk_i,
		reset_n_i => tmp_reset_n_i,
		led_o => tmp_led_o
       );
end rtl;
