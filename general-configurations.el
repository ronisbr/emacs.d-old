;; Author: Ronan Arraes Jardim Chagas
;;
;; General configurations.
;;

;; Allow pasting selection outside of Emacs.
(setq x-select-enable-clipboard t)

;; Auto refresh buffers
(global-auto-revert-mode 1)

;; Also auto refresh dired, but be quiet about it
(setq global-auto-revert-non-file-buffers t)
(setq auto-revert-verbose nil)

;; Show keystrokes in progress.
(setq echo-keystrokes 0.1)

;; Move files to trash when deleting.
(setq delete-by-moving-to-trash t)

;; Transparently open compressed files.
(auto-compression-mode t)

;; Alias: 'yes' <-> 'y' and 'no' <-> 'n'.
(defalias 'yes-or-no-p 'y-or-n-p)

;; Set UTF-8 as default encoding.
(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;; Remove text in active region if inserting text.
(delete-selection-mode 1)

;; Always display line and column numbers.
(setq line-number-mode t)
(setq column-number-mode t)

;; Set fill column to 80.
(setq-default fill-column 80)

;; Save a list of recent files visited.
(recentf-mode 1)
(setq recentf-max-saved-items 100)
;; Set C-x C-r to open the recent files.
(global-set-key (kbd "\C-x\C-r") 'recentf-open-files)

;; Undo/Redo window configuration with C-c <left>/<right>.
(winner-mode 1)

;; Never insert tabs.
(set-default 'indent-tabs-mode nil)

;; Show empty lines after buffer end.
(set-default 'indicate-empty-lines t)

;; Easily navigate sillycased words.
(global-subword-mode 1)

;; Don't break lines.
(setq-default truncate-lines t)

;; Keep cursor away from edges when scrolling up/down.
(require 'smooth-scrolling)

;; Sentences do not need double spaces to end.
(set-default 'sentence-end-double-space nil)

;; Add parts of each file's directory to the buffer name if not unique
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

(provide 'general-configurations)
