(setq inhibit-splash-screen t)
(tool-bar-mode -1)
(global-display-line-numbers-mode)
(when (member "Source Code Pro" (font-family-list))
  (set-frame-font "Source Code Pro-14:demibold" t t))

;; Packages


(use-package exec-path-from-shell
  :ensure t
  :init
  (when (memq window-system '(mac ns x))
    (setq exec-path-from-shell-arguments (list "-l"))
    (exec-path-from-shell-initialize)))

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
  '((sequence "TODO(t)" "|" "DONE(d)")))

(setq org-agenda-files (list "~/Org/work.org"
                             "~/Org/home.org"))
(setq org-default-notes-file "~/Org/inbox.org")

(global-set-key (kbd "C-c c") 'org-capture)

