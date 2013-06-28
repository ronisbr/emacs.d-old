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

(provide 'setup-auctex)
