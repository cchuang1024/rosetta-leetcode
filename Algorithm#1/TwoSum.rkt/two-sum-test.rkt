#lang racket

(require rackunit
         "two-sum.rkt")

(define nums (list 1 2 3 4))
(define result (list 2 3))

(check-equal? (solution nums 7) result)
