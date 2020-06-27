; Exercise 1.44
(define (smooth f)
  (let ((dx .001))
    (lambda (x)
      (/ (+ (f (- x dx)) (f x) (f (+ x dx)))
	 3))))
(define (smoothn f n)
  (lambda (x) ((repeated smooth n) (f x))))
