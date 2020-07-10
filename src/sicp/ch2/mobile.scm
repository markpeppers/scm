; Exercise 2.29
(define (make-mobile left right)
  (list left right))

(define (make-branch length structure)
  (list length structure))

; a
(define (left-branch m)
  (car m))

(define (right-branch m)
  (car (cdr m)))

(define (branch-length b)
  (car b))

(define (branch-structure b)
  (car (cdr b)))

; b
(define (is-mobile? s)
  (pair? (car s)))

(define (branch-has-mobile? b)
  (pair? (branch-structure b)))

(define (total-weight m)
  (cond ((is-mobile? m)
	 (+ (total-weight (left-branch m))
	    (total-weight (right-branch m))))
	((branch-has-mobile? m)
	 (total-weight (branch-structure m)))
	(else
	  (branch-structure m))))

; c
(define (balanced? m)
  (if (=
	(* (total-weight (left-branch m)) (car (left-branch m)))
	(* (total-weight (right-branch m)) (car (right-branch m))))
    true
    false))


