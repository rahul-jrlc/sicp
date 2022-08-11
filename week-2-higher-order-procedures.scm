#lang simply-scheme
;HIGHER ORDER PROCEDURES
;A LEVEL OF ABSTRACTION
;KEY IDEA IS GENERALIZING PATTERNS

; SUM OF SQUARES FROM A TO B
(define (sum-square a b)
  (if (> a b)
      0
      (+ (* a a) (sum-square (+ a 1) b))))

;; SUM OF CUBES FROM A THROUGH B
(define (sum-cubes a b)
  (if (> a b)
      0
      (+ (* a a a) (sum-cubes (+ a 1) b))))
;; IN THE TWO PROCEDURES ABOVE, A AND B ARE COMPARED TO
;; KNOW WHEN TO STOP, SUM OF SERIES IS COMPUTED. ONLY
;; DIFFERENCE IS WHAT PROCEDURE IS USED TO COMPUTE THE
;; NEXT TERM OF A
;; THIS PATTERN CAN BE GENERALIZED BY HAVING A FUNCTION
;; THAT COMPUTES THE NEXT A AS AN ARGUMENT
(define (square x)(* x x))
(define (cube x)(* x x x))

;; General Procedure
(define (sum func a b)
  (if (> a b)
      0
      (+ (func a) (sum func (+ a 1) b))))
(sum square 2 5)

;; Examples of generalizing a pattern
(define (evens nums)
  (cond ((empty? nums) '())
        ((= (remainder (first nums) 2) 0)
         (se (first nums) (evens (bf nums))) )
        (else (evens (bf nums))) ))
(evens '(2 3 4 5 6 7 8 9))
;; (2 (evens bf nums))
;; (2 (evens (3 4 5 6 7 8 9))
;; (2 (evens (4 5 6 7 8 9)
;;
;;; Example 2
(define (e-in-word sent)
  (cond ((empty? sent) '())
        ((member? 'e (first sent))
         (se (first sent) (e-in-word (bf sent))))
        (else (e-in-word (bf sent)))))
(e-in-word '(once upon a time))

;;; CAN GENERALIZE BY WRITING A FUNCTION THAT TAKES A
;; PREDICATE AS AN ADDITIONAL ARGUMENT
(define (keep pred sent)
  (cond ((empty? sent) '())
        ((pred (first sent))
         (se (first sent) (keep pred (bf sent))))
        (else (keep pred (bf sent)))))

(define (check-even x)(= (remainder x 2) 0))

(keep check-even '(10 20 22 33 41 78))

;; LAMBDA SPECIAL FORM
;; ANONYMOUS PROCEDURE/FUNCTION
((lambda (x)(* (square x) (square x))) 3)

;; FUNCTIONS AS RETURNED VALUES
(define (add-num num)
  (lambda (x) (+ x num)))
