;; Get rid of the startup message
(setq inhibit-startup-message t)

;; Shows parenthesis 
(show-paren-mode 1)

;; dpd Coding style
(setq-default c-default-style "bsd"
c-basic-offset 4
tab-width 8
indent-tabs-mode nil)

;; switch to Linux coding style
(defun linux-style ()
  "Setup for editting Linux formatted code"
  (interactive)
  (c-set-style "linux")
  (setq indent-tabs-mode t))
        
;; Follow compilation output
(setq compilation-scroll-output "first-error")
(global-set-key (kbd "<f4>") 'next-error)
(global-set-key (kbd "<S-f4>") 'previous-error)
(global-set-key (kbd "<f5>") 'recompile)
(global-set-key (kbd "<S-f5>") 'compile)

;; Start the server so we can use emacsclient
(server-start)

;; Don't use tabs by default unless the mode changes this. AKA "linux-style"
(setq-default indent-tabs-mode nil)

;; Remove trailing whitespace on save
;; (removed on 2022-11-02 as this causes lots of diffs when editing third party code)
;;(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Look for extra packages in this directory
(add-to-list 'load-path "~/.emacs.d/lisp/")

;; Handle the YAML configuration files that Ubuntu seems to love
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yaml\\'" . yaml-mode))

;; Some Arduino editting support
(setq auto-mode-alist (cons '("\\.\\(pde\\|ino\\)$" . arduino-mode) auto-mode-alist))
(autoload 'arduino-mode "arduino-mode" "Arduino editing mode." t)

;; markdown-mode package
;; M-x package-install RET markdown-mode RET
(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/"))
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (markdown-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
