{
	programs.hyprlock = {
		enable = true;

		settings = {
			general = {
				disable_loading_bar = false;
				grace = 0;
				hide_cursor = true;
				no_fade_in = false;
			};

			background = [
				{
					monitor = "";
					path = "${../../../Wallpapers/otherWallpaper/gruvbox/forest.jpg}";
					blur_passes = 1;
					contrast = 0.8916;
					brightness = 0.8172;
					vibrancy = 0.1696;
					vibrancy_darkness = 0.0;
				}
			];

			label =	[
				#Time
				{
					monitor = ""; 
					text = ''cmd[update:1000] echo "$(date +"%k:%M")"'';
					color = "rgba(235, 219, 178, .9)";
					font_size = 111;
					font_family = "JetBrainsMono NF Bold";
					position = "0, 180";
					halign = "center";
					valign = "center";
				}

				# Day
				{
					monitor = "";
					text = ''cmd[update:1000] echo "- $(date +"%A, %B %d") -"'';
					color = "rgba(235, 219, 178, .9)";
					font_size = 20;
					font_family = "JetBrainsMono NF Bold";
					position = "0, 120";
					halign = "center";
					valign = "center";
				}

				# USER
				{
					monitor = "";
					text = "  $USER";
					color = "rgba(235, 219, 178, .9)";
					font_size = 16;
					font_family = "JetBrainsMono NF Bold";
					position = "0, -230";
					halign = "center";
					valign = "center";
				}
			];

			# USER-BOX
			shape = [
				{
					monitor = "";
					size = "350, 50";
					color = "rgba(225, 225, 225, .2)";
					rounding = 15;
					border_size = 0;
					border_color = "rgba(255, 255, 255, 0)";
					rotate = 0;

					position = "0, -230";
					halign = "center";
					valign = "center";
				}

				
			];

			input-field = [
				{
					size = "350, 50";
					rounding = 15;
					position = "0, -300";
					monitor = "";
					dots_center = true;
					dots_size = 0.25;
					dots_spacing = 0.4;
					fade_on_empty = false;
					font_color = "rgba(235, 219, 178, .9)";
					inner_color = "rgba(225, 225, 225, 0.2)";
					outer_color = "rgba(255, 255, 255, 0)";
					outline_thickness = 0;
					placeholder_text = ''<i><span foreground="##ebdbb2e5">Enter Password...</span></i>'';
					hide_input = false;
					shadow_passes = 2;
					halign = "center";
      					valign = "center";

				}
			];
		};
	};
}
