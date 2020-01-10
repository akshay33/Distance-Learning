(define (problem p1) (:domain maze)
(:objects
start goal A B C D E F J cross - cell
)

(:init
(= (length start D) 19)
(= (length start C) 5)
(= (length C B) 6)
(= (length D cross) 1)
(= (length B cross) 2)
(= (length A cross) 2)
(= (length cross B) 7)
(= (length cross F) 21)
(= (length cross A) 7)
(= (length B E) 8)
(= (length E A) 7)
(= (length E J) 7)
(= (length A E) 6)
(= (length A J) 7)
(= (length J goal) 3)
(= (length F goal) 1)
;(= (length start cross) 6)
;(= (length cross goal) 2)

(can_go start C) (can_go start D) (can_go C B) (can_go D cross)
(can_go B cross) (can_go A cross) (can_go cross B) 
(can_go cross F) (can_go cross A) (can_go B E) (can_go E A) (can_go E J)
(can_go A E) (can_go A J) (can_go J goal) (can_go F goal)
;(can_go start cross) (can_go cross goal)

(at start)
)

(:goal (at goal))

(:metric minimize (total-cost))
)
