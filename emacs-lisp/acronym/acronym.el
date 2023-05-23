;;; acronym.el --- Acronym (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

(defun acronym (phrase)
  (upcase
   (concat
    (seq-map #'string-to-char
             (split-string phrase "[[:space:]-]"))))
)

(provide 'acronym)
;;; acronym.el ends here
