;; Author: Ronan Arraes Jardim Chagas <ronisbr@gmail.com>
;;
;; Setup yasnippet

;; If mode-require-final-newline is set to true, then Emacs will add a newline
;; to the end of all files. It will also add a new line everytime a snippet is
;; expanded. Thus, we can remove this behavior by setting
;; mode-require-final-newline to nil.
(setq-default mode-require-final-newline nil)

(require 'yasnippet)

;; Set yas-snippet-dirs.
(setq yas-snippet-dirs
	'("~/.emacs.d/my-snippets"                  ;; Personal snippets.
          "~/.emacs.d/site-lisp/yasnippet/snippets" ;; Default collection.
         ))

(yas-global-mode 1)

(provide 'setup-yasnippet)
