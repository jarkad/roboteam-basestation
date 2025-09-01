{ pkgs, ... }:

let
  python = pkgs.python3.withPackages (ps: [
    ps.numpy
    ps.protobuf
    ps.pynput
    ps.pyserial
    ps.pyzmq
  ]);
in

{

  packages = [
    python
  ];
}
