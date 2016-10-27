;counting the number of zeroes in given list
(define (zeros ls count)
  (cond
    ((null? ls) count)
    ((zero? (car ls))
     (zeros (cdr ls) (+ count 1)))
    (else (zeros (cdr ls) count)))
 )
 

(zeros (list '1 '0 '2 '0 '7 '0) 0)

;a program to reverse a list
( define (reverse1 ls)
   (if (null? ls) '()
       (append (reverse1 (cdr ls)) (list (car ls))) 
    )
 
 )

(reverse (list '1 '2 '3 '4 '5))

; reversing list using tail recursion


(define (reverse2 list acc)
  (if (null? list) acc
      (reverse2 (cdr list) (cons (car list) acc))
  ))

(reverse2 (list '1 '2 '3) '())

;to find the length of a list
(define (length1 ls)
  (if (null? ls) 0
      (+ 1 (length1(cdr ls)))
      )
 )

(length1 '('1 '2))


;to find the length of a list using tail recursion
(define (length2 ls acc)
  (if(null? ls)
     acc
     (length2 (cdr ls) (+ acc 1))
   )
 )

(length2 '('1 '2 '3) 0)


;a program to check palindrome
(define is_palindrome
  (lambda(ls) (equal? ls (reverse1 ls))
   )
 )

(is_palindrome '(1 2 2 1 4))
