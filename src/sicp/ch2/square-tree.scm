; Exercise 2.30
(define (square-tree tree)
  (cond ((null? tree) ())
	((not (pair? tree)) (square tree))
	(else (cons (square-tree (car tree))
		    (square-tree (cdr tree))))))

(define (square-tree2 tree)
  (map (lambda (sub-tree)
	 (if (pair? sub-tree)
	   (square-tree2 sub-tree)
	   (square sub-tree)))
       tree))

; Exercise 2.31
(define (tree-map func tree)
  (map (lambda (sub-tree)
	 (if (pair? sub-tree)
	   (tree-map func sub-tree)
	   (func sub-tree)))
       tree))
