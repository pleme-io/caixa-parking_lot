# nix/modules/nixos.nix — auto-generated from parking_lot.caixa.lisp
# description: "More compact and efficient implementations of the standard synchronization primitives."
{ config, lib, pkgs, ... }:
let
  cfg = config.services.parking_lot;
in {
  options.services.parking_lot = {
    enable = lib.mkEnableOption "parking_lot";
    package = lib.mkOption {
      type = lib.types.package;
      default = pkgs.parking_lot or null;
    };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
