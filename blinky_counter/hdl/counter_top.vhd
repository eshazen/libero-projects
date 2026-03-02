library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity led_blinker is
  port (
    clk_i   : in  std_logic;
    reset_n_i : in  std_logic;
    led_o   : out std_logic_vector(7 downto 0)
    );
end entity led_blinker;

architecture rtl of led_blinker is
  signal counter : unsigned(31 downto 0); -- Adjust size for desired blink rate
begin
  process (clk_i, reset_n_i)
  begin
    if reset_n_i = '0' then
        counter <= (others => '0');
    elsif rising_edge(clk_i) then
      counter <= counter + 1;
    end if;
  end process;

  led_o(7 downto 0) <= counter(31 downto 24);
end architecture rtl;
