;; init-ruby-tools.el --- settings
;;; Commentary:
;;; Code:
(prelude-require-package 'ruby-tools)

(defvar ruby-tools-mode-map
  (let ((map (make-sparse-keymap)))
    (define-key map (kbd "C-x '") 'ruby-tools-to-single-quote-string)
    (define-key map (kbd "C-x \"") 'ruby-tools-to-double-quote-string)
    (define-key map (kbd "C-x :") 'ruby-tools-to-symbol)
    (define-key map (kbd "C-x ;") 'ruby-tools-clear-string)
    (define-key map (kbd "#") 'ruby-tools-interpolate)
    map)
  "Keymap for `ruby-tools-mode'.")

(provide 'init-ruby-tools)
;;; init-ruby-tools.el ends here
