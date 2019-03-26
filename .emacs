(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/")) 
(package-initialize)

(require 'linum-relative)
(require 'evil)
(require 'rainbow-delimiters)

(show-paren-mode 1)

(defun create-tags (dir-name)
  "create tags file"
  (interactive "DDirectory: ")
  (eshell-command
   (format "find %s -type f -name \"*.[ch]\" | etags -" dir-name)))

(setq key-chord-two-keys-delay 0.5)
(key-chord-define evil-insert-state-map "kj" 'evil-normal-state)
(key-chord-mode 1)

(slime-setup '(slime-fancy))

(linum-relative-global-mode)

;; scroll one line at a time (less "jumpy" than defaults)

(setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ;; one line at a time
(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse
(setq scroll-step 1) ;; keyboard scroll one line at a time

(tool-bar-mode 0)

(scroll-bar-mode 0)

(evil-mode 1)

(global-set-key (kbd "C-c C-e") 'eval-buffer)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'challenger-deep t)

(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

(setq inferior-lisp-program "sbcl")

(setq-default truncate-lines t)

(defun nolinum () (linum-mode 0))
(add-hook 'org-mode #'nolinum)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(set-face-attribute 'default nil :height 130)

(global-set-key (kbd "C-(") 'paredit-wrap-round)

(global-set-key (kbd "M-.") 'slime-edit-definiton)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#151515" "#953331" "#546a29" "#909737" "#385e6b" "#7f355e" "#34676f" "#c6a57b"])
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(custom-safe-themes
   (quote
    ("8fed2ce5ae5f6332fef79d7d9faf6533403eecbe9f30a55720418fa3a6870d9f" "0c3b1358ea01895e56d1c0193f72559449462e5952bded28c81a8e09b53f103f" "73ad471d5ae9355a7fa28675014ae45a0589c14492f52c32a4e9b393fcc333fd" "274fa62b00d732d093fc3f120aca1b31a6bb484492f31081c1814a858e25c72e" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "8d3c5e9ba9dcd05020ccebb3cc615e40e7623b267b69314bdb70fe473dd9c7a8" "0099855812d66e29864d49d74054a46b22d9a5ac5a195ea0c42eaa54b3bfa42c" "15c181ea9d050e6d49f0f71087026a2afa40f5f0b202929a2efa133d2deca82f" "d2a40cebac636785bced4c5e1ff9521a4213db42baed105bdf03224277baa6b1" "40f491691ebc88b83ae00ab05fea17a72b53ca42906e9630f5d8fe19bd8058d8" "d50b537ec9f6072e7645efcc1e956f99f28cb0f7e9e36d649e213044cba319b3" "083bfd5ba021a34141dab9aa8b4f505138a7ae87fb56d2443ae60aa9c7dc9a15" "a37098505b4c79512c813bd740b3411f92d99411c6e15b43822d25af8f21027d" "d3a7eea7ebc9a82b42c47e49517f7a1454116487f6907cf2f5c2df4b09b50fc1" "67e998c3c23fe24ed0fb92b9de75011b92f35d3e89344157ae0d544d50a63a72" "3eb2b5607b41ad8a6da75fe04d5f92a46d1b9a95a202e3f5369e2cdefb7aac5c" "95f80c9b1ae8afcc2c8d66750252b4d6ae19aef46c2d458c5fe5911e6f09d0ce" default)))
 '(fci-rule-color "#383838")
 '(linum-relative-current-symbol "")
 '(nrepl-message-colors
   (quote
    ("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3")))
 '(pdf-view-midnight-colors (quote ("#DCDCCC" . "#383838")))
 '(vc-annotate-background "#2B2B2B")
 '(vc-annotate-color-map
   (quote
    ((20 . "#BC8383")
     (40 . "#CC9393")
     (60 . "#DFAF8F")
     (80 . "#D0BF8F")
     (100 . "#E0CF9F")
     (120 . "#F0DFAF")
     (140 . "#5F7F5F")
     (160 . "#7F9F7F")
     (180 . "#8FB28F")
     (200 . "#9FC59F")
     (220 . "#AFD8AF")
     (240 . "#BFEBBF")
     (260 . "#93E0E3")
     (280 . "#6CA0A3")
     (300 . "#7CB8BB")
     (320 . "#8CD0D3")
     (340 . "#94BFF3")
     (360 . "#DC8CC3"))))
 '(vc-annotate-very-old-color "#DC8CC3"))

(setq scheme-program-name "scheme")
