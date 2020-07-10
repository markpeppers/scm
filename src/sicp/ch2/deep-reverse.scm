; Exercise 2.27
(define (deep-reverse l)
  (define (reverse-step l1 l2)
    (if (null? l1)
      l2
      (let ((r (
		if (pair? (car l1))
		  (deep-reverse (car l1))
		  (car l1)
		)))
	(reverse-step (cdr l1) (cons r l2)
       ))))
  (reverse-step l ()))
