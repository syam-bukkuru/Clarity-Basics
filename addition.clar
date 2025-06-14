(define-public (example-addition)
  (let (
    (x 5)        ;; declare x = 5
    (y 10)       ;; declare y = 10
  )
    (ok (+ x y)) ;; return the sum x + y as an OK result
  )
)


;; "let" keyword creates local variables (only used inside this function)
;; "ok" keyword wraps the result in a success response