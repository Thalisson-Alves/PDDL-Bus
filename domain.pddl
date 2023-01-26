(define (domain onibus-joao)
(:requirements :typing :equality)
(:types 
    bus person - movable 
    stop - locale
  )

(:predicates (at ?m - movable ?l - locale)
	         (in ?p - person ?b - bus)
     	     (connect ?b - bus ?l1 ?l2 - stop)
  )

(:action drive 
	 :parameters (?b - bus ?l1 ?l2 - stop)
	 :precondition (and 
        (connect ?b ?l1 ?l2)
        (at ?b ?l1)
     )
	 :effect (and
		   (not (at ?b ?l1))
		   (at ?b ?l2)
        )
)


(:action pick-bus
	 :parameters (?p - person ?b - bus ?l - stop)
	 :precondition (and (at ?p ?l)
			    (at ?b ?l)
			    )
	 :effect (and
		   (not (at ?p ?l))
		   (in ?p ?b)
        )
)

(:action drop-bus
	 :parameters (?p - person ?b - bus ?l - stop)
	 :precondition (and (in ?p ?b)
			    (at ?b ?l))
	 :effect (and
		   (not (in ?p ?b))
		   (at ?p ?l))
)

)
