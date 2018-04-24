library ieee;
use ieee.std_logic_1164.all;

entity process_tb is
end process_tb;

architecture behave of process_tb is
  signal r_SIG1   : std_logic_vector (1 downto 0);
  signal w_RESULT1 : std_logic_vector (2 downto 0);
-- naudoti 4ARBA vhd
  component lab3papildoma is
    port (
      i_bit0    : in std_logic_vector (1 downto 0);
      o_bit0 : out std_logic_vector (2 downto 0)
	  );
	  
  end component lab3papildoma;
--behin behave
begin

  and_gate_INST : lab3papildoma
    port map (
      i_bit0    => r_SIG1,
      o_bit0	=> w_RESULT1
      );
	  
	  -- aprasyti visas reikalingas kombinacijas patikrinti schemai
  process is
  begin
    r_SIG1 <= "00";
    wait for 10 ns;
    r_SIG1 <= "01";
    wait for 10 ns;
    r_SIG1 <= "10";
    wait for 10 ns;
    r_SIG1 <= "11";
    wait for 10 ns;
  end process;

end behave;