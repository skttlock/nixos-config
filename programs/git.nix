# git.nix
# imported by ../programs/default.nix
_: {
	programs.git = {
		enable = true;
		
		config = {
			init = {
				defaultBranch = "main";
			};
			user = {
				email = "joshua-codes@protonmail.com";
				name = "Joshua Foreman";
			};
		};
	};
}
