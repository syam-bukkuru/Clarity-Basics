;; This is a comment in Clarity

(define-public (say-hello)
  ;; This function returns a hello message
  (ok "Hello, World!"))

;; Clarity does not support block (multi-line) comments


;; Code explanation:
;; "define-public" — defines a publicly callable function.
;; "say-hello" — function name.
;; '(ok "Hello, World!")' — returns a success response wrapping the string.