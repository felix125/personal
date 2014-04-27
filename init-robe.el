;;; init-robe.el --- settings
;;; Commentary:
;;; Code:
(prelude-require-package 'robe)

(add-hook 'ruby-mode-hook 'robe-mode)
;; (add-hook 'robe-mode-hook 'ac-robe-setup)
(push 'company-robe company-backends)

(provide 'init-robe)
;;; init-robe.el ends here
