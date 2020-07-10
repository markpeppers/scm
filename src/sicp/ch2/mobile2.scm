; Exercise 2.29
; d -- change representation of mobiles
(define (make-mobile left right)
  (cons left right))

(define (make-branch length structure)
  (cons length structure))

; a
; The only differences are right-branch and branch-structure.
; Both of these refer to the cdr of the object, which is not a pair
; when the underlying data structure is formed by cons instead of list.
(define (left-branch m)
  (car m))

(define (right-branch m)
  (cdr m))
; end differences

(define (branch-length b)
  (car b))

(define (branch-structure b)
  (cdr b))

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


