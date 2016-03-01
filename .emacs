(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(inhibit-startup-screen t)
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; elpa
(require 'package)
(add-to-list 'package-archives
             '("Marmalade" . "http://melpa.org/packages/") t)
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/")))
(package-initialize)
;; backspace ctrl h
(global-set-key "\C-h" 'backward-delete-char-untabify)  
(global-set-key "\d" 'delete-char)  

;; coding utf8 
(setq revert-buffer-with-coding-system 'utf-8)  

;; scroll single line
(setq scroll-step 1 scroll-conservatively  10000)

;; chinese display problems
(set-fontset-font "fontset-default" 
'gb18030' ("Microsoft YaHei" . "unicode-bmp")) 

;; default path
(setq command-line-default-directory "C:/Users/tree/Desktop/" )
(setq default-directory "C:/Users/tree/Desktop/" )

;; ~file
;; (setq make-backup-files nil)
(setq backup-directory-alist (quote (("." . "D:/EmacsTemp"))))

;; tab and space 
(setq-default indent-tabs-mode nil) 
(setq-default tab-width 4)
;;(setq-default lua-indent-level 4)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; PUBLIC  CONFIGURATION FILE
;; https://github.com/dholm/tabbar/
(add-to-list 'load-path "~/.emacs.d/plugins/submodule/tabbar")
(require 'tabbar)
(tabbar-mode)

;; https://github.com/jaypei/emacs-neotree
(add-to-list 'load-path "~/.emacs.d/plugins/submodule/neotree")
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)

;; https://github.com/auto-complete/popup-el
(add-to-list 'load-path "~/.emacs.d/plugins/submodule/popup")
(require 'popup)

;; https://github.com/auto-complete/auto-complete
(add-to-list 'load-path "~/.emacs.d/plugins/submodule/auto-complete")
(require 'auto-complete-config)
(ac-config-default)

;; https://github.com/capitaomorte/yasnippet
(add-to-list 'load-path  "~/.emacs.d/plugins/submodule/yasnippet")
(require 'yasnippet)
(yas-global-mode nil)

;; auto-complete support yasnippet
(setq-default ac-sources (push 'ac-source-yasnippet ac-sources))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Golang IDE
;; https://github.com/dominikh/go-mode.el
(add-to-list 'load-path  "~/.emacs.d/plugins/submodule/go-mode")
(require 'go-mode-autoloads)
(add-hook 'before-save-hook 'gofmt-before-save)

;; https://github.com/syohex/emacs-go-eldoc
(add-to-list 'load-path  "~/.emacs.d/plugins/submodule/go-eldoc")
(require 'go-eldoc)
;;(add-hook 'go-mode-hook 'go-eldoc-setup)

;; https://github.com/nsf/gocode
(add-to-list 'load-path  "~/.emacs.d/plugins/submodule/gocode/emacs")
(require 'go-autocomplete)
(require 'auto-complete-config)
(ac-config-default)

;; https://github.com/robert-zaremba/flymake-go
;;(add-to-list 'load-path  "~/.emacs.d/plugins/submodule/glymake-go")
;;(eval-after-load "go-mode"
;;  '(require 'flymake-go))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Python IDE
;; https://github.com/kiwanami/emacs-epc

