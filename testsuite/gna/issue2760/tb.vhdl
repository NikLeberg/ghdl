entity tb is
end tb;

architecture behav of tb is
  function get_nxt_int(a : integer) return integer;
  attribute foreign of get_nxt_int: function is "GHDL ./getnxtint.so get_nxt_int";

  function get_nxt_int(a : integer) return integer is
  begin
    assert false severity failure;
  end get_nxt_int;
begin
  assert get_nxt_int( 0) =  1;
  assert get_nxt_int(41) = 42;
  assert get_nxt_int(-1) =  0;
end behav;
