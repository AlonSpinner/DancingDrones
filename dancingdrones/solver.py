from dancingdrones.binary_solvers.optic import optic_wrapper
from dancingdrones.binary_solvers.lpg import lpg_wrapper
from typing import Tuple
import numpy as np

def solve(engine_name = 'optic'):

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

def compress_move_action(action : Tuple[str, str, str, str]) -> list[int,int]:
    '''
    takes an action ('move','r<N>','l<M>','l<K>') and outputs [<K>]

    '''
    assert action[0] == 'move'
    return int(action[3][1:])