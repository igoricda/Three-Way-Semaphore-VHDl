entity pare_a is
    port(
        RA: in bit;
        RB: in bit;
        RC: in bit;
        S: out bit
    );
end entity;
architecture comp of pare_a is

begin
    S <= ((not RB) and RC) or (RB and (not RA));
end architecture;
