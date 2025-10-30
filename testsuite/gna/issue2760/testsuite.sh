#! /bin/sh

. ../../testenv.sh

if c_compiler_is_available; then
  if [ -z "$CC" ]; then
    CC="gcc"
  fi

  $CC -c -fPIC getnxtint.c
  $CC -o getnxtint.so --shared getnxtint.o

  analyze tb.vhdl
  elab_simulate tb

  rm -f getnxtint.o getnxtint.so
fi
clean

echo "Test successful"
