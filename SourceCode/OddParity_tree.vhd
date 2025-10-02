library ieee;
use ieee.std_logic_1164.all;

architecture TREE of OddParity is
  signal p_hi, p_lo : std_logic;
  constant N_hi : natural := N - (N/2);  -- handles odd N (e.g., 7 -> 4+3)
  constant N_lo : natural := N/2;
begin
  gen_recur : if N >= 2 generate
    -- upper half: X(N-1 downto N/2), width N_hi
    u_hi : entity work.OddParity(TREE)
      generic map ( N => N_hi )
      port map ( X => X(N-1 downto N/2), IsOdd => p_hi );

    -- lower half: X(N/2-1 downto 0), width N_lo
    u_lo : entity work.OddParity(TREE)
      generic map ( N => N_lo )
      port map ( X => X(N/2-1 downto 0), IsOdd => p_lo );

    IsOdd <= p_hi xor p_lo;  -- combine the two halves
  end generate;

  gen_base : if N = 1 generate
    IsOdd <= X(0);  -- base case
  end generate;
end architecture;
