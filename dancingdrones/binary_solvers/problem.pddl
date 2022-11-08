(define (problem dancing_drones-problem)
 (:domain dancing_drones-domain)
 (:objects 
   r0 r1 r2 r3 r4 r5 r6 r7 r8 r9 - robot
   l0 l1 l2 l3 l4 l5 l6 l7 l8 l9 l10 l11 - location
 )
 (:init (is_connected l0 l1) (is_connected l0 l2) (is_connected l0 l6) (is_connected l1 l0) (is_connected l1 l2) (is_connected l1 l7) (is_connected l2 l0) (is_connected l2 l1) (is_connected l2 l3) (is_connected l2 l4) (is_connected l2 l8) (is_connected l3 l2) (is_connected l3 l4) (is_connected l3 l5) (is_connected l3 l9) (is_connected l4 l2) (is_connected l4 l3) (is_connected l4 l5) (is_connected l4 l10) (is_connected l5 l3) (is_connected l5 l4) (is_connected l5 l11) (is_connected l6 l0) (is_connected l6 l7) (is_connected l6 l8) (is_connected l7 l1) (is_connected l7 l6) (is_connected l7 l8) (is_connected l8 l2) (is_connected l8 l6) (is_connected l8 l7) (is_connected l8 l9) (is_connected l8 l10) (is_connected l9 l3) (is_connected l9 l8) (is_connected l9 l10) (is_connected l9 l11) (is_connected l10 l4) (is_connected l10 l8) (is_connected l10 l9) (is_connected l10 l11) (is_connected l11 l5) (is_connected l11 l9) (is_connected l11 l10) (robot_at r0 l7) (robot_at r1 l5) (robot_at r2 l2) (robot_at r3 l9) (robot_at r4 l11) (robot_at r5 l4) (robot_at r6 l8) (robot_at r7 l1) (robot_at r8 l0) (robot_at r9 l10) (location_is_free l3) (location_is_free l6))
 (:goal (and (robot_at r0 l5) (robot_at r1 l4) (robot_at r2 l1) (robot_at r3 l2) (robot_at r4 l11) (robot_at r5 l6) (robot_at r6 l7) (robot_at r7 l0) (robot_at r8 l3) (robot_at r9 l9)))
)
