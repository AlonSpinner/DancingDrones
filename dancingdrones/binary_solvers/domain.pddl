(define (domain dancing_drones-domain)
 (:requirements :strips :typing)
 (:types robot location)
 (:predicates (robot_at ?r - robot ?l - location) (is_connected ?l_from - location ?l_to - location) (location_is_free ?l - location))
 (:action move
  :parameters ( ?r - robot ?l_from - location ?l_to - location)
  :precondition (and (is_connected ?l_from ?l_to) (robot_at ?r ?l_from) (location_is_free ?l_to))
  :effect (and (not (robot_at ?r ?l_from)) (location_is_free ?l_from) (robot_at ?r ?l_to) (not (location_is_free ?l_to))))
)
