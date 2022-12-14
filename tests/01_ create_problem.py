from dancingdrones.mesher import mesh_3D
from dancingdrones.create_pddls import create_domain, create_problem
from dancingdrones.solver import solve, plan_per_agent
import dancingdrones.utils as utils
import matplotlib.pyplot as plt
import matplotlib as mpl
import numpy as np

env = mesh_3D(edge_length = 1.0, N_cols_even = 4, N_rows = 3, N_depth = 2)
domain = create_domain()

#set amount of drones, initials and goals
N_agents = 15
start = utils.random_state(N_agents, env.N_vertices(), seed = 5)
goal = utils.random_state(N_agents, env.N_vertices(), seed = 3)

# start = np.array([0, 5])
# goal = np.array([env.N_vertices() - 1, env.N_vertices() - 3])


problem = create_problem(env, domain, start, goal)

execution_times, actions, durations = solve(problem, engine_name = 'optic')
#increment execution times by 1 step to account for the initial state
execution_times = np.array(execution_times) + 1.0

plan = plan_per_agent(execution_times, actions)
finish_time = np.max(execution_times)
for agent in range(N_agents):
    if agent in plan.keys():
        #add first point to plan, as plan is for move to locations
        first_vertex_id = start[agent]
        added_array = np.array([[0.0,first_vertex_id]])
        plan[agent] = np.concatenate((added_array, plan[agent]), axis = 0)
        #add last point to plan, resting postion so interpolation works on entire time_vec
        last_vertex_id = goal[agent]
        added_array = np.array([[finish_time,last_vertex_id]])
        plan[agent] = np.concatenate((plan[agent],added_array), axis = 0)
    else:
        #agent has no plan, so just add start and goal
        plan[agent] = np.array([[0.0,start[agent]],
                                [finish_time,goal[agent]]])

N_points = 100
time_vec = np.linspace(0,finish_time,N_points)
trajectories = dict.fromkeys(range(N_agents))
for agent in trajectories:
    agent_t = plan[agent][:,0]
    agent_v = env.vertices[plan[agent][:,1].astype(int)]
    trajectories[agent] = utils.multiInterp2(time_vec, agent_t, agent_v)

fig = plt.figure()
ax = fig.add_subplot(111, projection='3d')
ax.set_xlabel('x'); ax.set_ylabel('y'); ax.set_zlabel('z')
bounds = utils.findBounds(env.vertices)
ax.set_xlim(bounds[0],bounds[1]); ax.set_ylim(bounds[2],bounds[3]); ax.set_zlim(bounds[4],bounds[5])
ax.set_box_aspect((bounds[1]-bounds[0],bounds[3]-bounds[2],bounds[5]-bounds[4])) #this produces errors
utils.plot_env(ax, env, texts = 'on')
colors = mpl.cm.rainbow(np.linspace(0, 1, len(trajectories)))
colors = colors[:,:3]
graphics = []
for agent in trajectories:
    #initial poistions
    # ax.scatter(trajectories[agent][0,0],
    #            trajectories[agent][0,1], 
    #            trajectories[agent][0,2], 
    #            color = colors[agent], s = 100, marker = 'o')
    ax.scatter(trajectories[agent][-1,0],
               trajectories[agent][-1,1], 
               trajectories[agent][-1,2], 
               color = colors[agent], s = 100, marker = 'x')
    line, = plt.plot([],[],[],color = colors[agent])
    head, = plt.plot([],[],[],color = colors[agent], marker = 's', markersize = 10)
    graphics.append({"line": line, "head": head})

tail_length = 5
plt.pause(3)
with plt.ion():
    for i in range(N_points):
        l = max(i - tail_length,0)
        for agent in trajectories:
            graphics[agent]["line"].set_data(trajectories[agent][l:i,0],
                                     trajectories[agent][l:i,1])
            graphics[agent]["line"].set_3d_properties(trajectories[agent][l:i,2])
            graphics[agent]["head"].set_data([trajectories[agent][i,0]],
                                     [trajectories[agent][i,1]])
            graphics[agent]["head"].set_3d_properties([trajectories[agent][i,2]])
        plt.pause(0.005)
plt.show()
