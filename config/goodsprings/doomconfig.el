(setq user-full-name "Brendon O'Laney"
      user-mail-address "brendon.olaney@protonmail.com")

(setq org-directory "~/Org/")

(after! org
  (setq org-agenda-files (list "~/Org/home.org" "~/Org/strata.org")))
(after! projectile
  (setq projectile-project-search-path '("~/src/")))

;; Quick way to open the calculator
(map! (:leader (:prefix "o" :desc "calc" :nv "c" #'calc)))


