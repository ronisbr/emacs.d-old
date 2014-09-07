;; Author: Ronan Arraes Jardim Chagas <ronisbr@gmail.com>
;;
;; Setup org-mode
;;

(require 'org-mime)

;; Logging.
(setq org-log-done 'time)

;; TODO items.
(setq org-todo-keywords
    '((sequence "TODO(t)" "IN PROGRESS(p!)" "WAIT(w@)" "|" "DONE(d)" "DELEGATED(l@)")
      (sequence "REPORT(r!)" "BUG(b!)" "KNWONCAUSE(k!)" "|" "FIXED(f)")
      (sequence "QUESTION(q)" "|" "SOLVED(s)") 
      (sequence "|" "CANCELED(c)")))

;; TODO items colors.
;; org-mode colors
(setq org-todo-keyword-faces
    '(
         ("TODO"        . (:foreground "red" :weight bold))
         ("DONE"        . (:foreground "green" :weight bold))
         ("CANCELED"    . (:foreground "black" :background "goldenrod" :weight bold))
         ("IN PROGRESS" . (:foreground "gold" :weight bold))
         ("WAIT"        . (:foreground "IndianRed" :weight bold))
         ("REPORT"      . (:foreground "DeepSkyBlue" :weight bold))
         ("BUG"         . (:foreground "white" :background "red3" :weight bold))
         ("QUESTION"    . (:foreground "orange" :weight bold))
         ("SOLVED"      . (:foreground "SpringGreen" :weight bold))
     ))

;; Agenda files.
(setq org-agenda-files 
    (list 
        "~/Documentos/org/agenda.org"
        "~/Documentos/org/projeto_amazonia_1.org"
    ))

;; Set default e-mail program.
(setq browse-url-mailto-function 'browse-url-generic)
(setq browse-url-generic-program "xdg-open")

;; Open files with external softwares.
(eval-after-load "org"
    '(progn
         ;; Change .pdf association directly within the alist
         (setcdr (assoc "\\.pdf\\'" org-file-apps) "okular %s")))

(provide 'setup-org-mode)
