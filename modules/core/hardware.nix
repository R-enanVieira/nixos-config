{
  pkgs,
  config,
  ...
}: {
  hardware = {
    nvidia = {
      open = true;
      package = config.boot.kernelPackages.nvidiaPackages.stable;
      prime = {
        sync.enable = true;
        intelBusId = "PCI:0:2:0";
        nvidiaBusId = "PCI:1:0:0";
      };
    };
    graphics = {
      enable = true;
      extraPackages = with pkgs; [
        intel-media-driver
        (vaapiIntel.override {enableHybridCodec = true;})
        vaapiVdpau
        libvdpau-va-gl
      ];
    };
  };

  hardware.enableRedistributableFirmware = true;
}
