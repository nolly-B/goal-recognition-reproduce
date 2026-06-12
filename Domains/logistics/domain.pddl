(define (domain logistics)
  (:requirements :strips :typing)
  (:types location city truck airplane - location)
  (:predicates
    (at ?obj - (either truck airplane) ?loc - location)
    (in-city ?loc - location ?city - city)
    (connected ?from - location ?to - location)
  )
  (:action drive-truck
    :parameters (?t - truck ?from - location ?to - location)
    :precondition (and (at ?t ?from) (connected ?from ?to))
    :effect (and (at ?t ?to) (not (at ?t ?from)))
  )
  (:action fly-airplane
    :parameters (?a - airplane ?from - location ?to - location)
    :precondition (at ?a ?from)
    :effect (and (at ?a ?to) (not (at ?a ?from)))
  )
)