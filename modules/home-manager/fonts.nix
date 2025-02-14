{ pkgs, ... }:

{
  home.packages = with pkgs; [
    noto-fonts
    noto-fonts-emoji
    (nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
    (nerdfonts.override { fonts = [ "CascadiaCode" ]; })
    font-awesome
    merriweather
    inter
  ];

  fonts.fontconfig = {
    enable = true;
    defaultFonts = {
      serif = [ "Noto Sans" "Merriweather" ];
      sansSerif = [ "Inter" ];
      monospace = [ "JetBrainsMonoNerdFont-Regular" ];
      emoji = [ "Noto Color Emoji" ];
    };
  };
}
