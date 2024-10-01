{pkgs, ...}: 
{
	nixpkgs.config = {
		allowUnfree = true;
		permittedInsecurePackages = [ "python-2.7.18.8" "electron-25.9.0" ];
	};

	environment.systemPackages = with pkgs; [
		# Desktop apps
		chromium
    		postman
		obs-studio
		mpv
    		vscode
    		whatsapp-for-linux
    		telegram-desktop
    		discord
    		spotify
    		obsidian
    		bitwarden-desktop

		# Coding stuff
		gcc
		docker
		nodejs
		python
		(python3.withPackages (ps: with ps; [ requests ]))

		# CLI
 		neofetch
		tree
		wget
		nix-index
		unzip
    		btop
		git
		github-cli
		vim
		neovim
		mediainfo
		cava #audio visualizer
		zip
		yt-dlp
		brightnessctl
		swww #animated wallpaper daemon for wayland
		lazygit
		bluez #official linux bluetooth protocol
		bluez-tools
		
		# Wayland stuff
		xwayland
		wl-clipboard
		cliphist

		# Sound
		pipewire
		pulseaudio

		# GPU stuff
		mesa

		#Other
		home-manager
	];

	fonts.packages = with pkgs; [
    		jetbrains-mono
    		noto-fonts
		noto-fonts-emoji
		twemoji-color-font
		font-awesome
		powerline-fonts
		powerline-symbols
		(nerdfonts.override { fonts = [ "NerdFontsSymbolsOnly" ]; })
  	];
}

