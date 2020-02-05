;;; ebnf-mode --- Major mode for *.ebnf files
;;; Commentary:

;;; Code:
(define-generic-mode 'ebnf-mode
  '(("(*" . "*)"))
  '()
  '(("^[^ \t\r\n]+[^\r\n=]*" . font-lock-type-face)
    ("\\?.*\\?" . font-lock-doc-face)
    ("[{}()[]\\|\\]" . font-lock-negation-char-face)
    ("[,|*]" . font-lock-builtin-face)
    ("[^ \t\n.;=]" . font-lock-keyword-face))
  '("\\.ebnf\\'")
  '((lambda ()
      (modify-syntax-entry ?' "\"")
      (setq mode-name "EBNF")))
  "Major mode for EBNF metasyntax text highlighting.")

(provide 'ebnf-mode)
;;; ebnf-mode ends here
