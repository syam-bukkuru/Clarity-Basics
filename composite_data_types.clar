;;Composite data types are three types:
;;1. Optionals 
;;2. Responses
;;3. Tuples 

;;These data types more complex types that can contain a number of other types inside of them.

-------------------------------------------------------------------------------------------------------------------------

;;1. All about Optionals 

;;In Clarity, optionals are like nullable values or 'Maybe' monads in other languages
;; - They can either contain a value (some value).
;; - Or represent an absence of value (none).

;; Optionals contains 3 keywords, they are 'some','none', default-to'.  

;; (some u100) ;; Optional containing the unsigned integer 100
;; none ;; No value present
;; (default-to u0 (some u50)) ;; Returns u50
;; (default-to u0 none)       ;; Returns u0


;; Function definition
(define-public (get-safe-value (maybe (optional uint)))    ;; Define a public function `get-safe-value` 
  (ok (default-to u0 maybe))      ;; If `maybe` is none, return u0 (0), else unwrap its value.
)

;; Calls:
;; Case 1: maybe = (some u25)
(get-safe-value (some u25))
;; Returns: (ok u25)

;; Case 2: maybe = none
(get-safe-value none)
;; Returns: (ok u0)


----------------------------------------------------------------------------------------------------------------------------

;;2. Responses

(define-public (divide (a int) (b int))
  (if (= b 0)
    (err u400)    ;; Error if divide by zero
    (ok (/ a b))  ;; Otherwise return result
  )
)

------------------------------------------------------------------------------------------------------------------------------

;;3. Tuples

(define-public (get-user-info)
  (ok {name: "Syam", age: u21})
)

;; Access a value from tuple:
(get name {name: "Syam", age: u21}) ;; returns "Syam"
