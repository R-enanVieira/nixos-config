{ config, pkgs, ...}: {
	home = {
		username = "renan";
		homeDirectory = "/home/renan";
		stateVersion = "24.05";
	};

	imports = [
		./bash.nix
	];

	programs.neovim = {
		enable = true;
		defaultEditor = true;
		plugins = with pkgs.vimPlugins; [
			gruvbox-material
			nerdtree
		];
	};
}

