{ lib, ... }:
with lib; {
  imports = [ ./lsp ./git ./style ./utils ./cmp ./opts ./autocmd ];
    defaultEditor = true;
    enableMan = true;
    viAlias = true;
    vimAlias = true;
    editorconfig.enable = true;
    clipboard.register = "unnamedplus";
    extraConfigVim = ''
      syntax on
      hi Normal guibg=NONE ctermfg=None ctermbg=DarkGreen
      hi Cursor guibg=NONE ctermfg=None ctermbg=DarkGreen
      hi CursorColumn guibg=NONE ctermfg=None ctermbg=Black
      hi CursorLine guibg=NONE ctermfg=None ctermbg=Black
      hi ColorColumn ctermbg=235 guibg=#262626
      filetype on
      filetype plugin on
      filetype indent on
    '';
    globals = {
      mapleader = " ";
      maplocalleader = " ";
    };
    autoCmd = [
      # Open help in a vertical split
      {
        event = "FileType";
        pattern = "help";
        command = "wincmd L";
      }

      # Enable spellcheck for some filetypes
      {
        event = "FileType";
        pattern = [ "markdown" ];
        command = "setlocal spell spelllang=en,de";
      }
    ];
  };
}
