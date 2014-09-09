;; Author: Ronan Arraes Jardim Chagas <ronisbr@gmail.com>
;;
;; User-defined functions: Navigation
;;

;; Toogle two most recent buffers.
(fset 'quick-switch-buffer [?\C-x ?b return])

;; Function: goto-line-with-feedback()
;;
;; Show the line numbers and ask for a line to go.
;;
;; Source: http://whattheemacsd.com/
 
(defun goto-line-with-feedback ()
  "Show line numbers temporarily, while prompting for the line number input"
  (interactive)
  (unwind-protect
    (progn
      (linum-mode 1)
      (goto-line (read-number "Goto line: ")))
    (linum-mode -1)))
