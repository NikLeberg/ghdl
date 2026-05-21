use work.pkg.all;

entity ent is
  port (
    source : view st_source_v of st_t;
    valid  : in bit;
    ready  : out bit
  );
begin end;

architecture behav of ent is
begin
  st_pack(source, valid, ready);
end architecture;
