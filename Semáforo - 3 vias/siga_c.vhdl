entity siga_c is
    port(
        RA: in bit;
        RB: in bit;
        RC: in bit;
        S: out bit
    );
end entity;
architecture comp of siga_c is

begin
    S <= ((not RB) and RC);
end architecture;
