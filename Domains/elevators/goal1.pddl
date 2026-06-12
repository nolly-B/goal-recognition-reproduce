(define (problem elevators-goal1)
  (:domain elevators)
  (:objects e1 e2 - elevator
           f1 f2 f3 f4 f5 - floor)
  (:init
    (at e1 f1)
    (at e2 f2)
    (above f2 f1)
    (above f3 f2)
    (above f4 f3)
    (above f5 f4)
  )
  (:goal (at e1 f4))
)