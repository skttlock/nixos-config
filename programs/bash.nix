# bash.nix
# imported by ../programs/default.nix
_: {
    programs.bash = {
        enable = true;
        shellAliases = {
            nrs = "nixos-rebuild switch -I nixos-config=/run/media/joshuaf/Library/System/nixos-config/configuration.nix --sudo";
            lst = "lsd --tree";
        };
    };
}
