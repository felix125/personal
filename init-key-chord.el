;;; init-key-chord.el --- Define key chord key binding
;;; Commentary:
;;; Code:

(key-chord-define-global "c=" 'er/expand-region)
(key-chord-define-global "ff" 'ido-find-file)
(key-chord-define-global "dd" 'kill-whole-line)
(key-chord-define-global "bd" 'backward-kill-word)
(key-chord-define-global "pp" 'move-text-up)
(key-chord-define-global "nn" 'move-text-down)
(key-chord-define-global "pf" 'projectile-find-file)
(key-chord-define-global "ww" 'helm-swoop)




(provide 'init-key-chord)
;;; init-key-chord.el ends here
