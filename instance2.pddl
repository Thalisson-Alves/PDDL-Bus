(define (problem joao-e-os-onibus) (:domain onibus-joao)
(:objects 
    s1 s2 s3 s4 s5 - stop
    b1 - bus
    p1 p2 - person
)

(:init
    (at b1 s1)
    (at p1 s2)
    (at p2 s3)
    (connect b1 s1 s2)
    (connect b1 s2 s3)
    (connect b1 s3 s4)
    (connect b1 s4 s5)
    (connect b1 s5 s1)
)

(:goal (and
    (at p1 s4)
    (at p2 s1)
))

;un-comment the following line if metric is needed
; (:metric minimize (???))
)
