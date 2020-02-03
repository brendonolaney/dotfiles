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
;;; init.clio.el ends here
