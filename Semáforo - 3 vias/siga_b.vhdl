entity siga_b is
    port(
        RA: in bit;
        RB: in bit;
        RC: in bit;
        S: out bit
    );
end entity;
architecture comp of siga_b is

begin
    S <= ((not RA) and RB);
end architecture;
