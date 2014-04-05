; package --- Summary
;;; Commentary:
;;; Code:
(prelude-require-package 'ess)

(require 'ess-site)
(setq ess-use-auto-complete 'script-only)
(setq ess-use-eldoc nil)

(setq
 ac-auto-show-menu 1
 ac-candidate-limit nil
 ;; ac-delay 0.1
 ;; ac-disable-faces (quote (font-lock-comment-face font-lock-doc-face))
 ;; ac-ignore-case 'smart
 ;; ac-menu-height 10
 ;; ac-quick-help-delay 1.5
 ;; ac-quick-help-prefer-pos-tip t
 ;; ac-use-quick-help nil
)

(provide 'init-ess)
;;; init-ess.el ends here
