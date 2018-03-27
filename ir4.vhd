library ieee;
use ieee.std_logic_1164.all;
 
entity or4 is
  port (
    i_bit0    : in  std_logic;
    i_bit1    : in  std_logic;
    i_bit2    : in  std_logic;
    i_bit3    : in  std_logic;
    o_or0     : out std_logic;
    o_or1     : out std_logic;
    o_or2     : out std_logic
    );

end or4;
 
architecture rtl of or4 is
begin
  --pirmas budas
  o_or2 <= '1' when '1', '0' when '0', '0' when others;
  
  --antras budas
  o_or1 <= '1' when ((i_bit0 and i_bit1) and (i_bit2 and i_bit3))='1' else '0';
  with ((i_bit0 and i_bit1) and (i_bit2 and i_bit3)) select
  
  --trecias budas
  o_or0 <= (i_bit0 and i_bit1) and (i_bit2 and i_bit3);
end rtl;
