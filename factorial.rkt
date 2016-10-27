;program to calculate factorial of a number
(define (factorial n)
  (if(<= n 1)
     1
  (* n (factorial (- n 1)))
 )
)
(factorial 4)

;program to calculate factorial of a number using accumulator (tail recursion)
(define (factorial2 n acc)
  (if (<= n 1) acc
  (factorial2 (- n 1) (* acc n))
 ))

(factorial2 5 1)
