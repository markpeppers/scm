; Exercise 2.2
(load "segments.scm")
(define (make-rect p1 p2)
  (make-segment p1 p2))
(define (rect-height r)
  (abs (- (y-point (end-segment r)) (y-point (start-segment r)))))
(define (rect-width r)
  (abs (- (x-point (end-segment r)) (x-point (start-segment r)))))
(define (rect-area r)
  (* (rect-height r) (rect-width r)))
(define (rect-perim r )
  (+ (* 2 (rect-height r))
     (* 2 (rect-width r))))

