{config, ...}:
{
	programs.zsh = {
		enable = true;
		enableCompletion = true;
		autosuggestion.enable = true;
		syntaxHighlighting.enable = true;

		shellAliases =
		let
			flakePath = "~/nix";
		in {
			rb = "sudo nixos-rebuild switch --flake ${flakePath}";
			upd = "nix flake update ${flakePath}";
			upg = "sudo nixos-rebuild switch --upgrade --flake ${flakePath}";
			
			hms = "home-manager switch --flake ${flakePath}";

			conf = "nvim ${flakePath}/nixos/configuration.nix";
			pkgs = "nvim ${flakePath}/nixos/packages.nix";
		};

		history.size = 10000;
		history.path = "${config.xdg.dataHome}/zsh/history";

		oh-my-zsh = {
			enable = true;
			plugins = [ "git" "sudo" ];
			theme = "agnoster";
		};
	};
}
