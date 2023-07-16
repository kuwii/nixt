{ pkgs }:

(import ../build-feature.nix {
  init-lua = builtins.readFile ./init.lua;
}) // {
  nixtension.config.packages = with pkgs; [
    rnix-lsp
  ];
}
