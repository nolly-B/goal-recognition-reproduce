(define (domain driverlog)
  (:requirements :strips :typing :action-costs)
  (:types driver truck location)
  (:predicates
    (driver-at ?d - driver ?l - location)
    (truck-at ?t - truck ?l - location)
    (driving ?d - driver ?t - truck)
  )
  (:action board
    :parameters (?d - driver ?t - truck ?l - location)
    :precondition (and (driver-at ?d ?l) (truck-at ?t ?l))
    :effect (and (driving ?d ?t) (not (driver-at ?d ?l)))
    :cost 1
  )
  (:action drive
    :parameters (?t - truck ?from - location ?to - location)
    :precondition (truck-at ?t ?from)
    :effect (and (truck-at ?t ?to) (not (truck-at ?t ?from)))
    :cost 1
  )
  (:action disembark
    :parameters (?d - driver ?t - truck ?l - location)
    :precondition (and (driving ?d ?t) (truck-at ?t ?l))
    :effect (and (driver-at ?d ?l) (not (driving ?d ?t)))
    :cost 1
  )
)