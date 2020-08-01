;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Brendon O'Laney"
      user-mail-address "brendon.olaney@clio.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
(setq doom-font (font-spec :family "Source Code Pro" :size 14 :weight 'semi-bold))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-outrun-electric)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/Org/")
(after! org
  (setq org-todo-keywords
    '((sequence "TODO(t)" "ASSIGNED(a)" "IMPLEMENTING(i)" "REVIEW(r)" "QA(q)" "DEPLOY(y)" "WAITING(w)" "|" "DONE(d)" "CANCELLED(n)")))
  (setq org-agenda-files (list "~/Org/"))
  (setq org-ditaa-jar-path "/usr/local/Cellar/ditaa/0.11.0/libexec/ditaa-0.11.0-standalone.jar"))

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; Keymap to yank rspec command
(map! :localleader
      :prefix "t"
      :map (rspec-verifiable-mode-map rspec-dired-mode-map rspec-mode-map)
      "y" #'rspec-yank-last-command)

(after! flycheck
  (setq-default flycheck-disabled-checkers '(scss)))

;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c g k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c g d') to jump to their definition and see how
;; they are implemented.

(use-package! prettier-js
  :hook
  (css-mode . prettier-js-mode)
  (html-mode . prettier-js-mode)
  (web-mode . prettier-js-mode)
  :config
  (setq prettier-js-show-errors 'buffer))