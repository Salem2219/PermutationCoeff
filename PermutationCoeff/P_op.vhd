library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity P_op is
    port (i, n : in std_logic_vector(3 downto 0);
    P : in std_logic_vector(31 downto 0);
    y : out std_logic_vector(31 downto 0));
end P_op;

architecture rtl of P_op is
component sub is
    port (a, b : in std_logic_vector(3 downto 0);
    y : out std_logic_vector(3 downto 0));
end component;
component multi is
    port (a : in std_logic_vector(3 downto 0);
    b : in std_logic_vector(31 downto 0);
    y : out std_logic_vector(31 downto 0));
end component;
signal nminusi : std_logic_vector(3 downto 0);
begin
    u1 : sub port map (n, i, nminusi);
    u2 : multi port map (nminusi, P, y);
end rtl;