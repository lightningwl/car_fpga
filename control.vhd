library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity	control	is
	port(
		clk_50 	:		in	std_logic;
		papo     :     in std_logic;
		input 	:		in	std_logic_vector(3 downto 0);
		l :				out	std_logic_vector(1 downto 0);
		r :				out	std_logic_vector(1 downto 0);
		ref_L :			out	integer range 0 to 20 + 1 ;
		ref_R :			out	integer range 0 to 20 + 1 );
end	control;
architecture	beh	of	control	is
	type	state	is		(START,FORWARD,STOP,TURN_LEFT,TURN_RIGHT,TURN_LEFTW,TURN_RIGHTW);
	signal	PresentState:	state;
	signal	NextState:		state;	
begin
SwitchToNextState : process (clk_50,input,papo)
  begin
  if clk_50'event and clk_50='1' then
  case input is--白1 黑0 引脚4321 板子2134
    when "1111" =>
	 NextState <= FORWARD;
	 when "1010" =>
	 NextState <= FORWARD;
	 when "0000" =>
	 NextState <= STOP;
	 when "1110" =>
	 NextState <= TURN_LEFTW;
	 when "1101" =>
	 NextState <= TURN_LEFT;
	 when "1100" =>
	 NextState <= TURN_LEFT;
	 when "1000" =>
	 NextState <= TURN_LEFT;
	 when "1011" =>
	 NextState <= TURN_RIGHTW;
	 when "0111" =>
	 NextState <= TURN_RIGHT;
	 when "0011" =>
	 NextState <= TURN_RIGHT;
	 when "0010" =>
	 NextState <= TURN_RIGHT;
	 when others =>
	 NextState <= FORWARD;
	 end case;
  if papo = '0' then--平地模式
  case NextState is
  when FORWARD =>
  l <= "10";
  r <= "10";
  ref_l <= 6;
  ref_R <= 6;
  when STOP =>
  l <= "00";
  r <= "00";
  ref_l <= 0;
  ref_R <= 0;
  when TURN_LEFT =>
  l <= "10";
  r <= "01";
  ref_l <= 10;
  ref_R <= 10;
  when TURN_RIGHT =>
  l <= "01";
  r <= "10";
  ref_l <= 10;
  ref_R <= 10;
  when TURN_LEFTW =>
  l <= "10";
  r <= "00";
  ref_l <= 5;
  ref_R <= 10;
  when TURN_RIGHTW =>
  l <= "00";
  r <= "10";
  ref_l <= 10;
  ref_R <= 5;
  when others =>
  l <= "00";
  r <= "00";
  ref_l <= 0;
  ref_R <= 0;
  end case;
  else--爬坡模式
  case NextState is
  when FORWARD =>
  l <= "10";
  r <= "10";
  ref_l <= 15;
  ref_R <= 15;
  when STOP =>
  l <= "00";
  r <= "00";
  ref_l <= 0;
  ref_R <= 0;
  when TURN_LEFT =>
  l <= "10";
  r <= "01";
  ref_l <= 18;
  ref_R <= 15;
  when TURN_RIGHT =>
  l <= "01";
  r <= "10";
  ref_l <= 15;
  ref_R <= 18;
  when TURN_LEFTW =>
  l <= "10";
  r <= "00";
  ref_l <= 6;
  ref_R <= 11;
  when TURN_RIGHTW =>
  l <= "00";
  r <= "10";
  ref_l <= 11;
  ref_R <= 6;
  when others =>
  l <= "00";
  r <= "00";
  ref_l <= 0;
  ref_R <= 0;
  end case;
  end if;
  end if;
end process SwitchToNextState;
end beh;