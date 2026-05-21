package pkg is
  type st_t is record
    valid : bit;
    ready : bit;
  end record;

  view st_source_v of st_t is
    valid : out;
    ready : in;
  end view;

  procedure st_pack(
    signal source : inout st_t;
    signal valid  : in bit;
    signal ready  : out bit
  );
end package;

package body pkg is
  procedure st_pack(
    signal source : inout st_t;
    signal valid  : in bit;
    signal ready  : out bit
  ) is
  begin
    source.valid <= valid;
    ready        <= source.ready;
  end procedure;
end package body;
