;;; init-ido-vertical.el --- ido-vertical-mode settings
;;; Commentary:
;;; Code:
(prelude-require-package 'ido-vertical-mode)

(require 'ido-vertical-mode)
(setq ido-vertical-define-keys 'C-n-C-p-up-down-left-right)
(ido-mode 1)
(ido-vertical-mode 1)
;;; init-ido-vertical.el ends here
