; Exercise 2.5
(define (cons a b)
  (if (or (< a 0) (< b 0))
    (error "Only nonnegative integers")
    (* (expt 2 a) (expt 3 b))))
(define (car z)
  (define (carstep z cnt)
    (if (= (remainder z 2) 0)
      (carstep (/ z 2) (+ cnt 1))
      cnt))
  (carstep z 0))
(define (cdr z)
  (define (cdrstep z cnt)
    (if (= (remainder z 3) 0)
      (cdrstep (/ z 3) (+ cnt 1))
      cnt))
  (cdrstep z 0))
