entity semaforo_tb is
end entity;

architecture testbench of semaforo_tb is
    component pare_a  is
        port(
            RA: in bit;
            RB: in bit;
            RC: in bit;
            S: out bit
        );
        end component;
        
    component pare_b  is
        port(
            RA: in bit;
            RB: in bit;
            RC: in bit;
            S: out bit
        );
        end component;
        
    component pare_c  is
        port(
            RA: in bit;
            RB: in bit;
            RC: in bit;
            S: out bit
        );
        end component;
                
    component siga_a  is
        port(
            RA: in bit;
            RB: in bit;
            RC: in bit;
            S: out bit
        );
        end component;
                        
    component siga_b  is
        port(
            RA: in bit;
            RB: in bit;
            RC: in bit;
            S: out bit
        );
        end component;
                        
    component siga_c  is
        port(
            RA: in bit;
            RB: in bit;
            RC: in bit;
            S: out bit
        );
        end component;
        
        
        
    signal sA, sB, sC, sPA, sSA, sPB, sSB, sPC, sSC: bit;
 
begin
    
    u_pare_a : pare_a port map(sA, sB, sC, sPA);
    
    u_pare_b : pare_b port map(sA, sB, sC, sPB);
    
    u_pare_c : pare_c port map(sA, sB, sC, sPC);
    
    u_siga_a : siga_a port map(sA, sB, sC, sSA);
        
    u_siga_b : siga_b port map(sA, sB, sC, sSB);
        
    u_siga_c : siga_c port map(sA, sB, sC, sSC);
    
    u_tb : process
        begin
            sA <= '0';
            sB <= '0';
            sC <= '0';
            wait for 10 ns;
            
            sA <= '0';
            sB <= '0';
            sC <= '1';
            wait for 10 ns;
            
            sA <= '0';
            sB <= '1';
            sC <= '0';
            wait for 10 ns;
            
            sA <= '0';
            sB <= '1';
            sC <= '1';
            wait for 10 ns;
            
            sA <= '1';
            sB <= '0';
            sC <= '0';
            wait for 10 ns;
            
            sA <= '1';
            sB <= '0';
            sC <= '1';
            wait for 10 ns;
            
            sA <= '1';
            sB <= '1';
            sC <= '0';
            wait for 10 ns;
            
            sA <= '1';
            sB <= '1';
            sC <= '1';
            wait for 10 ns;
           
            wait;
        end process;
end architecture;
