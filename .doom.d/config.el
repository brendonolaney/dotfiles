;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq doom-font (font-spec :family "Source Code Pro" :size 14 :weight 'semi-bold))
(setq display-line-numbers-type t)
(setq doom-theme 'doom-flatwhite)

(setq user-full-name "Brendon O'Laney"
      user-mail-address "brendon.olaney@clio.com")

(setq org-directory "~/.org/")
(after! org
  (setq org-todo-keywords
        '((sequence "TODO(t)" "ASSIGNED(a)" "IMPLEMENTING(i)" "REVIEW(r)" "QA(q)" "DEPLOY(y)" "WAITING(w)" "|" "DONE(d)" "CANCELLED(n)")
          (sequence "[ ](T)" "|" "[X](D)")))
  (setq org-agenda-files (list "~/.org/" "~/.org/sprints/"))
  (setq org-ditaa-jar-path "/usr/local/Cellar/ditaa/0.11.0/libexec/ditaa-0.11.0-standalone.jar"))

(map! :localleader
      :prefix "t"
      :map (rspec-verifiable-mode-map rspec-dired-mode-map rspec-mode-map)
      "y" #'rspec-yank-last-command)

(after! flycheck
  (setq-default flycheck-disabled-checkers '(scss)))

(use-package! emms
  :config
  (require 'emms-setup)
  (emms-all)
  (emms-default-players)
  (setq emms-source-file-default-directory "~/Music/Music")
  (map! (:leader (:prefix "e" :desc "emms next" :nv "j" #'emms-next)))
  (map! (:leader (:prefix "e" :desc "emms previous" :nv "k" #'emms-previous)))
  (map! (:leader (:prefix "e" :desc "emms pause" :nv "x" #'emms-pause)))
  (map! (:leader (:prefix "e" :desc "emms pause" :nv "d" #'emms-play-directory)))
  (map! (:leader (:desc "emms" :nv "`" #'emms))))

(use-package! prettier-js
  :hook
  (css-mode . prettier-js-mode)
  (html-mode . prettier-js-mode)
  (web-mode . prettier-js-mode)
  :config
  (setq prettier-js-show-errors 'buffer))

