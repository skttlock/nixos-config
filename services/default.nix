# services.nix - list the services you want to enable
# imported by configuration.nix
_: {
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
		printing.enable = true;
	};
	
}
