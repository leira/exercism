;;; rna-transcription.el -- RNA Transcription (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:


(defun to-rna-1 (nt)
  (cl-case nt
    (?G ?C)
    (?C ?G)
    (?T ?A)
    (?A ?U)))

(defun to-rna (strand)
  (concat (seq-map #'to-rna-1 strand))
)

(provide 'rna-transcription)
;;; rna-transcription.el ends here
