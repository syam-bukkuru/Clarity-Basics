;;Sequence types represent values that hold a sequence of data.
;;These are generally representative of dynamic-length values which are not fixed in size, but they do have a maximum length.

;;There are three types of sequences:

;; 1.Buffers
;; 2.Strings
;; 3.Lists

------------------------------------------------------------

;; 1. About Buffers:

;; A buffer is a fixed-length sequence of bytes. Buffers are useful for things like hashing, addresses, and encoding binary data.

;; Syntax: 
(buff N) ;; N = maximum number of bytes allowed


(define-public (buffer-example)
  (ok 0x414243) ;; Hex for ABC (as bytes)
)

--------------------------------------------------------------

;; 2. About Strings

(string-ascii 10) ;; max 10 ASCII chars
(string-utf8 15)  ;; max 15 UTF-8 chars(supports emojis,etc.)


(define-public (hello)
  (ok "Hello!") ;; This is an ASCII string
)

;; Note:
;; You must specify a max size when used in a map or data schema.
;; Internally, strings are immutable and limited to a maximum of 1 KB.

----------------------------------------------------------------

;; 3. About Lists

;; A list is a fixed-size collection of elements of the same type.

;; Syntax:
(list T N) ;; T = type of elements, N = max number of elements


(define-public (sum-list)
  (let (
    (nums (list u5 u10 u15)) ;; A list of 3 uints
  )
    (ok (+ (at nums u0) (at nums u1) (at nums u2)))
  )
)


;; Note:
;; List elements must be of the same type (uint, int, etc.).
;; Max size (N) is fixed at declaration.
;; Lists can be used with helper functions like len, append, at, fold, etc.