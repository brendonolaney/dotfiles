;;; init.clio.el --- Init file
;;; Commentary:
;;; It's my dang init file.

;;; Local Variables:
;;; byte-compile-warnings: (not free-vars)
;;; End:

;;; Code:

(setq org-todo-keywords
  '((sequence "TODO(t)" "|" "DONE(d)")))
(setq org-agenda-files (list "~/Org/home.org"))
(setq org-default-notes-file "~/Org/inbox.org")

;; Custom keybinding
(use-package general
  :ensure t
  :config (general-define-key
  :states '(normal visual insert emacs)
  :prefix "SPC"
  :non-normal-prefix "M-SPC"
  "o" '(counsel-find-file :which-key "open file")
  "f" '(counsel-projectile :which-key "find file in project")
  "s" '(counsel-ag :which-key "search files")
  "n" '(ansi-term :which-key "terminal")
  "gs" '(magit-status :which-key "git status")
  "gb" '(magit-branch :which-key "git branch")
))

;;; init.goodsprings.el ends here
