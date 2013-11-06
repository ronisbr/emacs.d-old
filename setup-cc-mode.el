;; Author: Ronan Arraes Jardim Chagas <ronisbr@gmail.com>
;;
;; Setup CC mode
;;

;; My coding style.
(c-add-style "my-coding-style"
    '((c-offsets-alist . ((innamespace . 0)))))

(add-hook 'c-mode-common-hook 
    '(lambda ()
        (setq c-default-sytle "linux"
              c-basic-offset 4)
        (local-set-key (kbd "<f9>") 'recompile)
        (c-set-style "my-coding-style")))

(provide 'setup-cc-mode)
