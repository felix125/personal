;;; init-ec.el --- display settings for emacsclient
;;; Commentary:
;;; Code:

;; Transparency
(set-frame-parameter (selected-frame) 'alpha '(100 50))
(add-to-list 'default-frame-alist '(alpha 100 50))

;; Chinese Font
;; (set-face-attribute 'default nil :font "Ubuntu Mono-14")
(set-face-attribute 'default nil :font "Inconsolata-14")

(dolist (charset '(kana han symbol cjk-misc bopomofo))
  (set-fontset-font (frame-parameter nil 'font)
                    charset
                    (font-spec :family "WenQuanYi Micro Hei Mono" :size 20)))


(provide 'init-ec)
;;; init-ec.el ends here
