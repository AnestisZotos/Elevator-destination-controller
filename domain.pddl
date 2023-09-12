(define (domain ControllerDomain)
(:requirements :strips)
(:predicates
    (Elevator ?x) (Floor ?x) (User ?x)
    (at ?Elevator ?Floor) (located ?User ?Floor) (desired ?User ?Floor)
    (serves ?Elevator ?Floor) )
(:action moveUser
    :parameters ( ?user1 ?flr1 ?flr2 ?elev1 )
    :precondition (and (User ?user1) (Floor ?flr1) (Floor ?flr2) (Elevator ?elev1) 
    (located ?user1 ?flr1) (desired ?user1 ?flr2) (serves ?elev1 ?flr1)
    (serves ?elev1 ?flr2) (at ?elev1 ?flr1) )
    :effect (and (located ?user1 ?flr2) (at ?elev1 ?flr2) (not (located ?user1 ?flr1))
    (not (at ?elev1 ?flr1)) (not (desired ?user1 ?flr2)) ) )
(:action moveElevator
    :parameters (?el1 ?flr1 ?flr2)
    :precondition (and (Elevator ?el1) (Floor ?flr1) (Floor ?flr2) (serves ?el1 ?flr1)
    (serves ?el1 ?flr2) (at ?el1 ?flr1) )
    :effect (and (at ?el1 ?flr2) (not (at ?el1 ?flr1)) ) )
)