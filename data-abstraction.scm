#lang simply-scheme

;; DATA ABSTRACTION

;;Defining selector and constructor procedures
;; for making a rational number
;; 2.1.1: Example: making arithmetic operations for rational
;; numbers

(define (add-rat x y)
  (make-rat (+ (* (numer x) (denom y))
               (* (numer y) (denom x)))
            (* (denom x) (denom y))))

(define (sub-rat x y)
  (make-rat (- (* (numer x) (denom y))
               (* (numer y) (denom x)))
            (* (denom x) (denom y))))

(define (mul-rat x y)
  (make-rat (* (numer x) (numer y))
            (* (denom x) (denom y))))

(define (div-rat x y)
  (make-rat (* (numer x) (denom y))
            (* (denom x) (numer y))))

(define (equal-rat? x y)
  (= (* (numer x) (denom y))
     (* (numer y) (denom x))))

;; ABOVE DEFINED PROCEDURES ARE ARITHMETIC OPERATIONS
;; ON RATIONAL NUMBERS IN TERMS OF SELECTORS NUMER AND
;; DENOM AND CONSTRUCTOR MAKE-RAT --- These selectors
;; and constructors are not yet defined.

;;PAIRS
(define (make-rat n d) (cons n d))
(define (numer x) (car x))
(define (denom x) (cdr x))

(define (print-rat x)
  (newline)
  (display (numer x))
  (display "/")
  (display (denom x)))

(define one-half (make-rat 1 2))
(print-rat one-half)

(define one-third (make-rat 1 3))
(print-rat one-third)

(print-rat (add-rat one-half one-third))
(print-rat (add-rat one-third one-third))




