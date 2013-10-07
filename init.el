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
(setq site-lisp-dir
        (expand-file-name "site-lisp" user-emacs-directory))

;; Set up load path.
(add-to-list 'load-path user-emacs-directory)
(add-to-list 'load-path site-lisp-dir)

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

;; Setup appearance.
(require 'setup-appearance)

;; misc.el
(require 'misc)

;; General configuration.
(require 'general-configurations)

;; Key bindings.
(require 'key-bindings)

;; Extensions.
(require 'browse-kill-ring)
(require 'expand-region)
(require 'helm-config)
(require 'move-text)
(require 'multiple-cursors)
(require 'smart-forward)

;; Setups.
(require 'setup-ace-jump-mode)
(require 'setup-auctex)
(require 'setup-auto-complete)
(require 'setup-cc-mode)
(require 'setup-ecb)
(require 'setup-ediff)
(require 'setup-flyspell)
(eval-after-load 'ido '(require 'setup-ido))
(require 'setup-magit)
(require 'setup-matlab)
(require 'setup-smex)
(require 'setup-yasnippet)
