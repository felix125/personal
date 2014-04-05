;;; init-tabbar-ruler.el --- settings
;;; Commentary:
;;; Code:
(prelude-require-package 'tabbar-ruler)

(require 'tabbar-ruler)
(setq tabbar-ruler-global-tabbar t)

(global-set-key (kbd "s-1") 'tabbar-ruler-forward)
(global-set-key (kbd "s-2") 'tabbar-forward-group)

(setq tabbar-use-images nil)

(tabbar-ruler-group-by-projectile-project)

(provide 'init-tabbar-ruler)
;;; init-tabbar-ruler.el ends here
