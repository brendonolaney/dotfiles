;;; packages.el --- Packages File
;;; Commentary:
;;; Ensure packages are installed and configured

;;; Local Variables:
;;; byte-compile-warnings: (not free-vars unresolved)
;;; End:

;;; Code:

;; This is needed to make MELPA work properly and can probably be removed at some point.
(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")

;; Enable built in package management.
(require 'package)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))
(setq package-enable-at-startup nil)
(package-initialize)

;; Auto install and configure third party packages.

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)

;; The actual packages
;;
;; Stuff to look at soon:
;; evil-collection
;; find out what that thing that shows you all your potential completions is
;; shell config
;;
;; Stuff that I can be minimally productive without:
;; magit
;; rspec runner for clio or better yet a test runner framework
;;
;; This sets emacs environment from .zshenv on MacOS
(use-package exec-path-from-shell
  :ensure t
  :init
  (when (memq window-system '(mac ns x))
    (setq exec-path-from-shell-arguments (list "-l"))
    (exec-path-from-shell-initialize)))

;; Vim emulation
(use-package evil
  :ensure t
  :config
  (evil-mode t))

;; Vim emulation for org-mode
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

;; Syntax checking
(use-package flycheck
  :ensure t
  :init (global-flycheck-mode))

;; Project management (mostly for grepping and file location)
(use-package projectile
  :ensure t
  :config
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
  (projectile-mode +1))

;;; packages.el ends here
