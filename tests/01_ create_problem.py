from dancingdrones.mesher import mesh_3D
from dancingdrones.create_pddls import create_domain, create_problem, Enviorment, write_pddls
from dancingdrones.solver import solve

vertexList, connectivityList = mesh_3D(edge_length = 1.0, N_cols_even = 4, N_rows = 4, N_depth = 4)

domain = create_domain()
env = Enviorment(vertexList, connectivityList)
start = [0,5]; goal = [vertexList.shape[0] - 1, vertexList.shape[0] - 3]
problem = create_problem(env, domain, start, goal)
write_pddls(problem)

execution_times, actions, durations = solve(engine_name = 'optic')