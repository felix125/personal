;;; init.el --- settings
;;; Commentary:
;;; Code:

;; guru-mode
(setq guru-warn-only t)

;; color
(set-face-background 'region "#6F6F6F")

;; flyspell-mode
(setq prelude-flyspell nil)

;; guru-mode
(setq guru-warn-only t)
; (setq prelude-guru nil)

;; Maximized window
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; backward-kill-word
(global-set-key [M-delete] 'backward-kill-word)

;; mouse-yank
(setq mouse-yank-at-point t)
(setq x-select-enable-clipboard t)

;; dired omit files
(require 'dired-x)
(setq-default dired-omit-files-p t) ; this is buffer-local variable
(setq dired-omit-files
    (concat dired-omit-files "\\|^\\..+$"))

;;; ansi-color
(require 'ansi-color)

(defadvice display-message-or-buffer (before ansi-color activate)
  "Process ANSI color codes in shell output."
  (let ((buf (ad-get-arg 0)))
    (and (bufferp buf)
         (string= (buffer-name buf) "*Shell Command Output*")
         (with-current-buffer buf
           (ansi-color-apply-on-region (point-min) (point-max))))))

;; Default browder
(setq browse-url-browser-function 'browse-url-generic
          browse-url-generic-program "chromium")

;; Transparency
(set-frame-parameter (selected-frame) 'alpha '(100 50))
(add-to-list 'default-frame-alist '(alpha 100 50))

;; Chinese Font
(set-face-attribute 'default nil :font "Ubuntu Mono-14")

(dolist (charset '(kana han symbol cjk-misc bopomofo))
  (set-fontset-font (frame-parameter nil 'font)
                    charset
                    (font-spec :family "WenQuanYi Micro Hei Mono" :size 20)))


;;Server-start
(server-start)

(provide 'init)
;;; init.el ends here
