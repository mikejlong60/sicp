(define (fr n)
    (cond ((< n 3) n)
      (else (+ (fr (- n 1))
               (* (fr (- n 2)) 2)
               (* (fr (- n 3)) 3)
               )
    )))



(define (fi n)
    (if (< n 3)
        n
        (f-iter 2 1 0 n)))

(define (f-iter a b c count)
    (if (< count 3)
        a
        (f-iter (+ a (* 2 b) (* 3 c))
                a
                b
                (- count 1))))