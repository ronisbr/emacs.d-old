;; Author: Ronan Arraes Jardim Chagas <ronisbr@gmail.com>
;;
;; Setup appearance.
;;

;; Set default font
(set-default-font "Monaco 9")

;; Background and foreground color
(setq default-frame-alist
      '((background-color . "#191919")
        (foreground-color . "#DFDFDF")
        (font . "Monaco 9")
	(cursor-color . "#868686")))

;; Highlight current line
(global-hl-line-mode 1)

;; Customize background color of lighlighted line
(set-face-background 'hl-line "#444444")

;; Customize background color of selected region
(set-face-background 'region "#000045")

(set-face-foreground 'font-lock-warning-face "#ff6666")

;; Highlight matching parentheses when the point is on them.
(show-paren-mode 1)

;; Enable visual line mode (break long lines)
(global-visual-line-mode t)

;; Show line numbers
(global-linum-mode 1)

;; org-mode colors
(setq org-todo-keyword-faces
        '(
          ("TODO"       . (:foreground "red"    :weight bold))
          ("DONE"       . (:foreground "green"  :weight bold))
          ("CANCELLED"  . (:foreground "black"  :background "yellow" :weight bold))
          ("INPROGRESS" . (:foreground "yellow" :weight bold))
         ))

(when window-system
        (setq frame-title-format '(buffer-file-name "%f" ("%b")))
        (tooltip-mode -1)
        (blink-cursor-mode -1))

(provide 'setup-appearance)
