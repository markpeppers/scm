(define b3 (make-branch 1 3))

(define b4 (make-branch 3 1))

(define m2 (make-mobile b3 b4))

(define b1 (make-branch 2 m2))

(define b2 (make-branch 8 1))

(define m1 (make-mobile b1 b2))

(define (display-balanced m)
  (display (if (balanced? m)
	     "balanced"
	     "not balanced"))
  (newline))

(newline)
(display "m2 ")
(display-balanced m2)

(define mu (make-mobile b3 b2))

(newline)
(display "mu ")
(display-balanced mu)

(define mu2 (make-mobile b1 b4))

(newline)
(display "mu2 ")
(display-balanced mu2)

(newline)
(display "m1 ")
(display-balanced m1)

