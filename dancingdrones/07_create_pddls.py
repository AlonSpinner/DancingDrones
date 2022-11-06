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

from dataclasses import dataclass
import numpy as np

@dataclass(frozen = False)
class Enviorment:
    vertices : np.ndarray
    connectivityList : list[list[int]]

@dataclass(frozen = False)
class Domain:
        problem : Problem
        Types : dict
        Fluents : dict


def create_domain() -> None:
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

    problem = Problem('dancing_drones')
    problem.add_action(move)
    problem.add_fluent(robot_at, default_initial_value = False)
    problem.add_fluent(is_connected, default_initial_value = False)
    problem.add_fluent(location_is_free, default_initial_value = True)
    problem.add_fluent(road_is_free, default_initial_value = True)
    
    Types =  {"robot": robot,
                 "location": location}
    Fluents = {"robot_at": robot_at, 
                "is_connected": is_connected,
                "location_is_free" : location_is_free,
                "road_is_free" : road_is_free}
    return Domain(problem, Types, Fluents)

def create_problem(env : Enviorment, domain : Domain, start : list[int], goal : list[int]):
        '''
        enviorment - vetrtex list + connectivity list
        start, goal - list of vertex indices
        '''
        locations = [Object(f"l{id}", domain.Types["location"]) for id in range(len(env.vertices))]
        robots = [Object(f"r{id}", domain.Types["robot"]) for id in range(len(start))]

        problem = domain.problem
        problem.add_objects(locations + robots)

        #locations connectivity and distance
        for i, clist in enumerate(env.connectivityList):
                for j in clist:
                        problem.set_initial_value(domain.Fluents["is_connected"](locations[i],
                                                                                 locations[j]), 
                                                                                 True)

        for i in range(len(robots)):
                problem.set_initial_value(domain.Fluents["robot_at"](
                                                    robots[i],
                                                    locations[start[i]]),
                                                    True)
                problem.set_initial_value(domain.Fluents["location_is_free"](
                                                locations[start[i]]),
                                                False)
                problem.add_goal(domain.Fluents["robot_at"](
                                                            robots[i],
                                                            locations[goal[i]],
                                                            True))
                                                            