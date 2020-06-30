; Exercise 2.20
(load "append.scm")
(define (same-parity t . vals)
  (define (same-parity-step t result vals)
    (if (null? vals)
      result
      (if (= (remainder t 2) (remainder (car vals) 2))
        (same-parity-step t (append result (list (car vals))) (cdr vals))
        (same-parity-step t result (cdr vals)))))
  (same-parity-step t (list t) vals))
