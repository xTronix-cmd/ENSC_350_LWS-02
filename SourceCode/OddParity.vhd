library ieee;
use ieee.std_logic_1164.all;

entity OddParity is
  generic ( N : natural := 8 );
  port (
    X     : in  std_logic_vector(N-1 downto 0);
    IsOdd : out std_logic
  );
end entity;

architecture CHAIN of OddParity is
  -- running XOR “prefix” wire: s(0) is 0, s(i+1) = s(i) xor X(i)
  signal s : std_logic_vector(N downto 0);
begin
  s(0) <= '0';

  g_chain : for i in 0 to N-1 generate
    gate_i : entity work.XOR2(rtl)
      port map ( A => s(i), B => X(i), Y => s(i+1) );
  end generate;

  IsOdd <= s(N);
end architecture;
