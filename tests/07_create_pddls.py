import unified_planning as up
from unified_planning.shortcuts import OneshotPlanner, \
        Fluent, InstantaneousAction, DurativeAction, Problem, Object, SimulatedEffect, \
        UserType, BoolType, IntType, Int, Div, RealType, \
        LeftOpenTimeInterval, StartTiming, EndTiming, OpenTimeInterval, \
        GE, GT, Or, Equals, And, Not, Implies
from unified_planning.io.pddl_writer import PDDLWriter
import time
from unified_planning.model.metrics import MinimizeMakespan,\
     MinimizeActionCosts, MinimizeExpressionOnFinalState, MaximizeExpressionOnFinalState
up.shortcuts.get_env().credits_stream = None #removes the printing planners credits 

def create_domain(self) -> None:
    location = UserType('location')
    robot = UserType('robot')

    #problem variables that are changed by actions on objects
    robot_at = Fluent('robot_at', BoolType(), r = robot, l = location)
    is_connected = Fluent('is_connected', BoolType(), l_from = location, l_to = location)
    location_is_free = Fluent('location_is_free', BoolType(), l = location)
    road_is_free = Fluent('road_is_free',BoolType(), l_from = location, l_to = location)
    
    move = InstantaneousAction('move',  r = robot, l_from = location, l_to = location)
    r = move.parameter('r')
    l_from = move.parameter('l_from')
    l_to = move.parameter('l_to')
    move.add_precondition(is_connected(l_from, l_to))
    move.add_precondition(road_is_free(l_to,l_from)) #opposite way
    move.add_precondition(robot_at(r, l_from))
    move.add_precondition(location_is_free(l_to))
    move.add_effect(robot_at(r, l_from), False)
    move.add_effect(location_is_free(l_from), True)
    move.add_effect(road_is_free(l_from,l_to), False)
    move.add_effect(robot_at(r, l_to), True)
    move.add_effect(location_is_free(l_to), False)
    move.add_effect(road_is_free(l_from,l_to), True)

    problem = Problem('maildelivery')
    problem.add_action(_move)
    problem.add_action(_pickup)
    problem.add_action(_drop)
    problem.add_fluent(robot_at, default_initial_value = False)
    problem.add_fluent(is_connected, default_initial_value = False)
    problem.add_fluent(location_is_free, default_initial_value = True)
    problem.add_fluent(robot_has_package, default_initial_value = False)
    problem.add_fluent(location_has_package, default_initial_value = False)
    problem.add_fluent(robot_not_holding_package, default_initial_value = True)
    problem.add_fluent(road_is_free, default_initial_value = True)
    problem.add_fluent(distance, default_initial_value = NOT_CONNECTED_DISTANCE) #some absuard number
    problem.add_fluent(velocity, default_initial_value = 1.0)

    #save to self
    self.problem = problem
    #user types
    self._location = _location
    self._robot = _robot
    self._package = _package
    #fluents
    self.robot_at = robot_at
    self.is_connected = is_connected
    self.location_is_free = location_is_free
    self.robot_has_package = robot_has_package
    self.location_has_package = location_has_package
    self.robot_not_holding_package = robot_not_holding_package
    self.road_is_free = road_is_free
    self.distance = distance
    self.velocity = velocity