
library IEEE;
use IEEE.std_logic_1164.all;


entity seg7 is port 
(
  SW  : in std_logic_vector (3 downto 0);
  HEX  : out std_logic_vector (6 downto 0)
  
);

end seg7;

architecture logic of seg7 is
signal A,B,C,D : std_logic;

  begin
    A <= SW(3);
    B <= SW(2);
    C <= SW(1);
    D <= SW(0);

    HEX(0) <= (C or A or (B and D) or ((not B) and (not D)));
    HEX(1) <= ((not B) or ((not C) and (not D)) or (C and D));
    HEX(2) <= ((not C) or D or B);
    HEX(3) <= (A or (C and (not D)) or ((not B) and C) or ((not B) and (not D)) or (B and (not C) and D));
    HEX(4) <= ((C and (not D)) or ((not B) and (not D)));
    HEX(5) <= (A or ((not C) and (not D)) or (B and (not C)) or (B and (not D)));
    HEX(6) <= (A or (C and (not D)) or (B and (not C)) or ((not B) and C));
    
end logic;