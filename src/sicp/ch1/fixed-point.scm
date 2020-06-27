(define tolerance .0001)
(define (fixed-point f guess)
  (define (close-enough? x y) (< (abs (- x y)) tolerance))
  (let ((next (f guess)))
    (newline)
    (display next)
    (if (close-enough? next guess)
      next
      (fixed-point f next))))
(define (solve y)
  (fixed-point (lambda (x) (/ (log 1000) (log x))) y))
(define (average x y) (/ (+ x y) 2))
(define (solve-damped y)
  (fixed-point (lambda (x) (average x (/ (log 1000) (log x)))) y))
