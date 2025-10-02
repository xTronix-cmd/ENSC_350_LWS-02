library ieee;
use ieee.std_logic_1164.all;

architecture CHAIN of OddParity is
  signal s : std_logic_vector(N downto 0);
begin
  s(0) <= '0';

  g_chain : for i in 0 to N-1 generate
    -- use XOR2 primitive OR the built-in xor; both are fine
    -- instantiate:
    -- gate_i : entity work.XOR2(rtl) port map (A => s(i), B => X(i), Y => s(i+1));
    -- or simpler operator:
    s(i+1) <= s(i) xor X(i);
  end generate;

  IsOdd <= s(N);
end architecture CHAIN;
