library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity TFF_tb is
end entity;

architecture tb of TFF_tb is
component T_FLIPFLOP_SOURCE is
Port ( T,CLK : in STD_LOGIC;
Q,Qn : out STD_LOGIC);
end component;

signal T,CLK,Q,Qn : STD_LOGIC;

begin
uut: T_FLIPFLOP_SOURCE port map(
T => T,
CLK => CLK,

Q => Q,
Qn => Qn);

clock : process
begin

CLK <= '0';
wait for 10 ns;
CLK <= '1';
wait for 10 ns;

end process;

stim: process
begin

T <= '0';
wait for 25 ns;

T <= '1';
wait for 20 ns;

end process;
end tb;
