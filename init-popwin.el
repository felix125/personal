;;; init-popwin.el --- settings of popwin
;;; Commentary:
;;; Code:
(prelude-require-package 'popwin)

(require 'popwin)
(popwin-mode 1)

;; undo-tree
(push '("*undo-tree*" :width 0.3 :position right) popwin:special-display-config)

;; Kill-Ring
(push '("*Kill Ring*" :width 0.3 :position right) popwin:special-display-config)

;; dired-mode
(push '(dired-mode :width 0.5 :position left) popwin:special-display-config)

(provide 'init-popwin)
;;; init-popwin.el ends here
