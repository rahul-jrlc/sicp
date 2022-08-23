#lang simply-scheme

(define (sum func a b)
  (if (> a b)
      0
      (+ (func a) (sum func (+ a 1) b))))

(define (cube x)(* x x x))

(sum cube 2 4)
(sum cube 1 10)
(sum (lambda (x)(* x x x)) 1 10)

;;; USING LET TO CREATE LOCAL VARIABLES
;;; FINDING TWO REAL ROOTS OF A QUADRATIC EQUATION

(define (roots a b c)
  (se (/ (+ (- b) (sqrt (- (* b b) (* 4 a c)))) (* 2 a))
      '(and)
      (/ (+ (- b) (sqrt (- (* b b) (* 4 a c)))) (* 2 a))))

(roots 2 3 4)
;; HAVE TO COMPUTE SQUARE ROOT TWICE WHICH IS INEFFICIENT
;; CAN CREATE A HELPER FUNCTION THAT COMPUTES SQUARE ROOT OF
;; DISCRIMINANT ONCE
(define (roots-quad a b c)
  (define (roots1 d)
    (se (/ (+ (- b) d) (* 2 a))
        '(and)
        (/ (- (- b) d) (* 2 a))))
  (roots1 (sqrt (- (* b b) (* 4 a c)))))
(roots-quad 2 3 4)

;; CAN USE LAMBDA TO MAKE THE ROOTS 1 FUNCTION AS AN
;; ANONYMOUS FUNCTION, SINCE ONE TIME USE

(define (roots-quad2 a b c)
  ((lambda (d)
     (se (/ (+ (- b) d) (* 2 a))
         '(and)
         (/ (- (- b) d (* 2 a)))))
   (sqrt (- (* b b) (* 4 a c)))))
(roots-quad2 4 5 6)
