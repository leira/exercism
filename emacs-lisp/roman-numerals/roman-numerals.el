;;; roman-numerals.el --- roman-numerals Exercise (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

(defun to-roman-with-digits (value digits)
  (if (<= value 0)
      ""
    (pcase-let ((`(,v . ,d) (car digits)))
      (if (<= v value)
          (concat d (to-roman-with-digits (- value v) digits))
        (to-roman-with-digits value (cdr digits))))))

(defun to-roman (value)
  (let ((roman-digits '((1000 . "M")
                        (900 . "CM")
                        (500 . "D")
                        (400 . "CD")
                        (100 . "C")
                        (90 . "XC")
                        (50 . "L")
                        (40 . "XL")
                        (10 . "X")
                        (9 . "IX")
                        (5 . "V")
                        (4 . "IV")
                        (1 . "I"))))
    (to-roman-with-digits value roman-digits))
)

(provide 'roman-numerals)
;;; roman-numerals.el ends here
