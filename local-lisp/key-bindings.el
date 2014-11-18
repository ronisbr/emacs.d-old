;; Author: Ronan Arraes Jardim Chagas <ronisbr@gmail.com>
;;
;; Key bindings.
;;

;; ----------------------------------------------------------------------------
;; Key bindings related to default Emacs functions.
;; ----------------------------------------------------------------------------

;; Quit emacs: C-x r q (Really Quit)
(global-set-key (kbd "C-x r q") 'save-buffers-kill-terminal)

;; Do not exit emacs with C-x C-c
(global-unset-key (kbd "C-x C-c"))

;; Delete blank lines: C-c C-<return>
(global-set-key (kbd "C-c C-<return>") 'delete-blank-lines)

;; Back to indentation: M-i
(global-set-key (kbd "M-i") 'back-to-indentation)

;; Copy from above: s-.
(global-set-key (kbd "s-.") 'copy-from-above-command)

;; Multi-term
(global-set-key (kbd "C-z") 'multi-term)
(global-set-key (kbd "C-c C-z") 'multi-term-dedicated-open)
(global-set-key (kbd "C-c C-s") 'multi-term-dedicated-select)
(global-set-key (kbd "C-c C-a") 'multi-term-dedicated-close)

;; Suspend frame: C-x M-z
(global-set-key (kbd "C-x M-z") 'suspend-frame)

;; Window move.
(global-set-key (kbd "C-s-<left>")  'windmove-left)
(global-set-key (kbd "C-s-<right>") 'windmove-right)
(global-set-key (kbd "C-s-<up>")    'windmove-up)
(global-set-key (kbd "C-s-<down>")  'windmove-down)

;; Webjump: search on google, wikipedia, emacs wiki, etc.: C-x g
(global-set-key (kbd "C-x g") 'webjump)

;; Browser URL at point: C-x M-g
(global-set-key (kbd "C-x M-g") 'browse-url-at-point)

;; Sort lines: M-s l
(global-set-key (kbd "M-s l") 'sort-lines)

;; Company-mode complete: M-RET.
(global-set-key (kbd "M-RET") 'company-complete)

;; AUCTeX TeX-complete-symbol: C-tab
(global-set-key (kbd "C-<tab>") 'TeX-complete-symbol)

;; ----------------------------------------------------------------------------
;; Key bindings related to extensions.
;; ----------------------------------------------------------------------------

;; Ace jump
(global-set-key (kbd "C-c SPC") 'ace-jump-mode)
(global-set-key (kbd "C-c C-SPC") 'ace-jump-mode-pop-mark)

;; browse-kill-ring: C-x C-y
(global-set-key (kbd "C-x C-y") 'browse-kill-ring)

;; expand-region: C-'
(global-set-key (kbd "C-'") 'er/expand-region)

;; helm
(global-set-key (kbd "<f6>") 'helm-mini)

;; magit
(global-set-key (kbd "C-x m") 'magit-status)
(autoload 'magit-status "magit")

;; move-text
(global-set-key (kbd "<C-S-down>") 'move-text-down)
(global-set-key (kbd "<C-S-up>") 'move-text-up)

;; multiple-cursors
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-æ") 'mc/mark-all-like-this-dwim)
(global-set-key (kbd "C-ß") 'mc/mark-all-in-region)
(global-set-key (kbd "C-s->") 'mc/mark-next-word-like-this)
(global-set-key (kbd "C-s-<") 'mc/mark-previous-word-like-this)
(global-set-key (kbd "C-s-æ") 'mc/mark-all-words-like-this)
(global-set-key (kbd "s->") 'mc/mark-next-symbol-like-this)
(global-set-key (kbd "s-<") 'mc/mark-previous-symbol-like-this)
(global-set-key (kbd "s-æ") 'mc/mark-all-symbols-like-this)

;; smart-forward
(global-set-key (kbd "M-<up>") 'smart-up)
(global-set-key (kbd "M-<down>") 'smart-down)
(global-set-key (kbd "M-<left>") 'smart-backward)
(global-set-key (kbd "M-<right>") 'smart-forward)

;; smex
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; Old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; Zap to char
(global-set-key (kbd "M-z") 'zap-up-to-char)
(global-set-key (kbd "s-z") (lambda (char) (interactive "cZap up to char backwards: ") (zap-up-to-char -1 char)))
(global-set-key (kbd "M-Z") 'zap-to-char)
(global-set-key (kbd "s-Z") (lambda (char) (interactive "cZap to char backwards: ") (zap-to-char -1 char)))

;; ----------------------------------------------------------------------------
;; Key bindings related to user-defined functions.
;; ----------------------------------------------------------------------------

;; Duplicate region
(global-set-key (kbd "C-c d") 'duplicate-current-line-or-region)

;; Increase number at point.
(global-set-key (kbd "C-+") 'esk-increment-integer-at-point)
;; Decrease number at point.
(global-set-key (kbd "C--") 'esk-decrement-integer-at-point)

;; Killing text.
(global-set-key (kbd "C-S-k") 'kill-and-retry-line)
(global-set-key (kbd "C-w") 'kill-region-or-backward-word)
(global-set-key (kbd "C-S-w") 'kill-to-beginning-of-line)
;; Use M-w for copy-line if no active region.
(global-set-key (kbd "M-w") 'save-region-or-current-line)
(global-set-key (kbd "M-W") '(lambda () (interactive) (save-region-or-current-line 1)))

;; Toggle two most recent buffers.
(global-set-key (kbd "s-j") 'quick-switch-buffer)

;; Goto line (with feedback).
(global-set-key (kbd "C-c C-g") 'goto-line-with-feedback)

;; TAB
(global-set-key [tab] 'tab-indent-or-complete)

;; Eval-and-replace
(global-set-key (kbd "C-c C-e") 'eval-and-replace)

;; Open new lines
(global-set-key (kbd "C-o") 'open-line-and-indent)
(global-set-key (kbd "<C-return>") 'open-line-below)
(global-set-key (kbd "<C-S-return>") 'open-line-above)
(global-set-key (kbd "<s-return>") 'new-line-in-between)

(provide 'key-bindings)
