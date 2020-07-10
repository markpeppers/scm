(define (scale-list items factor)
  (define nil ())
    (if (null? items)
      nil
      (cons (* factor (car items)) (scale-list (cdr items) factor))))

; Exercise 2.21
(define (square-list1 items)
  (if (null? items)
    ()
    (cons (* (car items) (car items)) (square-list1 (cdr items)))))

(define (square-list2 items)
  (map (lambda (x) (* x x)) items))

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
