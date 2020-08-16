;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq doom-font (font-spec :family "Source Code Pro" :size 14 :weight 'semi-bold))
(setq display-line-numbers-type t)
(setq doom-theme 'doom-one-light)

(setq user-full-name "Brendon O'Laney"
      user-mail-address "brendon.olaney@clio.com")

(setq org-directory "~/Org/")
(after! org
  (setq org-todo-keywords
    '((sequence "TODO(t)" "ASSIGNED(a)" "IMPLEMENTING(i)" "REVIEW(r)" "QA(q)" "DEPLOY(y)" "WAITING(w)" "|" "DONE(d)" "CANCELLED(n)")))
  (setq org-agenda-files (list "~/Org/"))
  (setq org-ditaa-jar-path "/usr/local/Cellar/ditaa/0.11.0/libexec/ditaa-0.11.0-standalone.jar"))

(map! :localleader
      :prefix "t"
      :map (rspec-verifiable-mode-map rspec-dired-mode-map rspec-mode-map)
      "y" #'rspec-yank-last-command)

(after! flycheck
  (setq-default flycheck-disabled-checkers '(scss)))

(use-package! prettier-js
  :hook
  (css-mode . prettier-js-mode)
  (html-mode . prettier-js-mode)
  (web-mode . prettier-js-mode)
  :config
  (setq prettier-js-show-errors 'buffer))

