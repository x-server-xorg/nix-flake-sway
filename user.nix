# user.nix
{ pkgs, ... }: {
  users.users.valance78 = {
    isNormalUser = true;
    extraGroups = [ "wheel" "video" "audio" ];
    initialPassword = "nix"; # Смени после входа
  };

  # Автозапуск Sway через greetd
  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "${pkgs.greetd.tuigreet}/bin/tuigreet --time --cmd sway";
        user = "valance78";
      };
    };
  };
}
