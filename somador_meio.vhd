
library ieee;
use ieee.std_logic_1164.all;

entity somadorMeio is
  port(A, B: in std_logic; soma, carry: out std_logic);
end entity somadorMeio;

architecture logic of somadorMeio is
  begin
    soma <= A xor B;
    carry <= A and B;
end architecture;