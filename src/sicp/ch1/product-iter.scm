(define (product term a next b)
  (define (iter a result)
    (if (> a b)
      result
      (iter (next a) (* result (term a)))))
  (iter a 1))
(define (fact x)
  (define (inc a) (+ a 1))
  (define (id x) x)
  (product id 1 inc x))
(define (picalc x)
  (define (inc a) (+ a 1))
  (define (even? x)
    (= (remainder x 2) 0))
  (define (num x)
    (if (even? x)
      (+ x 2)
      (+ x 3)
      ))
  (define (den x)
    (if (even? x)
      (+ x 3)
      (+ x 2)
      ))
  (define (val x)
    (/ (num x) (den x)))
  (* 4. (product val 0 inc x)))
