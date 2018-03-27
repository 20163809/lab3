library ieee;
use ieee.std_logic_1164.all;


-- If you want the most significant bit of your bundle to be on the the first bit on the left you use downto keyword
entity statements_v2 is
  port (
    i_s : in  std_logic_vector(1 downto 0);
	o_x0 : out std_logic_vector(3 downto 0);
	o_x1 : out std_logic_vector(3 downto 0);
	o_x2 : out std_logic_vector(3 downto 0)
    );
end statements_v2;
 
architecture dataflow of statements_v2 is
  signal w_tmp0 : std_logic;
  signal w_tmp1 : std_logic;
  signal w_tmp2 : std_logic;
  signal w_tmp3 : std_logic;
begin
  o_x0 <= "0001" when (i_s = "00") else
          "0010" when (i_s = "01") else
		  "0100" when (i_s = "10") else
		  "1000" when (i_s = "11") else
		  "0000";
		  
  with i_s select
  o_x1 <= "0001" when "00",
          "0010" when "01",
		  "0100" when "10",
		  "1000" when others;

  w_tmp0 <= (not i_s(1)) and (not i_s(0));
  w_tmp1 <= (not i_s(1)) and i_s(0);
  w_tmp2 <= i_s(1) and (not i_s(0));
  w_tmp3 <= i_s(1) and i_s(0);
		  
  o_x2(0) <= w_tmp0;
  o_x2(1) <= w_tmp1;
  o_x2(2) <= w_tmp2;
  o_x2(3) <= w_tmp3;  
  
end dataflow;
