{ pkgs, ... }: {
  imports = [ ./treesitter.nix ./none-ls.nix ./typescript.nix ];
  keymaps = [
    {
      mode = "n";
      key = "<leader>g";
      action = "+goto";
    }
    # Trouble 
    {
      mode = "n";
      key = "<leader>d";
      action = "+diagnostics/debug";
    }
    {
      key = "<leader>dt";
      action = "<CMD>TroubleToggle<CR>";
      options.desc = "Toggle trouble";
    }
    # lsp
    {
      mode = "n";
      key = "<leader>l";
      action = "+lsp";
    }
  ];
  plugins = {
    lsp = {
      enable = true;
      servers = {
        marksman.enable = true;
        typos-lsp.enable = true;
        nixd.enable = true;
        bashls.enable = true;

        eslint.enable = true;
        #tsserver.enable = true;
        volar.enable = true;
        #vuels.enable = true;
        jsonls.enable = true;
        cssls.enable = true;
        #tailwindcss.enable = true;
        html.enable = true;
        #htmx.enable = true;
        graphql.enable = true;
        dockerls.enable = true;
        docker-compose-language-service.enable = true;
        ansiblels.enable = true;
        yamlls.enable = true;
        sqls.enable = true;

        lua-ls.enable = true;
        pylsp.enable = true;
        clangd.enable = true;
        cmake.enable = true;
        #java-language-server.enable = true;
      };
      keymaps = {
        diagnostic = {
          "<leader>ln" = "goto_next";
          "<leader>lp" = "goto_prev";
        };
        lspBuf = {
          "K" = "hover";
          "gd" = "definition";
          "gD" = "references";
          "gt" = "type_definition";
          "gi" = "implementation";
        };
        extra = [
          {
            action = "<CMD>LspStop<Enter>";
            key = "<leader>lx";
          }
          {
            action = "<CMD>LspStart<Enter>";
            key = "<leader>ls";
          }
          {
            action = "<CMD>LspRestart<Enter>";
            key = "<leader>lr";
          }
        ];
      };
    };
    lsp-lines = {
      enable = true;
      currentLine = true;
    };
    lsp-format.enable = true;
    trouble.enable = true;
  };
}
