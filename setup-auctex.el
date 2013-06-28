;; Author: Ronan Arraes Jardim Chagas <ronisbr@gmail.com>
;;
;; Setup auctex
;;
;; From: http://www.emacswiki.org/emacs/AUCTeX

(setq TeX-auto-save t)                                                                         
(setq TeX-parse-self t)                                                                        
(setq-default TeX-master nil)                                                                  
(add-hook 'LaTeX-mode-hook 'visual-line-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)

(setq reftex-plug-into-AUCTeX t)

;; Use PDFLaTeX.
(setq TeX-PDF-mode t)

;; Increase the font size of the preview.
(set-default 'preview-scale-function 1.1)

;; Set default pdf viewer.
;;
;; Modified from:
;; https://bugs.kde.org/show_bug.cgi?id=274294#c20
;;

(add-hook 'LaTeX-mode-hook '(lambda ()
    (add-to-list 'TeX-expand-list 
        '("%u" Okular-make-url))))

(defun Okular-make-url () (concat
    "file://\"" 
    (expand-file-name (funcall file (TeX-output-extension) t)
        (file-name-directory (TeX-master-file))) 
    "\"#src:"
    (TeX-current-line)
    "\""
    (expand-file-name (TeX-master-directory)) 
    (TeX-current-file-name-master-relative)
    "\""))

(setq TeX-view-program-list
      '(("Okular" "okular --unique %u")))

(setq TeX-view-program-selection '((output-pdf "Okular")))

;; ----------------------------------------------------------------------------
;; synctex
;;
;; Thanks to http://www.kevindemarco.com
;;
;; Okular setup: 
;;
;; 1.) Open Okular
;; 2.) Settings -> Configure Okular -> Editor
;; 3.) Set Editor to "Emacs client"
;; 4.) Command should automatically set to: 
;;         emacsclient -a emacs --no-wait +%l %f
;; ----------------------------------------------------------------------------

;; Only start server for okular communication when in latex mode.
;(add-hook 'LaTeX-mode-hook 'server-start)

;; Enable synctex correlation.
(setq TeX-source-correlate-method 'synctex)

;; Enable synctex generation. Even though the command shows as "latex" pdflatex
;; is actually called.
(custom-set-variables '(LaTeX-command "latex -synctex=1") )

(provide 'setup-auctex)
