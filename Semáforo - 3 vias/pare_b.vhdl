entity pare_b is
    port(
        RA: in bit;
        RB: in bit;
        RC: in bit;
        S: out bit
    );
end entity;
architecture comp of pare_b is

begin
    S <= (((not RA) and (not RB)) or RA);
end architecture;
