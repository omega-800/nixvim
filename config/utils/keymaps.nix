{
  keymaps = [
    # Default
    {
      mode = "n";
      key = "<leader>q";
      action = "<cmd>confirm q<cr>";
      options.desc = "Quit window";
    }
    {
      mode = "n";
      key = "<leader>Q";
      action = "<cmd>confirm qall<cr>";
      options.desc = "Exit neovim";
    }
    {
      mode = "n";
      key = "<leader>n";
      action = "<cmd>enew<cr>";
      options.desc = "New file";
    }
    {
      action = "<cmd>silent! update! | redraw<cr>";
      options.desc = "Force write";
      mode = "n";
      key = "<c-s>";
    }
    {
      options.desc = "Force write";
      mode = [ "i" "x" ];
      key = "<c-s>";
      action = "<esc><cmd>silent! update! | redraw<cr>";
    }
    {
      mode = "n";
      key = "<c-q>";
      action = "<cmd>q!<cr>";
      options.desc = "Force quit";
    }
    {
      mode = "v";
      key = "<S-Tab>";
      action = "<gv";
      options.desc = "Unindent line";
    }
    {
      mode = "v";
      key = "<Tab>";
      action = ">gv";
      options.desc = "Indent line";
    }
    # Windows
    {
      mode = "n";
      key = "<C-Up>";
      action = "<Cmd>resize -1<CR>";
      options.desc = "Resize split up";
    }
    {
      mode = "n";
      key = "<C-Down>";
      action = "<Cmd>resize +1<CR>";
      options.desc = "Resize split down";
    }
    {
      mode = "n";
      key = "<C-Left>";
      action = "<Cmd>vertical resize -2<CR>";
      options.desc = "Resize split left";
    }
    {
      mode = "n";
      key = "<C-Right>";
      action = "<Cmd>vertical resize +2<CR>";
      options.desc = "Resize split right";
    }
    {
      mode = "n";
      key = "<leader>w";
      action = "+window";
    }
    {
      mode = "n";
      key = "<leader>wv";
      action = "vsplit";
      options.desc = "Vertical split";
    }
    {
      mode = "n";
      key = "<leader>wh";
      action = "split";
      options.desc = "Horizontal split";
    }
    # select
    {
      mode = "n";
      key = "<leader>a";
      action = "gg0vG$";
      options.desc = "Select all";
    }
    # moving line
    {
      mode = "v";
      key = "<a-k>";
      action = ":m '<lt>-2<CR>gv-gv";
    }
    {
      mode = "v";
      key = "<a-j>";
      action = ":m '>+1<CR>gv-gv";
    }
    {
      mode = "n";
      key = "<a-k>";
      action = "<Cmd>m .-2<CR>==";
    }
    {
      mode = "n";
      key = "<a-j>";
      action = "<Cmd>m .+1<CR>==";
    }
    {
      mode = "i";
      key = "<a-k>";
      action = "<esc>:m .-2<CR>==gi";
    }
    {
      mode = "i";
      key = "<a-j>";
      action = "<esc>:m .+1<CR>==gi";
    }
  ];
}
