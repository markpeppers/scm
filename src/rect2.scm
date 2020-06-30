; Exercise 2.2 - part 2
(load "segments.scm")
(define (make-rect p1 p2)
  (cons p1 p2))
(define (rect-height r)
  (abs (- (y-point (car r)) (y-point (cdr r)))))
(define (rect-width r)
  (abs (- (x-point (car r)) (x-point (cdr r)))))
(define (rect-area r)
  (* (rect-height r) (rect-width r)))
(define (rect-perim r )
  (+ (* 2 (rect-height r))
     (* 2 (rect-width r))))

