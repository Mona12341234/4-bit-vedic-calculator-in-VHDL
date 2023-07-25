
-- Carry save adder 16x16
library ieee;
use ieee.std_logic_1164.all;
entity cas is
port(A,B,C: in std_logic_vector(15 downto 0);
Sum: out std_logic_vector(16 downto 0):= "00000000000000000";
Carry: out std_logic);
end cas;
architecture arch_csa of cas is
component FA
port(A,B,Cin: in std_logic;
sum,Carry: out std_logic);
end component;
signal X,Y : std_logic_vector(15 downto 0);
signal Z : std_logic_vector(15 downto 1);
begin
-- Carry save adder block
FA0: FA port map(A(0),B(0),C(0),Sum(0),X(0));
FA1: FA port map(A(1),B(1),C(1),Y(0),X(1));
FA2: FA port map(A(2),B(2),C(2),Y(1),X(2));
FA3: FA port map(A(3),B(3),C(3),Y(2),X(3));
FA4: FA port map(A(4),B(4),C(4),Y(3),X(4));
FA5: FA port map(A(5),B(5),C(5),Y(4),X(5));
FA6: FA port map(A(6),B(6),C(6),Y(5),X(6));
FA7: FA port map(A(7),B(7),C(7),Y(6),X(7));
FA8: FA port map(A(8),B(8),C(8),Y(7),X(8));
FA9: FA port map(A(9),B(9),C(9),Y(8),X(9));
FA10: FA port map(A(10),B(10),C(10),Y(9),X(10));
FA11: FA port map(A(11),B(11),C(11),Y(10),X(11));
FA12: FA port map(A(12),B(12),C(12),Y(11),X(12));
FA13: FA port map(A(13),B(13),C(13),Y(12),X(13));
FA14: FA port map(A(14),B(14),C(14),Y(13),X(14));
FA15: FA port map(A(15),B(15),C(15),Y(14),X(15));
-- Ripple Adder block
FAr0: FA port map(X(0),Y(0),'0',Sum(1),Z(1));
FAr1: FA port map(X(1),Y(1),Z(1),Sum(2),Z(2));
FAr2: FA port map(X(2),Y(2),Z(2),Sum(3),Z(3));
FAr3: FA port map(X(3),Y(3),Z(3),Sum(4),Z(4));
FAr4: FA port map(X(4),Y(4),Z(4),Sum(5),Z(5));
FAr5: FA port map(X(5),Y(5),Z(5),Sum(6),Z(6));
FAr6: FA port map(X(6),Y(6),Z(6),Sum(7),Z(7));
FAr7: FA port map(X(7),Y(7),Z(7),Sum(8),Z(8));
FAr8: FA port map(X(8),Y(8),Z(8),Sum(9),Z(9));
FAr9: FA port map(X(9),Y(9),Z(9),Sum(10),Z(10));
FAr10: FA port map(X(10),Y(10),Z(10),Sum(11),Z(11));
FAr11: FA port map(X(11),Y(11),Z(11),Sum(12),Z(12));
FAr12: FA port map(X(12),Y(12),Z(12),Sum(13),Z(13));
FAr13: FA port map(X(13),Y(13),Z(13),Sum(14),Z(14));
FAr14: FA port map(X(14),Y(14),Z(14),Sum(15),Z(15));
FAr15: FA port map(X(15),'0',Z(15),Sum(16),Carry);
end arch_csa;