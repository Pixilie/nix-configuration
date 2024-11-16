{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;
    userName = "Kristen Couty";
    userEmail = "kristen.couty@gmail.com";

    extraConfig = {
      push.autoSetupRemote = true;
      pull.rebase = true;
    };
  };

  programs.gh.enable = true;

}