(package-initialize)
  
(require 'package)
(add-to-list 'package-archives ' ("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives ' ("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives ' ("melpa-stable" . "http://stable.melpa.org/packages/"))
(package-initialize)
 
(require 'evil)
(evil-mode 1)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (misterioso)))
 '(global-linum-mode t)
 '(package-selected-packages (quote (evil-anzu evil)))
 '(show-paren-mode t)
 '(transient-mark-mode (quote (only . t))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(set-keyboard-coding-system nil)
