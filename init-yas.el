;;; init-yas.el --- settings
;;; Commentary:
;;; Code:
(prelude-require-package 'yasnippet)

(require 'yasnippet)

(add-to-list 'yas-snippet-dirs "~/.emacs.d/personal/yas/snippets")

(yas-global-mode 1)

;; Solving conflicts in Company and Yasnippet.
(defun check-expansion ()
    (save-excursion
      (if (looking-at "\\_>") t
        (backward-char 1)
        (if (looking-at "\\.") t
          (backward-char 1)
          (if (looking-at "->") t nil)))))

  (defun do-yas-expand ()
    (let ((yas/fallback-behavior 'return-nil))
      (yas/expand)))

  (defun tab-indent-or-complete ()
    (interactive)
    (if (minibufferp)
        (minibuffer-complete)
      (if (or (not yas/minor-mode)
              (null (do-yas-expand)))
          (if (check-expansion)
              (company-complete-common)
            (indent-for-tab-command)))))

;; (global-set-key [tab] 'tab-indent-or-complete)


(provide 'init-yas)
;;; init-yas.el ends here
