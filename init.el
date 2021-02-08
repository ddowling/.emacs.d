;; dpd Coding style
(setq-default c-default-style "bsd"
c-basic-offset 4
tab-width 8
indent-tabs-mode nil)

;;; Follow compilation output
(setq compilation-scroll-output "first-error")
(global-set-key (kbd "<f4>") 'next-error)
(global-set-key (kbd "<S-f4>") 'previous-error)
(global-set-key (kbd "<f5>") 'recompile)
(global-set-key (kbd "<S-f5>") 'compile)

;; Start the server so we can use emacsclient
(server-start)

;; Don't use tabs
(setq-default indent-tabs-mode nil)

;; Remove trailing whitespace on save
(add-hook 'before-save-hook 'delete-trailing-whitespace)
