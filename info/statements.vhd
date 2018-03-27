library ieee;
use ieee.std_logic_1164.all;


-- If you want the most significant bit of your bundle to be on the the first bit on the left you use downto keyword
entity statements is
  port (
    i_a    : in  std_logic;
    i_b    : in  std_logic;
    i_c    : in  std_logic;
	o_f0    : out std_logic;
	o_f1    : out std_logic;
	o_f2    : out std_logic
    );
end statements;
 
architecture dataflow of statements is
begin
  o_f0 <= (i_a and not i_b) or (not i_a and not i_c);
  
  o_f1 <= '1' when ((i_a and not i_b) or (not i_a and not i_c)) = '1' else
          '0';
		  
  with (i_a and not i_b) or (not i_a and not i_c) select
  o_f2 <= '1' when '1',
          '0' when '0',
		  '0' when others;
  
end dataflow;
