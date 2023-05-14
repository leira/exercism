;;; hamming.el --- Hamming (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

(defun hamming-distance (dna1 dna2)
  (if (= (length dna1) (length dna2))
      (seq-count #'not (seq-mapn #'= dna1 dna2))
    (error "DNA strands must be of equal length")))

(provide 'hamming)
;;; hamming.el ends here
