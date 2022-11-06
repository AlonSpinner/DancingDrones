import numpy as np
from meshpy.tet import MeshInfo, build
from meshpy.geometry import GeometryBuilder, Marker, make_box
import meshio

geob = GeometryBuilder()
points, facets, _, _  = make_box([0, 0, 0], [1, 1, 1])

geob.add_geometry(points, facets)
mesh_info = MeshInfo()
geob.set(mesh_info)

mesh = build(mesh_info, max_volume=0.06,
        volume_constraints=True, attributes=True)

mesh.write_vtk("mesh.vtk")

#https://stackoverflow.com/questions/11727822/reading-a-vtk-file-with-python
m = meshio.read("mesh.vtk")

a = 1
