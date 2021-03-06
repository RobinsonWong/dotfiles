
;; Added by Package.el. This must come before configurations of
;; installed packages. Don't delete this line. If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delte thes explanatory comments.
(package-initialize)

(require 'package)
(add-to-list 'package-archives ' ("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives ' ("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives ' ("melpa-stable" . "http://stable.melpa.org/packages/"))
(package-initialize)

(require 'evil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes (quote (misterioso)))
 '(evil-mode t)
 '(global-linum-mode t)
 '(package-selected-packages
   (quote
    (auto-complete helm org-link-minor-mode evil-visual-mark-mode evil)))
 '(show-paren-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(set-keyboard-coding-system nil)
