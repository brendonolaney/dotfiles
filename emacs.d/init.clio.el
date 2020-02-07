;;; init.clio.el --- Init file
;;; Commentary:
;;; It's my dang init file.

;;; Local Variables:
;;; byte-compile-warnings: (not free-vars)
;;; End:

;;; Code:

(setq org-todo-keywords
  '((sequence "TODO(t)" "ASSIGNED(a)" "IMPLEMENTING(i)" "REVIEW(r)" "QA(q)" "DEPLOY(y)" "WAITING(w)" "|" "DONE(d)" "CANCELLED(n)")))
(setq org-agenda-files (list "~/Org/work.org"))
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
  "tm" '(rspec-verify-method :which-key "test method")
  "tf" '(rspec-verify-matching :which-key "test file")
  "tl" '(rspec-rerun :which-key "test last")
  "gs" '(magit-status :which-key "git status")
  "gb" '(magit-branch :which-key "git branch")
))
;;; init.clio.el ends here
