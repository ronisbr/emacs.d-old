;; Author: Ronan Arraes Jardim Chagas <ronisbr@gmail.com>
;;
;; init.el
;;
;; Thanks to Magnar Sveen (magnars @ github.com).

;; Disable the tool bar and the scroll bar.
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
;;(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; Disable splash screen.
(setq inhibit-startup-message t)

;; Start with an empty buffer.
(switch-to-buffer (get-buffer-create "empty"))

;; Delete all windows.
(delete-other-windows)

;; Set path to dependencies.
(setq local-lisp-dir
        (expand-file-name "local-lisp" user-emacs-directory))

(setq site-lisp-dir
        (expand-file-name "site-lisp" user-emacs-directory))

(setq themes-dir
        (expand-file-name "themes" user-emacs-directory))

;; Set up load path.
(add-to-list 'load-path local-lisp-dir)
(add-to-list 'load-path site-lisp-dir)
(add-to-list 'custom-theme-load-path themes-dir)

;; Add external projects to load path.
(dolist (project (directory-files site-lisp-dir t "\\w+"))
        (when (file-directory-p project)
                (add-to-list 'load-path project)))

;; Write autosave files to own directory.
(setq auto-save-file-name-transforms
        `((".*" ,(expand-file-name
		(concat user-emacs-directory "autosaves/\\1")) t)))

;; Create the directory if needed.
(make-directory
        (expand-file-name
                (concat user-emacs-directory "autosaves")) t)

;; Write backup files to own directory
(setq backup-directory-alist
        `(("." . ,(expand-file-name
                (concat user-emacs-directory "backups")))))

;; Create the directory if needed.
(make-directory
        (expand-file-name
                (concat user-emacs-directory "backups")) t)

;; Make backups of files, even when they're in version control.
(setq vc-make-backup-files t)

;; Functions (load all files in userdef-funcs-dir)
(setq userdef-funcs-dir (expand-file-name "userdef-funcs" user-emacs-directory))
(dolist (file (directory-files userdef-funcs-dir t "\\w+"))
  (when (file-regular-p file)
    (load file)))

;; Load private configurations.
(when (file-exists-p "~/.emacs.d/private-configurations.el")
    (load "~/.emacs.d/private-configurations.el"))

; Keep emacs Custom-settings in separate file
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)

;; Setup appearance.
(require 'setup-appearance)

;; misc.el
(require 'misc)

;; General configuration.
(require 'general-configurations)

;; Key bindings.
(require 'key-bindings)

;; Extensions.
(require 'ahei-misc)
(require 'expand-region)
(require 'fiplr)
(require 'helm-config)
(require 'move-text)
(require 'multiple-cursors)
(require 'smart-forward)

;; Setups.
(require 'setup-ace-jump-mode)
(require 'setup-anzu)
(require 'setup-auctex)
(require 'setup-auto-complete)
(require 'setup-back-button)
(require 'setup-browse-kill-ring)
(require 'setup-cc-mode)
(require 'setup-company)
(require 'setup-ecb)
(require 'setup-ediff)
(require 'setup-ess)
(require 'setup-flycheck)
(require 'setup-flyspell)
(eval-after-load 'ido '(require 'setup-ido))
(require 'setup-magit)
(require 'setup-matlab)
(require 'setup-multi-term)
(require 'setup-neotree)
(require 'setup-org-mode)
(require 'setup-powerline)
(require 'setup-rainbow-delimiters)
(require 'setup-smex)
(require 'setup-sr-speedbar)
(require 'setup-undo-tree)
(require 'setup-xcscope)
(require 'setup-yasnippet)
