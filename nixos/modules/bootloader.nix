{pkgs, ...}:
{
	boot.loader.systemd-boot.enable = true;
	boot.loader.efi.canTouchEfiVariables = true;
  	boot.kernelPackages = pkgs.linuxPackages_latest;
  	boot.kernelPatches = [
    		{
      			name = "uvc_driver_patch";
      			patch = /home/renan/uvc.patch;
    		}
  	];
}
