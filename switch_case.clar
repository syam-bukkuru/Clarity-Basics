;; Define a public function named `describe` that takes one parameter `code` of type int
(define-public (describe (code int))
  
  ;; Use `match` to compare the value of `code` with predefined cases
  (match code
    1 (ok "One")        ;; If `code` is 1, return the response (ok "One")
    2 (ok "Two")        ;; If `code` is 2, return the response (ok "Two")
    _ (ok "Other")      ;; For all other values of `code`, return (ok "Other") as the default case
  )
)