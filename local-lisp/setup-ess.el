;; Author: Ronan Arraes Jardim Chagas <ronisbr@gmail.com>
;;
;; Setup ESS
;;

;; Add the ESS lisp directory to the load path
(setq ess-lisp-dir
    (expand-file-name "~/.emacs.d/site-lisp/ESS/lisp/"))

(add-to-list 'load-path ess-lisp-dir)

(require 'ess-site)

;; Configure julia
(setq inferior-julia-program-name "/usr/bin/julia")

;; Choose the current directory as the working directory
(setq ess-ask-for-ess-directory nil)

(provide 'setup-ess)
