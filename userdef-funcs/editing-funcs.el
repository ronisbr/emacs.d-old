;; Author: Ronan Arraes Jardim Chagas <ronisbr@gmail.com>
;;
;; User-defined functions: Text editing.
;;

(defun copy-line (arg)
    "Copy to end of line, or as many lines as prefix argument"
    (interactive "P")
    (if (null arg)
        (copy-to-end-of-line)
        (copy-whole-lines (prefix-numeric-value arg))))

(defun copy-to-end-of-line ()
    (interactive)
    (kill-ring-save (point)
        (line-end-position))
        (message "Copied to end of line"))

(defun duplicate-current-line (num)
    "Duplicate the current line NUM times."
    (interactive "p")
    (when (eq (point-at-eol) (point-max))
        (goto-char (point-max))
        (newline)
        (forward-char -1))
        (duplicate-region num (point-at-bol) (1+ (point-at-eol))))

(defun duplicate-current-line-or-region (arg)
    "Duplicates the current line or region ARG times.
If there's no region, the current line will be duplicated."
    (interactive "p")
    (save-excursion
        (if (region-active-p)
            (duplicate-region arg)
            (duplicate-current-line arg))))

(defun duplicate-region (num &optional start end)
    "Duplicates the region bounded by START and END NUM times.
     If no START and END is provided, the current region-beginning and
     region-end is used."
     (interactive "p")
     (let* ((start (or start (region-beginning)))
            (end (or end (region-end)))
            (region (buffer-substring start end)))
            (goto-char start)
            (dotimes (i num)
            (insert region))))

(defun kill-and-retry-line ()
    "Kill the entire current line and reposition point at indentation"
    (interactive)
    (back-to-indentation)
    (kill-line))

(defun kill-region-or-backward-word ()
    "Kill selected region if region is active. Otherwise kill a backward word."
    (interactive)
    (if (region-active-p)
        (kill-region (region-beginning) (region-end))
            (backward-kill-word 1)))

(defun kill-to-beginning-of-line ()
    (interactive)
    (kill-region (save-excursion (beginning-of-line) (point))
                 (point)))

(defun save-region-or-current-line (arg)
    (interactive "P")
    (if (region-active-p)
        (kill-ring-save (region-beginning) (region-end))
        (copy-line arg)))
