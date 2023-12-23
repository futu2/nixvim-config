{
  luaLoader.enable = true;
  globals.mapleader = " ";
  clipboard.providers.wl-copy.enable = true;
  colorschemes.tokyonight.enable = true;
  options = {
    number = true;
    smartindent = true;
    tabstop = 2;
    shiftwidth = 2;
    expandtab = true;
  };
  plugins = import ./plugin.nix;
}
