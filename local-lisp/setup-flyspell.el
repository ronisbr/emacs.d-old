;; Author: Ronan Arraes Jardim Chagas <ronisbr@gmail.com>
;;
;; Setup flyspell
;;

;; Default dictionary.
(setq ispell-dictionary "en_US")

;; Set aspell as default program
(setq ispell-program-name "aspell")

;; Aspell list command
(setq ispell-list-command "list")

;; Enable flyspell-mode
(flyspell-mode t)

(provide 'setup-flyspell)
