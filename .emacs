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

(setq key-chord-two-keys-delay 0.25)
(key-chord-define evil-insert-state-map "kj" 'evil-normal-state)
(key-chord-mode 1)

(slime-setup '(slime-fancy))

(menu-bar-mode -1)

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
(load-theme 'dracula t)

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

(set-face-attribute 'default nil :height 100)

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
    ("f23a961abba42fc5d75bf94c46b5688c52683c02b3a81313dd0738b4d48afd1d" "f0dc4ddca147f3c7b1c7397141b888562a48d9888f1595d69572db73be99a024" "d2e9c7e31e574bf38f4b0fb927aaff20c1e5f92f72001102758005e53d77b8c9" "7bef2d39bac784626f1635bd83693fae091f04ccac6b362e0405abf16a32230c" "93a0885d5f46d2aeac12bf6be1754faa7d5e28b27926b8aa812840fe7d0b7983" "100e7c5956d7bb3fd0eebff57fde6de8f3b9fafa056a2519f169f85199cc1c96" "6d589ac0e52375d311afaa745205abb6ccb3b21f6ba037104d71111e7e76a3fc" "4697a2d4afca3f5ed4fdf5f715e36a6cac5c6154e105f3596b44a4874ae52c45" "a3fa4abaf08cc169b61dea8f6df1bbe4123ec1d2afeb01c17e11fdc31fc66379" "6b2636879127bf6124ce541b1b2824800afc49c6ccd65439d6eb987dbf200c36" "1c082c9b84449e54af757bcae23617d11f563fc9f33a832a8a2813c4d7dfb652" "151bde695af0b0e69c3846500f58d9a0ca8cb2d447da68d7fbf4154dcf818ebc" "75d3dde259ce79660bac8e9e237b55674b910b470f313cdf4b019230d01a982a" "d1b4990bd599f5e2186c3f75769a2c5334063e9e541e37514942c27975700370" "7e78a1030293619094ea6ae80a7579a562068087080e01c2b8b503b27900165c" "3380a2766cf0590d50d6366c5a91e976bdc3c413df963a0ab9952314b4577299" "cea3ec09c821b7eaf235882e6555c3ffa2fd23de92459751e18f26ad035d2142" "aea30125ef2e48831f46695418677b9d676c3babf43959c8e978c0ad672a7329" "8fed2ce5ae5f6332fef79d7d9faf6533403eecbe9f30a55720418fa3a6870d9f" "0c3b1358ea01895e56d1c0193f72559449462e5952bded28c81a8e09b53f103f" "73ad471d5ae9355a7fa28675014ae45a0589c14492f52c32a4e9b393fcc333fd" "274fa62b00d732d093fc3f120aca1b31a6bb484492f31081c1814a858e25c72e" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "8d3c5e9ba9dcd05020ccebb3cc615e40e7623b267b69314bdb70fe473dd9c7a8" "0099855812d66e29864d49d74054a46b22d9a5ac5a195ea0c42eaa54b3bfa42c" "15c181ea9d050e6d49f0f71087026a2afa40f5f0b202929a2efa133d2deca82f" "d2a40cebac636785bced4c5e1ff9521a4213db42baed105bdf03224277baa6b1" "40f491691ebc88b83ae00ab05fea17a72b53ca42906e9630f5d8fe19bd8058d8" "d50b537ec9f6072e7645efcc1e956f99f28cb0f7e9e36d649e213044cba319b3" "083bfd5ba021a34141dab9aa8b4f505138a7ae87fb56d2443ae60aa9c7dc9a15" "a37098505b4c79512c813bd740b3411f92d99411c6e15b43822d25af8f21027d" "d3a7eea7ebc9a82b42c47e49517f7a1454116487f6907cf2f5c2df4b09b50fc1" "67e998c3c23fe24ed0fb92b9de75011b92f35d3e89344157ae0d544d50a63a72" "3eb2b5607b41ad8a6da75fe04d5f92a46d1b9a95a202e3f5369e2cdefb7aac5c" "95f80c9b1ae8afcc2c8d66750252b4d6ae19aef46c2d458c5fe5911e6f09d0ce" default)))
 '(fci-rule-color "#383838")
 '(linum-relative-current-symbol "")
 '(nrepl-message-colors
   (quote
    ("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3")))
 '(package-selected-packages
   (quote
    (arduino-mode flycheck flycheck-rust cargo toml-mode rust-mode doom-themes kaolin-themes zenburn-theme ujelly-theme spacemacs-theme smooth-scroll slime sicp rainbow-delimiters python-mode linum-relative key-chord jazz-theme gruvbox-theme flatui-dark-theme exwm evil-paredit evil-org elixir-mode dracula-theme cyberpunk-theme clojure-quick-repls bind-key base16-theme 2048-game)))
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
