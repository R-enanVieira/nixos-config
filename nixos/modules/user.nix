{ pkgs, ... }:
{
	users = {
		users.renan = {
    			isNormalUser = true;
    			description = "Renan Vieira";
    			extraGroups = [ "networkmanager" "wheel" "audio" "video" "docker" ];
    			packages = with pkgs; [];
		};
	};
}

