;;; acronym.el --- Acronym (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

(defun acronym (phrase)
  (upcase
   (concat
    (seq-map (lambda (word) (elt word 0))
             (split-string phrase "[[:space:]-]"))))
)

(provide 'acronym)
;;; acronym.el ends here
