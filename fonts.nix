# fonts.nix
# imported by ./configuration.nix
{ pkgs, ... }: {
    fonts.packages = with pkgs; [
        nerd-fonts.monofur
        cantarell-fonts
    ];
}
