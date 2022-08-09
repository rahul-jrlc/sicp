#lang sicp
;Procedure definitions - naming compound operations
; and manipulating them as units
(define (square x)(* x x))
;compound procedures
(define (sos x y)(+ (square x)(square y)))
(define (abs x)
  (cond ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x))))
; EXERCISE 1.1
10
(+ 5 3 4)
(- 9 1)
(/ 6 2)
(define a 3)
(define b (+ a 1))
(+ a b (* a b))
(= a b)
(if (and (> b a) (< b (* a b)))
    b
    a)
(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))
(+ 2 (if (> b a)
         b
         a))

; EXERCISE 1.2
(/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5)))))(* 3 (- 6 2)(- 2 7)))

;EXERCISE 1.3
(define (sosl q w r)
  (cond ((and (< q r)(< q w)) (+ (* r r)(* w w)))
        ((and (< w q)(< w r)) (+ (* q q)(* r r)))
        ((and (< r q)(< r w)) (+ (* q q)(* w w)))))
(sosl 2 3 4)
(sosl 10 11 12)

