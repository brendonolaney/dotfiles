{ config, pkgs, ... }:
{
  programs.zsh = {
    enable = true;
    dotDir = ".config/zsh";
    history = {
      path = ".config/zsh/.zhistory";
      size = 50000;
      save = 50000;
    };
    defaultKeymap = "emacs";
    shellAliases = rec {
      cp = "cp -i";
      ll = "ls -lahF";
      mv = "mv -i";
      rm = "rm -i";
      vim = "nvim";
    };

    sessionVariables = rec {
      EDITOR = "nvim";
      VISUAL = EDITOR;
      GIT_EDITOR = EDITOR;

      PATH = "$HOME/bin:$HOME/.emacs.d/bin:/usr/local/bin:/usr/local/sbin:$PATH";
      ZSH_CACHE_DIR = "$HOME/.cache";
    };

    zplug = {
      enable = true;
      plugins = [
        {
          name = "mafredri/zsh-async";
          tags = [
            "from:github"
          ];
        }
        {
          name = "sindresorhus/pure";
          tags = [
            "use:pure.zsh"
            "from:github"
            "as:theme"
          ];
        }
      ];
    };
  };

  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
  };

}
