{ pkgs }:

(import ./feature.nix { inherit pkgs; }) // {
  environment.systemPackages = with pkgs; [
    rnix-lsp
  ];
}
