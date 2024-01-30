entity pare_c is
    port(
        RA: in bit;
        RB: in bit;
        RC: in bit;
        S: out bit
    );
end entity;
architecture comp of pare_c is

begin
    S <= (not RC) or RB;
end architecture;
