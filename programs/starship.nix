# starship.nix
# imported by ./default.nix

_: {
    programs.starship = {
        enable = true;
        presets = [
            # "catppuccin-powerline"
            # "jetpack"
        ];
        settings = {
        };
    };
}
