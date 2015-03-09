(define (fr n)
    (cond ((< n 3) n)
      (else (+ (fr (- n 1))
               (* (fr (- n 2)) 2)
               (* (fr (- n 3)) 3)
               )
    )))


(define (f n)
    (fi-iter 0 n))

;Not correct yet
(define (fi-iter result n)
    (if (< n 3)
        result
        (fi-iter (+ (- n 1) (* (- n 2) 2) (* (- n 3) 3)) (- n 1))
    ))


(define (testf n)
    (= (f n) (fr n)))
