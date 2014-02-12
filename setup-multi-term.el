;; Author: Ronan Arraes Jardim Chagas <ronisbr@gmail.com>
;;
;; Setup multi-term
;;

(require 'multi-term)

(setq multi-term-program "/bin/zsh")

(add-hook 'term-mode-hook (lambda()
    (yas-minor-mode -1)))

(provide 'setup-multi-term)
