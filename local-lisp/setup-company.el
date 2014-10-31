;; Author: Ronan Arraes Jardim Chagas <ronisbr@gmail.com>
;;
;; Setup Company-mode
;;
;; WARNING: it requires clang for C++ completion.

(defun tab-indent-or-complete ()
  (interactive)
  (defun check-expansion ()
    (save-excursion
      (if (looking-at "\\_>") t
          (progn (backward-char 1)
                 (if (looking-at "\\.") t
                     (progn (backward-char 1)
                            (if (looking-at "->") t nil)))))))
  (defun do-yas-expand ()
    (let ((yas/fallback-behavior 'return-nil))
      (yas/expand)))
  (if (minibufferp)
      (minibuffer-complete)
      (if (or (not yas/minor-mode)
              (null (do-yas-expand)))
          (if (check-expansion)
              (company-complete-common)
              (indent-for-tab-command)))))

(require 'company)
 
(setq company-idle-delay 0.25)

(add-hook 'after-init-hook 'global-company-mode)

;; Use C++11 standard.
(setq company-clang-arguments
     '("-std=c++11"))

;; Set colors for company-mode.
;(let ((bg (face-attribute 'default :background)))
;  (custom-set-faces
;    '(company-scrollbar-bg ((t (:background "#000E1E"))))
;    '(company-scrollbar-fg ((t (:background "#002646"))))
;    '(company-tooltip ((t (:background "#001530" :foreground "#A5682A"))))
;    '(company-tooltip-selection ((t (:background "#A5682A" :foreground "#001530"))))
;    '(company-tooltip-mouse ((t (:inherit (company-tooltip-selection)))))
;    '(company-tooltip-common ((t (:foreground "#095242" :inherit (company-tooltip)))))
;    '(company-tooltip-common-selection ((t (:background "#191919" :foreground "#DFDFDF"))))
;    '(company-preview ((t (:inherit (company-tooltip)))))
;    '(company-preview-common ((t (:inherit (company-tooltip)))))
;    '(company-preview-search ((t (:inherit (company-tooltip)))))
;    '(company-tooltip-annotation((t (:foreground "#DFDFDF" :inherit (company-tooltip)))))))

(provide 'setup-company)
