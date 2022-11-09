
library ieee;
use ieee.std_logic_1164.all;

entity add3 is
  port(A0, A1, A2, A3: in std_logic; S0, S1, S2, S3: out std_logic);
end add3;

architecture logic of add3 is
   begin
    S3 <= A3 or (A2 and (A1 or A0));
    S2 <= (A3 and A0) or (A2 and not A1 and not A0);
    S1 <= (not A2 and A1) or (A1 and A0) or (A3 and not A0);
    S0 <= (not A0 and (A3 or (A2 and A1))) or ((not A2) and A0 and (not A3));
end logic;

