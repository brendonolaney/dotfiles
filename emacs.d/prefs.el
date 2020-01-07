(setq inhibit-splash-screen t)
(tool-bar-mode -1)
(global-display-line-numbers-mode)
(when (member "Menlo" (font-family-list)) (set-frame-font "Menlo-20" t t))

;; Packages

(use-package evil
  :ensure t
  :config
  (evil-mode t))

(use-package evil-org
  :ensure t
  :after org
  :config
  (add-hook 'org-mode-hook 'evil-org-mode)
  (add-hook 'evil-org-mode-hook
            (lambda ()
              (evil-org-set-key-theme)))
  (require 'evil-org-agenda)
  (evil-org-agenda-set-keys))

(use-package flycheck
  :ensure t
  :init (global-flycheck-mode))

;; Org-mode

(setq org-todo-keywords
  '((sequence "TODO(t)" "|" "DONE(d)")
    (sequence "ASSIGNED(a)" "IMPLEMENTING(i)" "REVIEW(r)" "QA(q)" "DEPLOY(y)" "|" "DONE(d)")
    (sequence "WAITING(w@)" "|" "CANCELLED(n@/!)")))

(setq org-agenda-files (list "~/Org/work.org"
                             "~/Org/home.org"))
(setq org-default-notes-file "~/Org/inbox.org")

(global-set-key (kbd "C-c c") 'org-capture)

