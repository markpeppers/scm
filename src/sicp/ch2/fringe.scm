; Exercise 2.28
(define (fringe x)
  (cond ((pair? x) (append (fringe (car x)) (fringe (cdr x))))
	((null? x) ())
	(else (list x))))


