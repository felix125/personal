;;; init-org.el --- settings
;;; Org-mode
;;; Code:

(add-to-list 'load-path "~/.emacs.d/personal/org-mode/lisp")
(add-to-list 'load-path "~/.emacs.d/personal/org-mode/contrib/lisp" t)
(add-to-list 'auto-mode-alist '("\\.\\(org\\|org_archive\\|txt\\)$" . org-mode))
;; Find the Org documentation
(setq Info-default-directory-list (cons "/home/felix/.emacs.d/personal/org-mode/doc" Info-default-directory-list))

;;
;; Standard key bindings
(define-key global-map "\C-cc" 'org-capture)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(define-key global-map "\C-cb" 'org-iswitchb)

(setq org-todo-keywords
      (quote ((sequence "TODO(t)" "STARTED(s!/@!)" "|" "DONE(d!/!)")
              (sequence "WAITING(w@/!)" "HOLD(h@/!)" "|" "CANCELLED(c@/!)" "PHONE"))))

(setq org-todo-keyword-faces
      (quote (("TODO" :foreground "red" :weight bold)
              ("STARTED" :foreground "yellow" :weight bold)
              ("DONE" :foreground "forest green" :weight bold)
              ("WAITING" :foreground "orange" :weight bold)
              ("HOLD" :foreground "magenta" :weight bold)
              ("CANCELLED" :foreground "forest green" :weight bold)
              ("PHONE" :foreground "forest green" :weight bold))))



; Tags with fast selection keys
(setq org-tag-alist (quote (("office" . ?o)
                            ("home" . ?h)
			    ("private" . ?p))))


; Allow setting single tags without the menu
(setq org-fast-tag-selection-single-key (quote expert))

; For tag searches ignore tasks with scheduled and deadline dates
(setq org-agenda-tags-todo-honor-ignore-options t)



;; Save the running clock and all clock history when exiting Emacs, load it on startup
(setq org-clock-persistence-insinuate t)
(setq org-clock-persist t)
(setq org-clock-in-resume t)

;; Change task state to STARTED when clocking in
(setq org-clock-in-switch-to-state "STARTED")
;; Save clock data and notes in the LOGBOOK drawer
(setq org-clock-into-drawer t)
;; Removes clocked tasks with 0:00 duration
(setq org-clock-out-remove-zero-time-clocks t)


;;
;; mobileorg
(setq org-mobile-directory "~/Dropbox/MobileOrg")


;; ditaa path
(setq org-ditaa-jar-path "/usr/share/java/ditaa/ditaa-0_9.jar")
(setq org-plantuml-jar-path "/opt/plantuml/plantuml.jar")

(add-hook 'org-babel-after-execute-hook 'bh/display-inline-images 'append)

;; Make babel results blocks lowercase
(setq org-babel-results-keyword "results")

(defun bh/display-inline-images ()
  (condition-case nil
      (org-display-inline-images)
    (error nil)))

;; babel languages
;; active Babel languages
(org-babel-do-load-languages
 'org-babel-load-languages
 '((ruby . t)
   (perl . t)
   (gnuplot . t)
   (sh . t)
   (sqlite . t)
   (R . t)
   (ditaa . t)
   (plantuml . t)
   (dot . t)
   (sql . t)
   ))

;; Use fundamental mode when editing plantuml blocks with C-c '
(add-to-list 'org-src-lang-modes (quote ("plantuml" . fundamental)))

(provide 'init-org)
;;; init-org.el ends here
