library ieee;
use ieee.std_logic_1164.all;
 
entity lab3papildoma is
  port (
    i_bit0    : in  std_logic_vector(1 downto 0);
    o_bit0	 : out std_logic_vector(2 downto 0)
);
end lab3papildoma;
 
architecture rtl of lab3papildoma is
begin
  o_bit0 <= "011" when (i_bit0="00") else
			"100" when (i_bit0="01") else
			"101" when (i_bit0="10") else
			"110" when (i_bit0="11") else
			"000";
end rtl;