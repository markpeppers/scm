(define (append l1 l2)
  (if (null? l1)
    l2
    (cons (car l1) (append (cdr l1) l2))))

; Exercise 2.17
(define (last-pair l)
  (if (null? (cdr l))
    l
    (last-pair (cdr l))))

; Exercise 2.18
(define (reverse l)
  (define (reverse-step l1 l2)
    (if (null? l1)
      l2
      (reverse-step (cdr l1) (cons (car l1) l2))))
  (reverse-step l ()))
