library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mul_pipeline_tb is
end mul_pipeline_tb;

architecture Bench of mul_pipeline_tb is
    component mul_pipeline is
        Port (A : in STD_LOGIC_VECTOR (3 downto 0);
              B : in STD_LOGIC_VECTOR (3 downto 0);
              clk: in STD_LOGIC;
              p : out STD_LOGIC_VECTOR (7 downto 0));

    end component;
    
    signal clk: std_logic;
    signal A, B: std_logic_vector(3 downto 0);
    signal p: std_logic_vector(7 downto 0);
    
    
    constant period: time:=10ns;
    
    
begin
    uut: mul_pipeline
    port map(
       clk => clk,
       A => A,
       B => B,
       p => p);
  
   input_A: process
              begin        
                A <= "0000";
                wait for period*2;
                A <= "0001";
                wait for period*2;
                A <= "0010";
                wait for period*2;
                A <= "0011";
                wait for period*2;
                A <= "0100";
                wait for period*2;
                A <= "0101";
                wait for period*2;
                A <= "0110";
                wait for period*2;
                A <= "0111";
                wait for period*2;
                A <= "1000";
                wait for period*2;
                A <= "1001";
                wait for period*2;
                A <= "1010";
                wait for period*2;
                A <= "1011";
                wait for period*2;
                A <= "1100";
                wait for period*2;
                A <= "1101";
                wait for period*2;
                A <= "1110";
                wait for period*2;
                A <= "1111";
                wait for period*2;
              end process;
              
        input_B: process
            begin        
              B <= "0000";
              wait for period*4;
              B <= "0001";
              wait for period*4;
              B <= "0010";
              wait for period*4;
              B <= "0011";
              wait for period*4;
              B <= "0100";
              wait for period*4;
              B <= "0101";
              wait for period*4;
              B <= "0110";
              wait for period*4;
              B <= "0111";
              wait for period*4;
              B <= "1000";
              wait for period*4;
              B <= "1001";
              wait for period*4;
              B <= "1010";
              wait for period*4;
              B <= "1011";
              wait for period*4;
              B <= "1100";
              wait for period*4;
              B <= "1101";
              wait for period*4;
              B <= "1110";
              wait for period*4;
              B <= "1111";
              wait for period*4;
            end process;
          
      
          input_clk: process
               begin
                   clk <= '0';
                   wait for period*2;
                   clk <= '1';
                   wait for period*2;
                end process;

end Bench;
