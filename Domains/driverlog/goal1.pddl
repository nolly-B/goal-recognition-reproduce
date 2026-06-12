(define (problem driverlog-goal1)
  (:domain driverlog)
  (:objects driver1 driver2 - driver
           truck1 truck2 - truck
           loc1 loc2 loc3 - location)
  (:init
    (driver-at driver1 loc1)
    (driver-at driver2 loc2)
    (truck-at truck1 loc1)
    (truck-at truck2 loc2)
  )
  (:goal (driver-at driver1 loc2))
)