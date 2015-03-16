(define (fr n)
    (cond ((< n 3) n)
      (else (+ (fr (- n 1))
               (* (fr (- n 2)) 2)
               (* (fr (- n 3)) 3)
               )
    )))


(define (f n)
    (if (< n 3)
        n
        (fi-iter 0 n))
)

;Not correct yet
(define (fi-iter currentSum count)
    (if (= count 3)
        currentSum
        (fi-iter (+ currentSum (+ (- count 1) (* (- count 2) 2) (* (- count 3) 3))) (- 1 count))
;        (+ (fi-iter currentSum (- count 1)) (* ((fi-iter currentSum (- count 2)) 2)) (* ((fi-iter currentSum (- count 3)) 3)))
    ))


(define (testf n)
    (= (f n) (fr n)))


;Look at this for inspiration

(define (fib2 n)
    (fib-iter 1 0 n))

(define (fib-iter a b count)
    (if (= count 0)
        b
        (fib-iter (+ a b) a (- count 1))))