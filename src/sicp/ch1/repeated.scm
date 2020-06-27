; Exercise 1.42
(define (compose f g)
  (lambda (x) (f (g x))))

; Exercise 1.43
(define (repeated g n)
  (if (< n 1)
    (lambda (x) x)
    (compose g (repeated g (- n 1)))))


