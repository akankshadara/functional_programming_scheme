;If a list contains repeated elements they should be replaced
;with a single copy of the element. The order of the elements
;should not be changed.
(define (elim_duplicates ls)
  (cond
    ((null? ls) '())
    ((null? (cdr ls)) ls)
    ((eq? (car ls) (car(cdr ls))) (elim_duplicates (cdr ls)))
    (else
        (cons (car ls) (elim_duplicates (cdr ls)))
     )
   )
 )

(elim_duplicates '(a a a a a a b b b b c c c f f g a a b b b))
