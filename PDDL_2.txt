(define (problem ControllerProb1)
(:domain ControllerDomain)
(:objects
	floor1 floor2 floor3 floor4 floor5 floor6 el1 el2 el3 us1 us2 us3 us4 us5 )
(:init
(Floor floor1) (Floor floor2) (Floor floor3) (Floor floor4) (Floor floor5) (Floor floor6)
(Elevator el1) (Elevator el2) (Elevator el3) (User us1) (User us2) (User us3) (User us4)
(User us5) (serves el1 floor1) (serves el1 floor2) (serves el1 floor3) (serves el2 floor3) 
(serves el2 floor4) (serves el2 floor5) (serves el3 floor5) (serves el3 floor6)
(at el1 floor1) (at el2 floor3) (at el3 floor5) (located us1 floor1) (located us2 floor3)
(located us3 floor3) (located us4 floor5) (located us5 floor6) (desired us1 floor3) 
(desired us2 floor5) (desired us3 floor4) (desired us4 floor6) (desired us5 floor5)
)
(:goal (and
    (located us1 floor3) 
    (located us2 floor5) (located us3 floor4) (located us4 floor6) (located us5 floor5)
    )
)
)