(define (p n k)
  (if (or (= k 0) (= k n))
    1
    (+ (p (- n 1) (- k 1)) (p (- n 1) k))
    )
  )
