;;; init.el --- Init file
;;; Commentary:
;;; It's my dang init file.

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;;; Local Variables:
;;; byte-compile-warnings: (not free-vars)
;;; End:

;;; Code:
(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")
(require 'package)

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))

(setq package-enable-at-startup nil)
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (tsdh-light)))
 '(package-selected-packages
   (quote
    (exec-path-from-shell flycheck evil-org evil-org-mode evil-mode use-package evil-visual-mark-mode))))

(if (file-exists-p "~/.emacs.d/prefs.el")
 (load-file "~/.emacs.d/prefs.el"))
(if (file-exists-p "~/.emacs.d/prefs.local.el")
 (load-file "~/.emacs.d/prefs.local.el"))
;;; init.el ends here
