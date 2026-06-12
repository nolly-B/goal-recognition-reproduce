(define (problem depots-goal2)
  (:domain depots)
  (:objects depot1 depot2 depot3 - depot
           crate1 crate2 - crate)
  (:init
    (at crate1 depot1)
    (at crate2 depot1)
  )
  (:goal (and (at crate1 depot2) (at crate2 depot3)))
  (:metric minimize (total-cost))
)