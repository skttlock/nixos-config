# git.nix
# imported by ../programs/default.nix
_: {
	programs.git = {
		enable = true;
		
		config = {
			init = {
				defaultBranch = "main";
			};
		};
	};
}
