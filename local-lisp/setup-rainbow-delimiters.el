;; Author: Ronan Arraes Jardim Chagas <ronisbr@gmail.com>
;;
;; Setup rainbow delimiters
;;

(require 'rainbow-delimiters)

(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
(add-hook 'julia-mode-hook #'rainbow-delimiters-mode)

(provide 'setup-rainbow-delimiters)
