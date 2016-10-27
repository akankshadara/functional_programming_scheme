;get last element of list
(define (get_last ls)
  (if(null? (cdr ls))
     (car ls)
  (get_last (cdr ls))
   )
 )

(get_last '(a b c d))

;get second last element of list
(define (second_last ls)
  (if (null? (cdr (cdr ls)))
      (car ls)
  (second_last (cdr (cdr ls)))
   )
 )

(second_last '(a b c d e f))

;finding kth element in the list
(define (find_kth ls k)
  (if(= k 0)
     (car ls)
     (find_kth (cdr ls) (- k 1))
))

(find_kth '(a b c d e f) 4)
