;;; Scheme code for Twenty-One Simulator [PS2 Fall '90]

(define (twenty-one player-strategy house-strategy)
  (let ((house-initial-hand (make-new-hand (deal))))
    (let ((player-hand
           (play-hand player-strategy
                      (make-new-hand (deal))
                      (hand-up-card house-initial-hand))))
      (if (> (hand-total player-hand) 21)
          0                                ; ``bust'': player loses
          (let ((house-hand 
                 (play-hand house-strategy
                            house-initial-hand
                            (hand-up-card player-hand))))
            (cond ((> (hand-total house-hand) 21)
                   1)                      ; ``bust'': house loses
                  ((> (hand-total player-hand)
                      (hand-total house-hand))
                   1)                      ; house loses
                  (else 0)))))))           ; player loses

(define (play-hand strategy my-hand opponent-up-card)
  (cond ((> (hand-total my-hand) 21) my-hand) ; I lose... give up
        ((strategy my-hand opponent-up-card) ; hit?
         (play-hand strategy
                    (hand-add-card my-hand (deal))
                    opponent-up-card))
        (else my-hand)))                ; stay


(define (deal) (+ 1 (random 10)))

(define (make-new-hand first-card)
  (make-hand first-card first-card))

(define (make-hand up-card total)
  (cons up-card total))

(define (hand-up-card hand)
  (car hand))

(define (hand-total hand)
  (cdr hand))

(define (hand-add-card hand new-card)
  (make-hand (hand-up-card hand)
             (+ new-card (hand-total hand))))

(define (hit? your-hand opponent-up-card)
  (newline)
  (display "Opponent up card ")
  (display opponent-up-card)
  (newline)
  (display "Your Total: ")
  (display (hand-total your-hand))
  (newline)
  (display "Hit? ")
  (user-says-y?))


(define (user-says-y?) (string=? (read-line) "y"))

; Problem 2
(define (stop-at x)
  (lambda (your-hand opponent-up-card)
    (if (< (hand-total your-hand) x)
      true
      false)))

; Problem 3
(define (test-strategy strategy1 strategy2 n)
  (define (iter s1 s2 n wins)
    (if (= n 0)
      wins
      (+ (iter s1 s2 (- n 1) wins) (twenty-one s1 s2))))
  (iter strategy1 strategy2 n 0))

; Problem 4
(define (watch-player strategy)
  (lambda (your-hand opponent-up-card)
    (newline)
    (display "your hand: ")
    (display (hand-total your-hand))
    (display ", opponent up card: ")
    (display opponent-up-card)
    (newline)
    (display "play: ")
    (let ((play (strategy your-hand opponent-up-card)))
      (if play
	(display "hit")
	(display "stay\n"))
      play)
    ))

; Problem 5
(define (louis your-hand opponent-up-card)
  (cond ((< (hand-total your-hand) 12) true) ; hit
	((> (hand-total your-hand) 16) false) ; stand
	((and (= (hand-total your-hand) 12) (< opponent-up-card 4)) true)
	((and (= (hand-total your-hand) 16) (= opponent-up-card 10)) false)
	((> opponent-up-card 6) true)
	(else false)))

; Problem 6
(define (both s1 s2)
  (lambda (your-hand opponent-up-card)
    (if (and (s1 your-hand opponent-up-card) (s2 your-hand opponent-up-card))
      true
      false)))

