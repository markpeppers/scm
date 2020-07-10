(define (count-leaves i)
  (if (pair? i)
    (+ (count-leaves (car i)) (count-leaves (cdr i)))
    (if (null? i)
      0
      1)))
