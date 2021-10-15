library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.All;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity hello_world is
    Port ( clk_i        : in STD_LOGIC;
           led_blink    : out STD_LOGIC);
end hello_world;

architecture Behavioral of hello_world is

signal counter          : std_logic_vector(31 downto 0):= (others => '0');
signal led              : std_logic := '0';

begin
    process(clk_i)
        begin
        
            if rising_edge(clk_i)then
                counter <= counter + 1;
                
                if(counter > 12000000)then
                    led     <= not led;
                    counter <= (others => '0');
                end if;
                
            end if;
            led_blink <= led;
            
            
        end process;
     
end Behavioral;
