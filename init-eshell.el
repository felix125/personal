;;; init-eshell.el --- eshell setting
;;; Commentary:
;;; Code:

(require 'eshell)
(require 'em-smart)
(require 'em-term)
(setq eshell-where-to-jump 'begin)
(setq eshell-review-quick-commands nil)
(setq eshell-smart-space-goes-to-end t)

;; Enable helm pcomplete
(add-hook 'eshell-mode-hook
          #'(lambda ()
              (define-key eshell-mode-map
                [remap eshell-pcomplete]
                'helm-esh-pcomplete)))

;; clear buffer
(defun eshell/clear ()
  "Clear the eshell buffer."
  (interactive)
  (let ((inhibit-read-only t))
    (erase-buffer)))

(provide 'init-eshell)
;;; init-eshell.el ends here
