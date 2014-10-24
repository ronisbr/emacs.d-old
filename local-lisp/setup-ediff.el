;; Author: Ronan Arraes Jardim Chagas <ronisbr@gmail.com>
;;
;; Setup ediff.
;;

(setq ediff-diff-options "-w")
(setq ediff-split-window-function 'split-window-horizontally)
(setq ediff-window-setup-function 'ediff-setup-windows-plain)

(provide 'setup-ediff)
