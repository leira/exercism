;;; anagram.el --- Anagram (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

(defun anagramp (str1 str2)
  (let ((str1 (downcase str1))
        (str2 (downcase str2)))
    (and (not (equal str1 str2))
         (equal (seq-sort '< str1)
                (seq-sort '< str2)))))

(defun anagrams-for (subject candidates)
  (seq-filter (apply-partially #'anagramp subject) candidates)
)

(provide 'anagram)
;;; anagram.el ends here
