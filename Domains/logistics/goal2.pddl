(define (problem logistics-goal2)
  (:domain logistics)
  (:objects cityA cityB - city
           loc1 loc2 loc3 - location
           truck1 - truck
           airplane1 - airplane
           package1 - location)
  (:init
    (at truck1 loc1)
    (at airplane1 loc2)
    (in-city loc1 cityA)
    (in-city loc2 cityA)
    (in-city loc3 cityB)
    (connected loc1 loc2)
    (connected loc2 loc1)
    (connected loc2 loc3)
    (connected loc3 loc2)
  )
  (:goal (and (at truck1 loc3) (at airplane1 loc1)))
)