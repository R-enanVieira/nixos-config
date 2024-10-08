{
	description = "My system configurantion";

	inputs = { 
		nixpkgs.url = "github:nixos/nixpkgs/nixos-24.05";
		
		home-manager = {
			url = "github:nix-community/home-manager/release-24.05";
			inputs.nixpkgs.follows = "nixpkgs";
		};

		nixvim = {
			url = "github:nix-community/nixvim";
			inputs.nixpkgs.follows = "nixpkgs";
		};
	};

	outputs = { self, nixpkgs, home-manager, ... }@inputs: 

		let 
			system = "x86_64-linux";
		in {
			nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
				specialArgs = {
					inherit inputs system;
				};
				modules = [ 
					./nixos/configuration.nix 
					inputs.nixvim.nixosModules.nixvim
				]; 
			};

			homeConfigurations.renan = home-manager.lib.homeManagerConfiguration {
				pkgs  = nixpkgs.legacyPackages.${system};
				modules = [ ./home-manager/home.nix ];
			};
		};
}
