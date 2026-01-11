# syncthing.nix
# imported by ./default.nix
_: {
    services.syncthing = {
        enable = true;
        user = "joshuaf";
        group = "users";
        dataDir = "/run/media/joshuaf/Library/Media";
        configDir = "/home/joshuaf/.config/syncthing";
        overrideDevices = true;
        overrideFolders = true;

        settings = {
            devices = {
                # "laptop" = { id = "DEVICE-ID"; };
                "phone" = { id = "4FGMI76-GQB7EJJ-GMCGJDV-2TZFCVX-JDCNK2U-65VWG56-52VS4DT-XTYIJAS"; };
            };
            folders = {
                "Music" = {
                    path = "/run/media/joshuaf/Library/Media/Music";
                    devices = [ "phone" ];
                    type = "sendonly";
                };
            };
        };
    };
}
