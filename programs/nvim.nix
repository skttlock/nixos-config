# nvim.nix
# imported by ../programs/default.nix
_: {
	programs.neovim = {
		enable = true;
		defaultEditor = true;
		vimAlias = true;
		viAlias = true;
		configure = {
			customRC = ''
				set foldmethod=indent
                set foldlevelstart=99
                
				set number

                set autoindent
				set expandtab
				set shiftwidth=4
				set tabstop=4

				set ignorecase
				set smartcase
				set incsearch
				set hlsearch

                set hidden
				
                set mouse=n
			'';
		};
	};
}
