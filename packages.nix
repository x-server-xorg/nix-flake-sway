# packages.nix
{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    sway waybar rofi alacritty firefox nemo gthumb git fastfetch
  ];
  programs.sway.enable = true;
}
