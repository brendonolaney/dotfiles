;;; init.el --- Init file
;;; Commentary:
;;; It's my dang init file.

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (evil-indent-plus evil-indent-textobject company company-mode evil-surround rspec-mode general counsel-projectile counsel ivy which-key magit evil-magit evil-collection projectile use-package flycheck exec-path-from-shell evil-visual-mark-mode evil-org))))
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
(if (file-exists-p "~/.emacs.d/init.local.el")
 (load-file "~/.emacs.d/init.local.el"))

;;; init.el ends here
