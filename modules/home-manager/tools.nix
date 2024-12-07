{ pkgs, ... }:

{
  home.packages = with pkgs; [
    wl-clipboard
    killall
    networkmanagerapplet
    unzip
    poweralertd
    dconf
    openssl

    # Dev related
    gccgo14
    rustup
    python3
    dotnetCorePackages.sdk_7_0
    bun
    direnv
    prisma
  ];
}