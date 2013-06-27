;; Author: Ronan Arraes Jardim Chagas <ronisbr@gmail.com>
;;
;; Key bindings.
;;

;; ----------------------------------------------------------------------------
;; Key bindings related to default Emacs functions.
;; ----------------------------------------------------------------------------

;; Quit emacs: C-x r q (Really Quit)
(global-set-key (kbd "C-x r q") 'save-buffers-kill-terminal)

;; Delete blank lines: C-c C-<return>
(global-set-key (kbd "C-c C-<return>") 'delete-blank-lines)

;; Back to indentation: M-i
(global-set-key (kbd "M-i") 'back-to-indentation)

;; Shell: C-z
(global-set-key (kbd "C-z") 'shell)

;; Suspend frame: C-x M-z
(global-set-key (kbd "C-x M-z") 'suspend-frame)

;; Window move.
(global-set-key (kbd "C-S-<left>")  'windmove-left)
(global-set-key (kbd "C-S-<right>") 'windmove-right)
(global-set-key (kbd "C-S-<up>")    'windmove-up)
(global-set-key (kbd "C-S-<down>")  'windmove-down)

;; Webjump: search on google, wikipedia, emacs wiki, etc.: C-x g
(global-set-key (kbd "C-x g") 'webjump)

;; Browser URL at point: C-x M-g
(global-set-key (kbd "C-x M-g") 'browse-url-at-point)

;; Sort lines: M-s l
(global-set-key (kbd "M-s l") 'sort-lines)

;; ----------------------------------------------------------------------------
;; Key bindings related to extensions.
;; ----------------------------------------------------------------------------

;; browse-kill-ring: C-x C-y
(global-set-key (kbd "C-x C-y") 'browse-kill-ring)

;; expand-region: C-'
(global-set-key (kbd "C-'") 'er/expand-region)

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

(provide 'key-bindings)
