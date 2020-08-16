(setq user-full-name "Brendon O'Laney"
      user-mail-address "brendon.olaney@protonmail.com")

(setq org-directory "~/Org/")

(after! org
  (setq org-agenda-files (list "~/Org/home.org" "~/Org/strata.org")))
(after! projectile
  (setq projectile-project-search-path '("~/src/")))

;; Quick way to open the calculator and elfeed
(map! (:leader (:prefix "o" :desc "calc" :nv "c" #'calc)))
(map! (:leader (:prefix "o" :desc "elfeed" :nv "e" #'elfeed)))

;; Email configuration
(setq mu4e-maildir "~/.mail"
  mu4e-attachment-dir "~/Downloads"
  mu4e-sent-folder "/Sent"
  mu4e-drafts-folder "/Drafts"
  mu4e-trash-folder "/Trash"
  mu4e-refile-folder "/Archive")

(setq user-mail-address "brendon.olaney@protonmail.com"
  user-full-name  "Brendon O'Laney")

(setq mu4e-get-mail-command "mbsync protonmail"
  mu4e-change-filenames-when-moving t
  mu4e-update-interval 120)

(setq message-send-mail-function 'smtpmail-send-it
  smtpmail-auth-credentials "~/.authinfo.gpg"
  smtpmail-smtp-server "127.0.0.1"
  smtpmail-smtp-service 1025)

(add-to-list 'gnutls-trustfiles (expand-file-name "~/Library/ApplicationSupport/protonmail/bridge/cert.pem"))
