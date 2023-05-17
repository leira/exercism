;;; bob.el --- Bob exercise (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:
(require 'subr-x)

(defun all-uppercase-p (s)
  "Are all the letters in S in upper case?"
  (let ((case-fold-search nil))
    (and (string-match-p "[[:upper:]]" s)
         (not (string-match-p "[[:lower:]]" s)))))

(defun yellp (phrase)
  (all-uppercase-p phrase))

(defun questionp (phrase)
  (string-suffix-p "?" phrase))

(defun silencep (phrase)
  (string-blank-p phrase))

(defun response-for (phrase)
  (let ((phrase (string-trim phrase)))
    (cond ((and (questionp phrase) (yellp phrase))
           "Calm down, I know what I'm doing!")
          ((questionp phrase)
           "Sure.")
          ((yellp phrase)
           "Whoa, chill out!")
          ((silencep phrase)
           "Fine. Be that way!")
          (t "Whatever.")))
)

(provide 'bob)
;;; bob.el ends here
