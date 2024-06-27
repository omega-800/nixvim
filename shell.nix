{ pkgs }:

pkgs.mkShell {
  buildInputs = with pkgs; [ jq ripgrep nodejs ];

  shellHook = # bash
    ''
          export PATH="$PWD/node_modules/.bin/:$PATH"
          PS1='\n\[\033[7;49;36m\]\u\[\033[0;40;36m\]\[\033[0;40;36m\] \w\[\033[0;49;30m\]\[\033[m\]\n\[\033[7;49;33m\]\h\[\033[0;40;33m\]\[\033[0;40;33m\] \j\[\033[0;43;30m\]\[\033[7;49;33m\] \s\[\033[0;40;33m\]\[\033[0;40;33m\] \!\[\033[0;49;30m\]\[\033[5;49;33m\]\$\[\033[m\] '

          alias run='npm run'
          alias vim='nvim'
          alias vi='nvim'
    '';

}
