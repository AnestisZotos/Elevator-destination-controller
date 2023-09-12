# Elevator-destination-controller
In this project, i represented with PDDL a planning problem about an elevator destination controller that exists in a building and manages
the calls of the different elevators.We assume that each elevator serves a subset of all of the building's floors.In domain.pddl file,the domain
of the initial planning problem is defined and in problem.pddl a problem (instance of the domain) of the initial planning problem is defined.For 
the problem that is defined in problem.pddl we assume that there are 6 floors,3 elevators and 5 users.Also, that the fisrt elevator serves the 1,2,3
floors,the second elevator serves 3,4,5 floors and the third elevator serves 5,6 floors.Moreover,in accordance the users:user1,user2,user3,user4,
user5 make the calls(source floor->destination floor): 1->3, 3->5, 3->4, 5->6, 6->5 .The goal is to find the moves of the elevators that will
lead to the users being to their destination floor.
