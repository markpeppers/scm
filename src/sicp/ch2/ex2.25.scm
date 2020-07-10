; Exercise 2.25
(define x (list 1 3 (list 5 7) 9))
(define y (list (list 7)))
(define z (list 1 (list 2 (list 3 (list 4 (list 5 (list 6 7)))))))

(newline)
(display "x: ")
(display
  (car (cdr (car (cdr (cdr x)))))
  )

(newline)
(display "y: ")
(display
  (car (car y))
  )

(newline)
(display "z: ")
(display
  (car
    (cdr
      (car
	(cdr
	  (car
	    (cdr
	      (car
		(cdr
		  (car
		    (cdr
		      (car
			(cdr
			  z))))))))))))
  )
