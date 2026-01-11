# imported by ../configuration.nix ...?
{ pkgs, ... } : {
	imports = [
        ./bash.nix
		./tmux.nix
		./nvim.nix
		./ssh.nix
		./git.nix
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

        typst

        vlc

        libreoffice

        inkscape

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
}
