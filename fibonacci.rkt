;program to generate nth number of fibonacci series 
(define (fibonacci n)
  (if (<= n 2) 
      1
  (+ (fibonacci(- n 1)) (fibonacci(- n 2)))
))
(fibonacci 6)  

;program to generate fibonacci series using loop

(define (fibo_series n)
    (let loop ((n n) (f1 1) (f2 1) (fs (list)))
      (if (zero? n) (reverse fs)
         (loop (- n 1) f2 (+ f1 f2) (cons f1 fs))
      )
))

(fibo_series 7)

;program to calculate GCD
( define (gcd1 a b)
   (if (zero? b) a
      (gcd1 b (modulo a b))
      )
 )
