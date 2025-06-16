;; There are four types of primitive data types in Clarity:

;; 1. (Signed) Integers
;; 2. Unsigned Integers
;; 3. Booleans
;; 4. Principals


;; Example on Signed Integer:
(define-public (difference (a int) (b int))
  (ok (- a b)) ;; Subtract two integers
)


;; Example on Unsigned Integer:
(define-constant score u100) ;; A constant with value 100


;; Example on Booleans:
(define-public (is-active (flag bool))
  (if flag
    (ok "Active")
    (ok "Inactive")
  )
)


;; Example on Principal:
;; A public function named check-owner that takes a 'user' of type principal
(define-public (check-owner (user principal))
  
  ;; Compare the caller's address (tx-sender) with the 'user' address passed
  ;; If they match, return (ok true), otherwise (ok false)
  (ok (= tx-sender user))
)
