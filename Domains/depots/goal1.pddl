(define (problem depots-goal1)
  (:domain depots)
  (:objects depot1 depot2 depot3 - depot
           crate1 crate2 - crate)
  (:init
    (at crate1 depot1)
    (at crate2 depot1)
  )
  (:goal (at crate1 depot2))
)