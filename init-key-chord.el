;;; init-key-chord.el --- Define key chord key binding
;;; Commentary:
;;; Code:

(key-chord-define-global "x=" 'er/expand-region)
(key-chord-define-global "xf" 'ido-find-file)
(key-chord-define-global "xd" 'kill-whole-line)
(key-chord-define-global "xb" 'backward-kill-word)
(key-chord-define-global "xp" 'move-text-up)
(key-chord-define-global "xn" 'move-text-down)
(key-chord-define-global "zf" 'projectile-find-file)


(provide 'init-key-chord)
;;; init-key-chord.el ends here
