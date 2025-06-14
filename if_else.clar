(define-public (check-even (num int))
  (if (is-eq (mod num 2) 0)
    (ok "Even")     ;; if true
    (ok "Odd")      ;; else
  )
)


;; "is-eq" keyword checks equality
;; "mod" keyword is modulo operator