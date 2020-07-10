; Exercise 2.23
(define (for-each proc items)
  (if (null? items)
    true
    (and
      (proc (car items))
      (for-each proc (cdr items))
      )))
