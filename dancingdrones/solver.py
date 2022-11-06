from dancingdrones.binary_solvers.optic import optic_wrapper
from dancingdrones.binary_solvers.lpg import lpg_wrapper

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