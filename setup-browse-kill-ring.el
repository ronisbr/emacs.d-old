;; Author: Ronan Arraes Jardim Chagas <ronisbr@gmail.com>
;;
;; Setup browse-kill-ring
;;
;; Thanks to  tyraeltong @ github.
;;

(require 'browse-kill-ring)

(browse-kill-ring-default-keybindings)

(defun browse-kill-ring-settings ()
  "settings for `browse-kill-ring'."
  
  (setq browse-kill-ring-maximum-display-length nil)
  (setq browse-kill-ring-separator "------------------------------------------------------------")
  (setq browse-kill-ring-display-duplicates nil)

  ;; browse-kill-ring navigation have bug when linum-mode is on
  (defmacro def-without-linum-mode (command)
    `(defun ,(am-intern command "-without-linum-mode") ()
       ,(concat "Before call " command " , turn off `linum-mode' first.")
       (interactive)
       (let ((displn linum-mode))
         (linum-mode -1)
         (call-interactively ',(am-intern command))
         (linum-mode (if displn 1 -1)))))

  (def-without-linum-mode "browse-kill-ring-forward")
  (def-without-linum-mode "browse-kill-ring-previous"))

(eval-after-load "browse-kill-ring"
  `(browse-kill-ring-settings))

(provide 'setup-browse-kill-ring)

