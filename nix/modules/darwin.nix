# nix/modules/darwin.nix — auto-generated from parking_lot.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.services.parking_lot; in {
  options.services.parking_lot = {
    enable = lib.mkEnableOption "parking_lot";
    package = lib.mkOption { type = lib.types.package; default = pkgs.parking_lot or null; };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
