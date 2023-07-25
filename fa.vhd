
-- Full adder using logic gates
--dataflow
library ieee;
use ieee.std_logic_1164.all;
entity fa is
port(A,B,Cin: in std_logic;
Sum,Carry: out std_logic);
end fa;
architecture dataflow of fa is
begin
Sum <= ((A xor B) xor Cin);
Carry <= ((A and B) or (B and Cin) or (Cin and A));
end dataflow;
