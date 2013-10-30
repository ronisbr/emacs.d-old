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
(require 'setup-cedet)
(require 'setup-ecb)
(require 'setup-ediff)
(require 'setup-flyspell)
(eval-after-load 'ido '(require 'setup-ido))
(require 'setup-magit)
(require 'setup-matlab)
(require 'setup-smex)
(require 'setup-yasnippet)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(LaTeX-command "latex -synctex=1")
 '(ecb-layout-window-sizes (quote (("left8" (ecb-directories-buffer-name 0.21641791044776118 . 0.2923076923076923) (ecb-sources-buffer-name 0.21641791044776118 . 0.23076923076923078) (ecb-methods-buffer-name 0.21641791044776118 . 0.2923076923076923) (ecb-history-buffer-name 0.21641791044776118 . 0.16923076923076924)) ("left-analyse" (ecb-directories-buffer-name 0.20149253731343283 . 0.2923076923076923) (ecb-sources-buffer-name 0.20149253731343283 . 0.23076923076923078) (ecb-methods-buffer-name 0.20149253731343283 . 0.23076923076923078) (ecb-analyse-buffer-name 0.20149253731343283 . 0.23076923076923078)))))
 '(ecb-options-version "2.40")
 '(mark-even-if-inactive t)
 '(scroll-bar-mode (quote right))
 '(transient-mark-mode 1))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
