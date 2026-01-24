# imported by ../configuration.nix ...?
{ pkgs, ... } : {
	imports = [
        ./bash.nix
		./tmux.nix
		./nvim.nix
		./ssh.nix
		./git.nix

        ./starship.nix              # installs and configures starship, a better shell prompt
	];

	# List packages installed in system profile. To search, run:
	# $ nix search wget
    environment.systemPackages = with pkgs; [
		vim
		lsd
		bat
        ranger
		# wget
        gh

        gh
        typst

        vlc

        libreoffice

        godot
        blender
        krita
        gimp
        inkscape
        kdePackages.kdenlive

		calibre
		picard
	];

	# Some programs need SUID wrappers, can be configured further or are
	# started in user sessions.
	# programs.mtr.enable = true;
	# programs.gnupg.agent = {
	#   enable = true;
	#   enableSSHSupport = true;
	# };

    programs.steam = {
        enable = true;
        remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
            dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
            localNetworkGameTransfers.openFirewall = true; # Open ports in the firewall for Steam Local Network Game Transfers
    };

}
