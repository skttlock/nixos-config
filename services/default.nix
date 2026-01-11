# services.nix - list the services you want to enable
# imported by configuration.nix
{ pkgs, ...}: {
	imports = [
		./audio.nix
		# ./xserver.nix
        ./syncthing.nix
	];
	
	services = {
		xserver = {
			enable = true;
			xkb = {
				layout = "us";
				variant = "";
			};
		};
		#libinput.enable = true; # Enable touchpad support (enabled default in most desktopManager).
		displayManager.gdm.enable = true;
		desktopManager.gnome.enable = true;
		flatpak.enable = true;
		printing = {
            enable = true;
            drivers = [ pkgs.hplip ];
        };
        avahi = { # service discovery system
            enable = true;
            nssmdns4 = true;
            openFirewall = true;
        };
	};
	
}
