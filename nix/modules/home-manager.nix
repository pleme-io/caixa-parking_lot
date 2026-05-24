# nix/modules/home-manager.nix — auto-generated from parking_lot.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.parking_lot; in {
  options.programs.parking_lot = {
    enable = lib.mkEnableOption "parking_lot";
    package = lib.mkOption { type = lib.types.package; default = pkgs.parking_lot or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
