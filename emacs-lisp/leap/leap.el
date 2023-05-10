;;; leap.el --- Leap exercise (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

(defun leap-year-p (year)
;;; Code:
  (cond ((zerop (% year 400)) t)
        ((zerop (% year 100)) nil)
        ((zerop (% year 4)) t)
        (t nil))
)

(provide 'leap-year-p)
;;; leap.el ends here
