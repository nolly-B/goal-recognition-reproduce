(define (domain elevators)
  (:requirements :strips :typing :equality)
  (:types elevator floor)
  (:predicates
    (at ?e - elevator ?f - floor)
    (above ?f1 - floor ?f2 - floor)
  )
  (:action up
    :parameters (?e - elevator ?from - floor ?to - floor)
    :precondition (and (at ?e ?from) (above ?to ?from))
    :effect (and (at ?e ?to) (not (at ?e ?from)))
  )
  (:action down
    :parameters (?e - elevator ?from - floor ?to - floor)
    :precondition (and (at ?e ?from) (above ?from ?to))
    :effect (and (at ?e ?to) (not (at ?e ?from)))
  )
)