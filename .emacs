(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

(require 'linum-relative)
(require 'evil)
(require 'rainbow-delimiters)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(linum-relative-current-symbol ""))
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.

(tool-bar-mode 0)

(truncate-lines t)

(evil-mode 1)

(load-theme 'spacemacs-dark t)

(scroll-bar-mode -1)

(global-linum-relative-mode 1)

(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

