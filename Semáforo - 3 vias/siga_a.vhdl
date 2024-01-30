entity siga_a is
    port(
        RA: in bit;
        RB: in bit;
        RC: in bit;
        S: out bit
    );
end entity;
architecture comp of siga_a is

begin
    S <= (((not RB) and (not RC)) or (RB and RA));
end architecture;
