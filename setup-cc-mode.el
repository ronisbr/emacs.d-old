;; Author: Ronan Arraes Jardim Chagas <ronisbr@gmail.com>
;;
;; Setup CC mode
;;

(setq c-default-style "linux"
      c-basic-offset 4)

;; Set F9 key to compile the source code.
(defun my/bindkey-recompile ()
    "Bind <F9> to `recompile'."
    (local-set-key (kbd "<f9>") 'recompile))
(add-hook 'c-mode-common-hook 'my/bindkey-recompile)

(provide 'setup-cc-mode)
