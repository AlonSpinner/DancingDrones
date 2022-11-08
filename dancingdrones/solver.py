from dancingdrones.binary_solvers.optic import optic_wrapper
from dancingdrones.binary_solvers.lpg import lpg_wrapper
from dancingdrones.create_pddls import write_pddls
from typing import Tuple
import numpy as np
from unified_planning.shortcuts import Problem

def solve(problem : Problem, engine_name : str = 'optic'):
    #write pddls to run binary solvers on
    write_pddls(problem)

    if engine_name == 'lpg':        
        sucess = lpg_wrapper.run()
        assert sucess, 'solver failed'
        execution_times, actions, durations = lpg_wrapper.get_plan()
        return execution_times, actions, durations

    if engine_name == 'optic':        
        sucess = optic_wrapper.run()
        assert sucess, 'solver failed'
        execution_times, actions, durations = optic_wrapper.get_plan()
        return execution_times, actions, durations

def plan_per_agent(execution_times, actions) -> dict[int, np.ndarray]:
    plan = {}
    for i in range(len(execution_times)):
        agent = int(actions[i][1][1:])
        if agent not in plan:
            plan[agent] = []
        tmp = np.hstack([execution_times[i], compress_move_action(actions[i])])
        plan[agent].append(tmp)
    
    for key in plan:
        plan[key] = np.array(plan[key], dtype = float)
    
    return plan

def compress_move_action(action : Tuple[str, str, str, str],
                         landmark = "first") -> list[int,int]:
    '''
    takes an action ('move','r<N>','l<M>','l<K>') and outputs [<K>] (default)

    '''
    assert action[0] == 'move'
    if landmark == "first":
        return int(action[2][1:])
    else: #"second"
        return int(action[3][1:])