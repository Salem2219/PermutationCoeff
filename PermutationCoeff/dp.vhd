library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity dp is
    port(clk, rst, ld, sel : in std_logic;
    n, k : in std_logic_vector(3 downto 0);
    x : out std_logic;
    y : out std_logic_vector(31 downto 0));
end dp;

architecture rtl of dp is
component comp is
    port (
    a, b : in std_logic_vector(3 downto 0);
    y : out std_logic);
end component;
component P_op is
    port (i, n : in std_logic_vector(3 downto 0);
    P : in std_logic_vector(31 downto 0);
    y : out std_logic_vector(31 downto 0));
end component;
component mux4 is
    port (s : in std_logic;
    a, b : in std_logic_vector(3 downto 0);
    y : out std_logic_vector(3 downto 0));
end component;
component mux32 is
    port (s : in std_logic;
    a, b : in std_logic_vector(31 downto 0);
    y : out std_logic_vector(31 downto 0));
end component;
component reg4 is
port (clk, rst, en: in std_logic;
reg_in: in std_logic_vector(3 downto 0);
reg_out: out std_logic_vector(3 downto 0));
end component;
component reg32 is
port (clk, rst, en: in std_logic;
reg_in: in std_logic_vector(31 downto 0);
reg_out: out std_logic_vector(31 downto 0));
end component;
component plus1 is
    port (a : in std_logic_vector(3 downto 0);
    y : out std_logic_vector(3 downto 0));
end component;
signal P_mult, P_in, P : std_logic_vector(31 downto 0);
signal i, i_in, iplus1 : std_logic_vector(3 downto 0);
begin
    P_reg : reg32 port map (clk, rst, ld, P_in, P);
    P_mux : mux32 port map (sel, "00000000000000000000000000000001", P_mult, P_in);
    P_operation : P_op port map (i, n, P, P_mult);
    i_reg : reg4 port map (clk, rst, ld, i_in, i);
    i_mux : mux4 port map (sel, "0000", iplus1, i_in);
    i_operation : plus1 port map (i, iplus1);
    ik_comp : comp port map(i, k, x);
    y <= P;
end rtl;