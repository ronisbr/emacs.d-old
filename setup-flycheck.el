;; Author: Ronan Arraes Jardim Chagas <ronisbr@gmail.com>
;;
;; Setup flycheck
;;

(require 'flycheck)

;; Set C++11 standard.
(add-hook 'c++-mode-hook 
  (lambda () (
     setq flycheck-clang-language-standard "c++11")))

(provide 'setup-flycheck)
