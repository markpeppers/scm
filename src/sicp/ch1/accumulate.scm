(define (accumulate combiner null-value term a next b)
  (if (> a b)
    null-value
    (combiner (term a)
	      (accumulate combiner null-value term (next a) next b))
    )
  )
(define (sum term a next b)
  (accumulate + 0 term a next b))
(define (pi-sum a b)
  (define (pi-term x)
    (/ 1.0 (* x (+ x 2))))
  (define (pi-next x)
    (+ x 4))
  (* 8 (sum pi-term a pi-next b)))


