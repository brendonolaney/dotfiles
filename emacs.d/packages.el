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

;; This sets emacs environment from .zshenv on MacOS
(use-package exec-path-from-shell
  :ensure t
  :init
  (when (memq window-system '(mac ns x))
    (setq exec-path-from-shell-arguments (list "-l"))
    (exec-path-from-shell-initialize)))

;; Project management (mostly for grepping and file location)
(use-package projectile
  :ensure t
  :config
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
  (projectile-mode +1))

(use-package magit
  :ensure t)

;; Syntax checking
(use-package flycheck
  :ensure t
  :init (global-flycheck-mode))

;; Show you keybinds for emacs chording
(use-package which-key
  :ensure t
  :init
  (which-key-mode))

;; These three let me search for stuff in my project more better
(use-package ivy
  :ensure t
  :config
  (ivy-mode 1))

(use-package counsel
  :ensure t
  :after ivy)

(use-package counsel-projectile
  :ensure t
  :after counsel)

(use-package swiper
  :ensure t
  :after counsel)

;; Vim emulation
(use-package evil
  :ensure t
  :init
  ;; use evil-collection to handle this.
  (setq evil-want-integration t)
  (setq evil-want-keybinding nil)
  :config
  (evil-mode t))

;; Vim emulation for modes not covered in the main package
(use-package evil-collection
  :after evil
  :ensure t
  :config
  (evil-collection-init))

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

;; Vim emulation for magit
(use-package evil-magit
  :ensure t
  :after magit evil)

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

;;; packages.el ends here
