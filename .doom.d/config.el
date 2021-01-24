;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Some Global Bindings
(map! :leader
      :prefix "o"
      :desc "calc" :nv "c" #'calc
      :desc "elfeed" :nv "e" #'elfeed
      :desc "md4rd" :nv "M" #'md4rd
      :desc "twitter" :nv "w" #'twit
      )

;; Editor Configuration
(setq doom-font (font-spec :family "Source Code Pro" :size 14 :weight 'semi-bold)
      display-line-numbers-type t
      doom-theme 'doom-flatwhite
      )
(add-hook 'window-setup-hook 'toggle-frame-maximized t)

(setq user-full-name "Brendon O'Laney"
      user-mail-address "brendon@brendonolaney.com")

;; Projectile Configuration
(after! projectile
  (setq projectile-project-search-path
        '("~/src/")
        )
  )

;; Org Configuration
(setq org-directory "~/.org/")
(after! org
  (setq org-agenda-files
        (list "~/.org/home.org")
        )
  )

;; Email configuration
(setq mu4e-maildir "~/.mail"
      mu4e-attachment-dir "~/Downloads"
      mu4e-sent-folder "/Sent"
      mu4e-drafts-folder "/Drafts"
      mu4e-trash-folder "/Trash"
      mu4e-refile-folder "/Archive"
      user-mail-address "brendon@brendonolaney.com"
      user-full-name  "Brendon O'Laney"
      mu4e-get-mail-command "mbsync -a"
      mu4e-change-filenames-when-moving t
      mu4e-update-interval 120
      message-send-mail-function 'smtpmail-send-it
      smtpmail-auth-credentials "~/.authinfo.gpg"
      smtpmail-smtp-server "127.0.0.1"
      smtpmail-smtp-service 1025
      )
(setenv "GPG_AGENT_INFO" nil)
(after! mu4e
  (add-to-list 'gnutls-trustfiles
               (expand-file-name "~/Library/ApplicationSupport/protonmail/bridge/cert.pem")
               )
  )

;; Twitter Configuration
(setq twittering-icon-mode t
      twittering-connection-type-order
      '(wget curl urllib-http native urllib-https)
      )

;; Reddit Configuration
(setq md4rd-subs-active
      '(all news canada vancouver onguardforthee)
      )
(after! md4rd
  (map! :mode md4rd-mode
        :desc "next" :nv "j" #'widget-forward
        :desc "previous" :nv "k" #'widget-backward
        :desc "back to subs" :nv "x" #'md4rd-jump-to-subs
        :desc "view thread" :nv "v" #'md4rd-visit
        )
  )

;; EMMS Configuration
(after! emms
  (require 'emms-setup)
  (emms-all)
  (emms-default-players)
  (setq emms-source-file-default-directory "~/Music/Music")
  (map! :leader
        :prefix "e"
        :desc "emms next" :nv "j" #'emms-next
        :desc "emms previous" :nv "k" #'emms-previous
        :desc "emms pause" :nv "x" #'emms-pause
        :desc "emms pause" :nv "d" #'emms-play-directory
        :desc "emms" :nv "`" #'emms
        )
  )
