{ pkgs, config, ... }: {
  home.stateVersion = "23.11";
  
  imports = [ ./services/ssh.nix ];

  wayland.windowManager.sway = {
    enable = true;
    config = {
      modifier = "Mod4"; # Win key
      terminal = "alacritty";
      menu = "rofi -show drun";
      bars = [{ command = "waybar"; }];
      keybindings = let
        modifier = config.wayland.windowManager.sway.config.modifier;
      in pkgs.lib.mkOptionDefault {
        "${modifier}+d" = "exec rofi -show drun";
      };
    };
  };
}
