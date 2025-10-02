library ieee;
use ieee.std_logic_1164.all;

entity XOR2 is
  port (
    A : in  std_logic;
    B : in  std_logic;
    Y : out std_logic
  );
end entity;

architecture rtl of XOR2 is
begin
  -- uses IEEE xor on std_logic
  Y <= A xor B;
end architecture;
