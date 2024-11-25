{ pkgs, upkgs, ... }:

{
  imports = [
    ../../modules/home-manager/git.nix
    ../../modules/home-manager/helix.nix
    ../../modules/home-manager/sway.nix
    ../../modules/home-manager/sh.nix
    ../../modules/home-manager/mako.nix
    ../../modules/home-manager/fonts.nix
    ../../modules/nixos/unfree.nix
  ];

  # General informations
  home.username = "kristen";
  home.homeDirectory = "/home/kristen";
  home.stateVersion = "24.05";

  # Packages
  home.packages = with pkgs; [
    firefox
    vesktop
    thunderbird
    tidal-hifi
    bitwarden-desktop
    skypeforlinux
    prismlauncher
    gnome.nautilus
    masterpdfeditor

    # Ocaml config
    dune_3
    ocaml
    ocamlPackages.ocaml-lsp
    ocamlPackages.utop
    ocamlPackages.ocamlformat
    ocamlPackages.junit
    ocamlPackages.junit_alcotest
    ocamlPackages.zarith

    jetbrains-toolbox
    upkgs.unityhub
    gccgo14
    rustup
    python3
    dotnetCorePackages.sdk_7_0

    # Window manager
    wlroots
    sway
    wayland
    swaylock-effects
    swayidle
    swaybg
    xwayland
  ];

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
