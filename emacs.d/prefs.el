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
(scroll-bar-mode -1)
(load-theme 'leuven)
(global-display-line-numbers-mode)
(setq-default indent-tabs-mode nil)
(when (member "Source Code Pro" (font-family-list))
  (set-frame-font "Source Code Pro-14:demibold" t t))
(add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))
(add-to-list 'default-frame-alist '(ns-appearance . light))

(setq make-backup-files nil)

;; Org-mode:

(setq org-export-backends (quote (ascii html icalendar latex md odt)))
(setq org-default-notes-file "~/Org/inbox.org")
(global-set-key (kbd "C-c c") 'org-capture)

;;; prefs.el ends here
