{
  description = "NvChad flake";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/23.11";
  };

  outputs = { nixpkgs, ... }:
    let
      forAllSystems = function:
        nixpkgs.lib.genAttrs [ "x86_64-linux" "aarch64-linux" "x86_64-darwin" "aarch64-darwin" ] (system: function nixpkgs.legacyPackages.${system});
    in
    {
      devShells = forAllSystems (pkgs: {
        default = pkgs.mkShell {
          packages = with pkgs; [
            neovim
          ];

          shellHook = ''
            mv ~/.config/nvim ~/.config/nvim.backup
            ln -s $(pwd) ~/.config/nvim
            mv ~/.local/share/nvim ~/.local/share/nvim.backup
          '';
        };
      });

      homeManagerModules = {
        default = import ./default.nix;
      };
    };
}
