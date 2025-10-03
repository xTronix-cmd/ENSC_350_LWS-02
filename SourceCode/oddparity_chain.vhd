library ieee;
use ieee.std_logic_1164.all;

architecture CHAIN of OddParity is
  signal s : std_logic_vector(N downto 1);
begin
  -- first XOR uses X(0) and X(1)
  first_gate : entity work.XOR2(rtl)
    port map (
      A => X(0),
      B => X(1),
      Y => s(1)
    );

  -- rest of the chain from bit 2 onward
  g_chain : for i in 2 to N-1 generate
    gate_i : entity work.XOR2(rtl)
      port map (
        A => s(i-1),
        B => X(i),
        Y => s(i)
      );
  end generate;

  IsOdd <= s(N-1);
end architecture CHAIN;

