{ pkgs, ... }:
{
	users = {
		users.renan = {
    			isNormalUser = true;
    			description = "Renan Vieira";
    			extraGroups = [ "networkmanager" "wheel" ];
    			packages = with pkgs; [];
		};
	};
}

