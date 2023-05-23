;;; word-count.el --- word-count Exercise (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:


(defun words-list (sentence)
  (split-string
   (replace-regexp-in-string " '\\|' \\|^'\\|'$\\|''+"
                             " "
                             (replace-regexp-in-string "[^[:alnum:]']"
                                                       " "
                                                       (downcase sentence)))))

(defun frequency (seq)
  (let (freq)
    (dolist (element seq freq)
      (cl-incf (alist-get element freq 0 nil 'equal)))))

(defun word-count (sentence)
  (frequency (words-list sentence)))

(provide 'word-count)
;;; word-count.el ends here
