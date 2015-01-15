;; Author: Ronan Arraes Jardim Chagas <ronisbr@gmail.com>
;;
;; Setup anzu
;;

(require 'anzu)
(global-anzu-mode +1)

(custom-set-variables
  '(anzu-mode-lighter "")
  '(anzu-deactivate-region t)
  '(anzu-search-threshold 1000)
  '(anzu-replace-to-string-separator " => "))

(provide 'setup-anzu)
