;;; init-yas.el --- settings
;;; Commentary:
;;; Code:
(prelude-require-package 'yasnippet)

(require 'yasnippet)

(add-to-list 'yas-snippet-dirs "~/.emacs.d/personal/yas/yasnippet/")
(add-to-list 'yas-snippet-dirs "~/.emacs.d/personal/yas/snippets")

(yas-global-mode 1)

(provide 'init-yas)
;;; init-yas.el ends here
