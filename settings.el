
(setq inhibit-splash-screen t)

(global-visual-line-mode t)

(add-to-list 'load-path "~/.emacs.d/vendor/powerline")
(require 'powerline)
(powerline-center-theme)

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

(menu-bar-mode -1)

(org-babel-do-load-languages 
  'org-babel-load-languages
  '( (perl . t)
     (ruby . t)
     (sh . t)
     (python . t)
     (emacs-lisp . t)
     (R . t)
     (haskell . t)
     (clojure . t)
     (scheme . t)
))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files (quote ("~/Journal.org"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
