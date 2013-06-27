;; Author: Ronan Arraes Jardim Chagas <ronisbr@gmail.com>
;;
;; Setup magit
;;

(require 'magit)

;; Setup git-modes.
(require 'git-commit-mode)
(require 'gitconfig-mode)

;; Change magit diff colors.
(eval-after-load 'git-commit-mode
    '(progn
         (set-face-foreground 'magit-diff-add "green1")
         (set-face-foreground 'magit-diff-del "red1")
         (set-face-background 'magit-item-highlight "#000033")
         (when (not window-system)
             (set-face-background 'magit-item-highlight "black"))))

(provide 'setup-magit)
