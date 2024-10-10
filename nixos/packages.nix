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
		gparted
		obs-studio
		rofi
		wofi
		dolphin
		mpv
		alacritty
    		vscode
    		whatsapp-for-linux
    		telegram-desktop
    		discord
    		spotify
    		obsidian
		qastools
		pavucontrol
    		bitwarden-desktop

		# Coding stuff
		gnumake
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
		ranger
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

		# WM's stuff
		herbstluftwm
		hyprland
		hyprlock
		swaynotificationcenter
		seatd
		xdg-desktop-portal-hyprland
		polybar
		waybar

		# Sound
		pipewire
		pulseaudio

		# GPU stuff
		mesa

		#Other
		home-manager
		libsForQt5.qtstyleplugin-kvantum
    		libsForQt5.qt5ct	
		linuxHeaders
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

