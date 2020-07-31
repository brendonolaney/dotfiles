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

    envExtra = ''
      if [ -f ~/.nix-profile/etc/profile.d/nix.sh ]; then
        source ~/.nix-profile/etc/profile.d/nix.sh
      fi

      if [ -f ~/.nix-profile/etc/profile.d/hm-session-vars.sh ]; then
        source ~/.nix-profile/etc/profile.d/hm-session-vars.sh
      fi
    '';

    plugins = [
      {
        name = "zsh-async";
        src = pkgs.fetchFromGitHub {
          owner = "mafredri";
          repo = "zsh-async";
          rev = "490167c4aa5a870b3da1458859bcf3a9d1e24f97";
          sha256 = "1vlr8fkk3k4cz3sxz3qmlkfsqxw251igbn9raz3lga4p213m98jb";
        };
      }
      {
        name = "pure";
        src = pkgs.fetchFromGitHub {
          owner = "sindresorhus";
          repo = "pure";
          rev = "c42bd354943ba4cf2da3ecf493fca4fef0b2722c";
          sha256 = "1h04z7rxmca75sxdfjgmiyf1b5z2byfn6k4srls211l0wnva2r5y";
        };
      }
    ];
  };

  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
  };
  
  programs.tmux = {
    enable = true;
    baseIndex = 1;
    clock24 = true;
    customPaneNavigationAndResize = true;
    escapeTime = 0;
    historyLimit = 50000;
    keyMode = "vi";
    sensibleOnTop = true;
    shortcut = "s";
    terminal = "screen-256color";
    extraConfig = ''
      set-option -g pane-base-index 1
      set-option -g mouse on
      bind-key -T copy-mode-vi 'v' send -X begin-selection
      bind-key -T copy-mode-vi 'V' send -X select-line
      bind-key -T copy-mode-vi 'r' send -X rectangle-toggle
      bind-key -T copy-mode-vi 'y' send -X copy-pipe-and-cancel "pbcopy"
      bind-key -T copy-mode-vi 'Enter' send -X copy-pipe-and-cancel "pbcopy"
      bind-key -T copy-mode-vi 'MouseDragEnd1Pane' send -X copy-pipe-and-cancel "pbcopy"
      bind-key -T prefix ] run "pbpaste | tmux load-buffer - && tmux paste-buffer"
      bind-key -n MouseDown2Pane run "pbpaste | tmux load-buffer - && tmux paste-buffer"
      bind-key -T root MouseDown1Status select-window -t =
      bind-key -T root MouseDown2Status kill-window -t =
      bind-key -T root DoubleClick1Status new-window
    '';
  };
}
