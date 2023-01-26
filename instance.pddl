(define (problem joao-e-os-onibus) (:domain onibus-joao)
(:objects 
    s1 s2 s3 s4 - stop
    b1 - bus
    p1 - person
)

(:init
    (at b1 s1)
    (at p1 s2)
    (connect b1 s1 s2)
    (connect b1 s2 s3)
    (connect b1 s3 s4)
    (connect b1 s4 s1)
)

(:goal (and
    (at p1 s4)
))

;un-comment the following line if metric is needed
; (:metric minimize (???))
)
