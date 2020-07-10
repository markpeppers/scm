; Exercise 2.22
; Fixing the code by using append. The use of append, admittedly, creates a
; recursive process. To correct this, append needs to be made iterative, or I
; should think of a better way of implementing square-list iteratively.
(load "append.scm")
(define (square-list3 items)
  (define (iter things answer)
    (if (null? things)
      answer
      (iter (cdr things)
	    (append answer (list (square (car things))))
	    )))
  (iter items ()))
