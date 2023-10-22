(define (over-or-under num1 num2) (if (< num1 num2) -1 (if (= num1 num2) 0 1)))

(define (composed f g) (define (new x) (f (g x))) new )

(define (square n) (* n n))

(define (pow base exp) (if (= exp 1) base  (if (odd? exp) (* base (pow base (- exp 1))) (pow (* base base) (/ exp 2)))))

(define (ascending? lst)
  (define (foo last lst)
    (if (null? lst)
        #t
        (if (< (car lst) last)
            #f
            (foo (car lst) (cdr lst)))))
  (if (null? lst)
      #t
      (foo (car lst) (cdr lst))))