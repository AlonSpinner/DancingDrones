from dancingdrones.mesher import mesh_3D
from dancingdrones.create_pddls import create_domain, create_problem, write_pddls
from dancingdrones.solver import solve, plan_per_agent
import dancingdrones.utils as utils
import matplotlib.pyplot as plt
import matplotlib as mpl
import numpy as np

env = mesh_3D(edge_length = 1.0, N_cols_even = 4, N_rows = 4, N_depth = 4)

domain = create_domain()
start = [0,5]; goal = [env.vertices.shape[0] - 1, env.vertices.shape[0] - 3]
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
    agent_t = plan[agent][:,0]
    agent_v = env.vertices[plan[agent][:,1].astype(int)]
    trajectories[agent] = utils.multiInterp2(time_vec, agent_t, agent_v)

fig = plt.figure()
ax = fig.add_subplot(111, projection='3d')
ax.set_xlabel('x'); ax.set_ylabel('y'); ax.set_zlabel('z')
bounds = utils.findBounds(env.vertices)
ax.set_xlim(bounds[0],bounds[1]); ax.set_ylim(bounds[2],bounds[3]); ax.set_zlim(bounds[4],bounds[5])
utils.plot_env(ax, env)
colors = mpl.cm.rainbow(np.linspace(0, 1, len(trajectories)))
colors = colors[:,:3]
for agent in trajectories:
    ax.scatter(trajectories[agent][0,0],
               trajectories[agent][0,1], 
               trajectories[agent][0,2], 
               color = colors[agent], s = 100, marker = 'x')
    ax.scatter(trajectories[agent][-1,0],
               trajectories[agent][-1,1], 
               trajectories[agent][-1,2], 
               color = colors[agent], s = 100, marker = 'x')
graphics = [plt.plot([],[],[],color = colors[agent])[0] for agent in trajectories]
with plt.ion():
    for i in range(N_points):
        for agent in trajectories:
            graphics[agent].set_data(trajectories[agent][:i,0],
                                     trajectories[agent][:i,1])
            graphics[agent].set_3d_properties(trajectories[agent][:i,2])
        plt.pause(0.05)
plt.show()
