from dancingdrones.mesher import mesh_3D
from dancingdrones.create_pddls import create_domain, create_problem, Enviorment, write_pddls
from dancingdrones.solver import solve, plan_per_agent
from dancingdrones.utils import multiInterp2
import matplotlib.pyplot as plt
import numpy as np

vertexList, connectivityList = mesh_3D(edge_length = 1.0, N_cols_even = 4, N_rows = 4, N_depth = 4)

domain = create_domain()
env = Enviorment(vertexList, connectivityList)
start = [0,5]; goal = [vertexList.shape[0] - 1, vertexList.shape[0] - 3]
problem = create_problem(env, domain, start, goal)
write_pddls(problem)

execution_times, actions, durations = solve(engine_name = 'optic')

plan = plan_per_agent(execution_times, actions)
finish_time = np.max(execution_times) + 1.0
N_points = 1000
time_vec = np.linspace(0,finish_time,N_points)
trajectories = {}
for agent in plan:
    #add last point to plan, resting postion so interpolation works
    last_vertex_id = plan[agent][-1,1]
    added_array = np.array([[finish_time,last_vertex_id]])
    plan[agent] = np.concatenate((plan[agent],added_array), axis = 0)
    #interpolate
    agent_t = plan[0][:,0]
    agent_v = env.vertices[plan[agent][:,1].astype(int)]
    trajectories[agent] = multiInterp2(time_vec, agent_t, agent_v)

fig = plt.figure()
ax = fig.add_subplot(111, projection='3d')
