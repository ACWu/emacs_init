
(package-initialize nil)
(add-to-list 'package-archives
             '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(setq package-archive-priorities '(("org" . 3)
                                   ("melpa" . 2)
                                   ("gnu" . 1)))
(unless (package-installed-p 'use-package)  (package-refresh-contents)
  (package-install 'use-package))
(setq use-package-verbose t)
(eval-when-compile
  (require 'use-package))
(use-package diminish :ensure t)

(setq inhibit-splash-screen t)

(global-visual-line-mode t)

(add-to-list 'load-path "~/.emacs.d/vendor/powerline")
(require 'powerline)
(powerline-center-theme)

(menu-bar-mode -1)

(global-linum-mode t)

(setq linum-format "%4d\u2502")

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

(with-eval-after-load 'org

   (setq org-support-shift-select t)

   ;; Using Kaligule's fork of org-bullets due to issues the official melpa release has with org-hide as of 2018/04/01

   (add-to-list 'load-path "~/.emacs.d/vendor/org-bullets")
   (require 'org-bullets)
   (add-hook 'org-mode-hook (lambda() (org-bullets-mode 1)))

   ;; (use-package org-bullets
   ;;   :ensure t
   ;;   :commands (org-bullets-mode)
   ;;   :init (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))

   (setq org-startup-indented t)

   (setq org-hide-leading-stars t))

   (org-add-hook 'org-src-mode-hook 'linum-mode*)

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)
