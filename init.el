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

(setq themes-dir
        (expand-file-name "themes" user-emacs-directory))

;; Set up load path.
(add-to-list 'load-path user-emacs-directory)
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
(require 'helm-config)
(require 'julia-mode)
(require 'move-text)
(require 'multiple-cursors)
(require 'smart-forward)

;; Setups.
(require 'setup-ace-jump-mode)
(require 'setup-auctex)
(require 'setup-auto-complete)
(require 'setup-browse-kill-ring)
(require 'setup-cc-mode)
(require 'setup-company)
(require 'setup-ecb)
(require 'setup-ediff)
(require 'setup-flycheck)
(require 'setup-flyspell)
(eval-after-load 'ido '(require 'setup-ido))
(require 'setup-magit)
(require 'setup-matlab)
(require 'setup-multi-term)
(require 'setup-org-mode)
(require 'setup-powerline)
(require 'setup-smex)
(require 'setup-undo-tree)
(require 'setup-xcscope)
(require 'setup-yasnippet)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(LaTeX-command "latex -synctex=1")
 '(custom-safe-themes (quote ("645599a2aab022fd7677124515a3104a60ba64d2cafdd77a6e7703f8ae97250c" "c7471ce3bb42defac344b3ecfca74228731b5ab20f804fd1deb8e65dddeab26a" "7122873f9ac192e4f2cfafe1679fe6b3db658ac64593efe4bc10c52d7573c6c1" "943bff6eada8e1796f8192a7124c1129d6ff9fbd1a0aed7b57ad2bf14201fdd4" default)))
 '(ecb-options-version "2.40")
 '(erc-away-timestamp-format "[%H:%M:%S] ")
 '(erc-fill-column 80)
 '(erc-fill-function (quote erc-fill-static))
 '(erc-fill-static-center 15)
 '(erc-insert-timestamp-function (quote erc-insert-timestamp-left-and-right))
 '(erc-modules (quote (autojoin button completion fill irccontrols keep-place list match menu move-to-prompt netsplit networks noncommands readonly ring smiley stamp spelling track)))
 '(erc-nick "Ronis_BR")
 '(erc-nick-uniquifier "_")
 '(erc-port 8001)
 '(erc-server "chat.freenode.org")
 '(erc-timestamp-right-column 82)
 '(mark-even-if-inactive t)
 '(scroll-bar-mode (quote right))
 '(send-mail-function nil)
 '(transient-mark-mode 1))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(bg:erc-color-face1 ((t (:background "black"))) t)
 '(erc-default-face ((t (:foreground "goldenrod"))) t)
 '(erc-input-face ((t (:foreground "gray"))) t)
 '(erc-my-nick-face ((t (:foreground "white smoke" :weight bold))) t)
 '(sr-active-path-face ((t (:foreground "yellow" :weight bold :height 120))) t)
 '(sr-highlight-path-face ((t (:foreground "#ace6ac" :weight bold :height 120))) t)
 '(sr-passive-path-face ((t (:foreground "lightgray" :weight bold :height 120))) t)
 '(sr-tabs-active-face ((t (:inherit variable-pitch :background "dim gray" :weight bold :height 0.9))) t)
 '(sr-tabs-inactive-face ((t (:inherit variable-pitch :height 0.9))) t))
