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
(set-default 'preview-scale-function 1.4)

;; Set default pdf viewer.
(setq TeX-view-program-list
      '(("Okular" "okular --unique %o#src:%n%b")))
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
(add-hook 'LaTeX-mode-hook 'server-start)

;; Enable synctex correlation.
(setq TeX-source-correlate-method 'synctex)

;; Enable synctex generation. Even though the command shows as "latex" pdflatex
;; is actually called.
(custom-set-variables '(LaTeX-command "latex -synctex=1") )

(provide 'setup-auctex)
