# storage.nix - describes and auto mounts my storage partition
# imported by configuration.nix
# note that changing/rebuild switching into this is prone to cause headache and you may boot into emergency mode.
_: {
    fileSystems."Library" =  {
        # enable = true;
        device = "/dev/disk/by-uuid/66e87371-7ed1-4f48-b374-28248ea09945";
        mountPoint = "/run/media/joshuaf/Library";
        fsType = "ext4";
        options = [
            "x-gvfs-show" # make disk appear in Files app
        ];
    };

    systemd.tmpfiles.rules = [
        # symlink 
        "L+ /home/joshuaf/Library - - - - /run/media/joshuaf/Library"
        "L+ /home/joshuaf/nixos-config - - - - /run/media/joshuaf/Library/System/nixos-config"
    ];
}
