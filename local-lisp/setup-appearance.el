;; Author: Ronan Arraes Jardim Chagas <ronisbr@gmail.com>
;;
;; Setup appearance.
;;

;; Set default theme
(load-theme 'monokai t)

;; Highlight current line
(global-hl-line-mode 1)

;; Set font
(setq default-frame-alist
    '((font . "Monaco 11")
      (cursor-color . "#868686")))

; Background and foreground color
;(setq default-frame-alist
;      '((background-color . "#191919")
;        (foreground-color . "#DFDFDF")
;        (font . "Monaco 9")
;	(cursor-color . "#868686")))
;
;; Customize background color of lighlighted line
;(set-face-background 'hl-line "#444444")
;
;; Customize background color of selected region
;(set-face-background 'region "#000045")
;
;(set-face-foreground 'font-lock-warning-face "#ff6666")

;; Highlight matching parentheses when the point is on them.
(show-paren-mode 1)

;; Enable visual line mode (break long lines)
(global-visual-line-mode t)

;; Blink cursor mode
(blink-cursor-mode t)

;; Improve scrolling speed.
(setq font-lock-support-mode 'jit-lock-mode)
(setq jit-lock-stealth-time 16
      jit-lock-defer-contextually t
      jit-lock-stealth-nice 0.5)
(setq-default font-lock-multiline t)

(when window-system
        (setq frame-title-format '(buffer-file-name "%f" ("%b")))
        (tooltip-mode -1)
        (blink-cursor-mode -1))

(provide 'setup-appearance)
