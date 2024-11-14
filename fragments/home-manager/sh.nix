{ config, pkgs, lib, ...  }:

{
 programs.kitty = {
    enable = true;

    settings = {
        confirm_os_window_close = 0;
        enable_audio_bell = "no";
        macos_option_as_alt = "left";
    };
       
    shellIntegration = {
      mode = "enabled";
      enableFishIntegration = true;
    };
        
    font = {
      name = "JetBrainsMono";
      size = 12;
    };

    extraConfig = ''
      shell fish
    '';
  };

  programs.fish = {
    enable = true;
    
    interactiveShellInit = ''
        abbr -a !! --position anywhere --function last_history_item
      '';
    
    shellAliases = {
      ls = "${lib.getExe pkgs.eza} --color=auto --icons=auto --hyperlink";
      cat = "${lib.getExe pkgs.bat}";
    };
    
    shellAbbrs = {
      ll = "ls -lhaF";
      tree = "ls -T";
    };

    functions = {
      fish_greeting = "";
    };  
  };

  programs.starship = {
    enable = true;
    enableFishIntegration = true;
  };
}
