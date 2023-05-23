;;; acronym.el --- Acronym (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

(defun acronym (phrase)
  (mapconcat (lambda (word) (upcase (substring word 0 1)))
             (split-string phrase "[[:space:]-]")
             ""))

(provide 'acronym)
;;; acronym.el ends here
