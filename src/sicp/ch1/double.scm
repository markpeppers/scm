; Exercise 1.41
(define (double g)
  (lambda (x) (g (g x))))
