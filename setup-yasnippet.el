;; Author: Ronan Arraes Jardim Chagas <ronisbr@gmail.com>
;;
;; Setup yasnippet

(require 'yasnippet)

;; Set yas-snippet-dirs.
(setq yas-snippet-dirs
	'("~/.emacs.d/my-snippets"                  ;; Personal snippets.
          "~/.emacs.d/site-lisp/yasnippet/snippets" ;; Default collection.
         ))

(yas-global-mode 1)

(provide 'setup-yasnippet)
