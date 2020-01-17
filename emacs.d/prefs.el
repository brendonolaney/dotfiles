;;; prefs.el --- Prefences File
;;; Commentary:
;;; Personal preferences and configuration.

;;; Local Variables:
;;; byte-compile-warnings: (not free-vars)
;;; End:

;;; Code:

;; Display:

(setq inhibit-splash-screen t)
(tool-bar-mode -1)
(global-display-line-numbers-mode)
(custom-set-variables
 '(custom-enabled-themes (quote (tsdh-light))))
(when (member "Source Code Pro" (font-family-list))
  (set-frame-font "Source Code Pro-14:demibold" t t))

;; Org-mode:

(setq org-todo-keywords
  '((sequence "TODO(t)" "|" "DONE(d)")))
(setq org-agenda-files (list "~/Org/work.org"
                             "~/Org/home.org"))
(setq org-default-notes-file "~/Org/inbox.org")
(global-set-key (kbd "C-c c") 'org-capture)

;;; prefs.el ends here
