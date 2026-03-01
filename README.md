# NixOS-Config
My NixOS configuration

```bash
#\\nstallation//
sudo cp /etc/nixos/hardware-configuration.nix
git add -f hardware-configuration.nix
sudo nix flake update
sudo nixos-rebuild --flake .#nix-sway```
