library ieee;
use ieee.std_logic_1164.all;

entity OddParity is
  generic ( N : natural := 7 );
  port (
    X     : in  std_logic_vector(N-1 downto 0);
    IsOdd : out std_logic
  );
end entity OddParity;


