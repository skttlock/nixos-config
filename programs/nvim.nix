# nvim.nix
# imported by ../programs/default.nix
_: {
	programs.neovim = {
		enable = true;
		vimAlias = true;
		viAlias = true;
		# configure = {};
	};
}
