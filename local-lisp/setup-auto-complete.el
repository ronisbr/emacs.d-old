;; Author: Ronan Arraes Jardim Chagas <ronisbr@gmail.com>
;;
;; Setup auto-complete
;;

(require 'auto-complete-config)
(ac-config-default)

; Do not start automatically.
(setq ac-auto-start nil)

; Start when TAB is pressed.
(ac-set-trigger-key "TAB")

(setq ac-auto-show-menu 0.6)

;; Provide auto-completion with auctex.
(require 'auto-complete-auctex)

(provide 'setup-auto-complete)
