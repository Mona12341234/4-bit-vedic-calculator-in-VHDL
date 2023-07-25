library ieee;
use ieee.std_logic_1164.all; 
entity calculator is
port(A,B : in std_logic_vector(3 downto 0);
Q : out std_logic_vector(7 downto 0);
sel,OP:in std_logic);
end calculator;
architecture arch of calculator is
component mux2to1
 port ( s : in std_logic;
      A,B  : in std_logic_vector(7 downto 0);
         f : out std_logic_vector(7 downto 0));
	  end component;
component fa4
port( OP: in std_logic;
          A,B  : in std_logic_vector(3 downto 0);
          R  : out std_logic_vector(3 downto 0);
          Cout, OVERFLOW : out std_logic);
			 end component;
component mul4
 port(A,B : in std_logic_vector(3 downto 0);
Q : out std_logic_vector(7 downto 0));
end component;
signal Si: std_logic_vector(3 downto 0):="0000";
signal add,mul: std_logic_vector(7 downto 0):="00000000";
signal buf1,buf2: std_logic;
begin
u1: fa4 port map(OP,A,B,si,buf1,buf2);
add(7 downto 6)<= "00";
add(5)<=buf2;
add(4)<=buf1;
add(3 downto 0)<=si;
u2:mul4 port map(A,B,mul);
u3: mux2to1 port map(sel,add,mul,Q);
end arch;
