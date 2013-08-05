;; Author: Ronan Arraes Jardim Chagas <ronisbr@gmail.com>
;;
;; Setup matlab mode
;;
;; From: http://www.emacswiki.org/emacs/MatlabMode

(require 'matlab-load)
(setq matlab-indent-function-body t)
(defun matlab-mode-hook ()
    (setq fill-column 76))
(add-hook 'matlab-mode-hook 'my-matlab-mode-hook)
(global-font-lock-mode t)

(provide 'setup-matlab)
