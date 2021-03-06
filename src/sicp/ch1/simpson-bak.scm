(define (sum term a next b)
  (if (> a b)
    0
    (+ (term a)
       (sum term (next a) next b))))
(define (simpson f a b n)
  (define h (/ (- b a) n))
  (define (inc k) (+ k 1))
  (define (yk k)
    (cond ((= k 0) (f a))
	  ((= k n) (f b))
	  ((= (remainder k 2) 0) (* 2 (f (+ a (* k h))
					 )))
	  (else (* 4 (f (+ a (* k h))
			))))
    )
  (/ (* h (sum yk 0 inc n)) 3.)
  )

