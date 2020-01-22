;;; init.el --- Init file
;;; Commentary:
;;; It's my dang init file.

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (tsdh-light)))
 '(package-selected-packages
   (quote
    (which-key magit evil-magit evil-collection projectile use-package flycheck exec-path-from-shell evil-visual-mark-mode evil-org))))
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

(if (file-exists-p "~/.emacs.d/prefs.el")
 (load-file "~/.emacs.d/prefs.el"))
(if (file-exists-p "~/.emacs.d/packages.el")
 (load-file "~/.emacs.d/packages.el"))
(if (file-exists-p "~/.emacs.d/prefs.local.el")
 (load-file "~/.emacs.d/prefs.local.el"))

;;; init.el ends here
