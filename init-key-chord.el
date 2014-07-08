;;; init-key-chord.el --- Define key chord key binding
;;; Commentary:
;;; Code:

(key-chord-define-global "x=" 'er/expand-region)
(key-chord-define-global ":f" 'ido-find-file)
(key-chord-define-global ":d" 'kill-whole-line)
(key-chord-define-global ":b" 'backward-kill-word)
(key-chord-define-global ":p" 'move-text-up)
(key-chord-define-global ":n" 'move-text-down)
(key-chord-define-global ":o" 'projectile-find-file)


(provide 'init-key-chord)
;;; init-key-chord.el ends here
