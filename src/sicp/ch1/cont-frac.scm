(define (cont-frac n d k)
  (define (cont-frac-step n d k i)
  (if (> i k)
     1
     (/ (n i) (+ (d i) (cont-frac-step n d k (+ i 1))))))
  (cont-frac-step n d k 1))
(define (phi k)
  (/ 1 (cont-frac (lambda (i) 1.0)
		  (lambda (i) 1.0)
		  k)))
(define (d i)
  (if (= (remainder i 3) 2)
    (* 2 (/ (+ i 1) 3))
    1))
(define (e n)
  (+ 2 (cont-frac (lambda (i) 1.0)
	     d
	     n)))
(define (tan-cf x k)
  (cont-frac
    (lambda(i) (if (= i 1)
		 x
		 (* -1 x x)))
    (lambda (i) (- (* 2 i) 1))
    k))


