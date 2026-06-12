(define (domain depots)
  (:requirements :strips :typing :action-costs)
  (:types depot crate)
  (:predicates
    (at ?c - crate ?d - depot)
    (lifting ?c - crate)
  )
  (:action lift
    :parameters (?c - crate ?d - depot)
    :precondition (and (at ?c ?d) (not (lifting ?c)))
    :effect (and (lifting ?c) (not (at ?c ?d)))
    :cost 1
  )
  (:action drop
    :parameters (?c - crate ?d - depot)
    :precondition (and (lifting ?c))
    :effect (and (at ?c ?d) (not (lifting ?c)))
    :cost 1
  )
)