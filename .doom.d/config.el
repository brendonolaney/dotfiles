;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Editor Configuration
(setq doom-font (font-spec :family "Source Code Pro" :size 14 :weight 'semi-bold)
      display-line-numbers-type t
      doom-theme 'doom-flatwhite
      user-full-name "Brendon O'Laney"
      user-mail-address "brendon.olaney@clio.com"
      )

;; Ruby Setup
(map! :localleader
      :prefix "t"
      :map (rspec-verifiable-mode-map rspec-dired-mode-map rspec-mode-map)
      "y" #'rspec-yank-last-command
      )

;; Org Setup
(after! org
  (setq org-directory "~/.org/"
        org-agenda-files (list "~/.org/")
        org-ditaa-jar-path "/usr/local/Cellar/ditaa/0.11.0/libexec/ditaa-0.11.0-standalone.jar"
        )
  )

;; SCSS Setup
(after! flycheck
  (setq-default flycheck-disabled-checkers '(scss))
  )
(use-package! prettier-js
  :hook
  (css-mode . prettier-js-mode)
  (html-mode . prettier-js-mode)
  (web-mode . prettier-js-mode)
  :config
  (setq prettier-js-show-errors 'buffer))

;; EMMS setup
(use-package! emms
  :config
  (require 'emms-setup)
  (emms-all)
  (emms-default-players)
  (setq emms-source-file-default-directory "~/Music/Music")
  (map! :leader
        :desc "emms" :nv "`" #'emms
        )
  (map! :leader
        :prefix "e"
        :desc "emms next" :nv "j" #'emms-next
        :desc "emms previous" :nv "k" #'emms-previous
        :desc "emms pause" :nv "x" #'emms-pause
        :desc "emms pause" :nv "d" #'emms-play-directory
        )
  )
