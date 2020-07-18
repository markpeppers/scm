(define (filter predicate sequence)
  (cond ((null? sequence) ())
	((predicate (car sequence))
	 (cons (car sequence)
	       (filter predicate (cdr sequence))))
	(else (filter predicate (cdr sequence)))))

(define (accumulate op initial sequence)
  (if (null? sequence)
    initial
    (op (car sequence)
	(accumulate op initial (cdr sequence)))))

; Exercise 2.33
(define (map p sequence)
  (accumulate (lambda (x y) 
		(cons (p x) y))
	      ()
	      sequence))

(define (append seq1 seq2)
  (accumulate cons seq2 seq1))

(define (length sequence)
  (accumulate (lambda (x y) (+ y 1)) 0 sequence))
