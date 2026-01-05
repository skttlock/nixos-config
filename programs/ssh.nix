# ssh.nix - client config
# imported by ../programs/default.nix
_: {
	programs.ssh = {
		extraConfig = "
			Host homebox
				Hostname 192.168.7.248
				Port 22
				user homebox
		";
	};
}
