(setq inhibit-splash-screen t)
(tool-bar-mode -1)
(global-display-line-numbers-mode)
(evil-mode t)

;; Org-mode

(setq org-todo-keywords
      '((sequence "TODO(t)" "|" "DONE(d)")
	(sequence "ASSIGNED(a)" "IMPLEMENTING(i)" "REVIEW(r)" "QA(q)" "DEPLOY(y)" "|" "COMPLETE(c)")
	(sequence "WAITING(w)" "|" "CANCELLED(n)")))

(setq org-agenda-files (list "~/org/work.org"
                             "~/org/home.org"))

