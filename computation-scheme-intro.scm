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
(abs -9)