{
	services.xserver = {
		enable = true;
		windowManager.herbstluftwm.enable = true;

		xkb.layout = "br";
		xkb.variant =  "nodeadkeys";

		libinput.enable = true;

		#videoDrivers = [ "nvidia" ];
		deviceSection = ''Option "TearFree" "True"'';
		displayManager.gdm.enable = true;
		desktopManager.gnome.enable = true;
	};
}
