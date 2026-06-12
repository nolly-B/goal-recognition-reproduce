(define (domain woodworking)
  (:requirements :strips :typing :action-costs)
  (:types wood machine)
  (:predicates
    (raw ?w - wood)
    (processed ?w - wood)
    (at ?w - wood ?m - machine)
    (available ?m - machine)
  )
  (:action process
    :parameters (?w - wood ?m - machine)
    :precondition (and (raw ?w) (at ?w ?m) (available ?m))
    :effect (and (processed ?w) (not (raw ?w)) (not (available ?m)))
    :cost 1
  )
  (:action reset
    :parameters (?m - machine)
    :precondition (not (available ?m))
    :effect (available ?m)
    :cost 1
  )
)