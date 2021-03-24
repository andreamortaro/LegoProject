## Diary

- 2021.03.24 Voxelization

In Matlab we use [STL file Reader](https://it.mathworks.com/matlabcentral/fileexchange/22409-stl-file-reader?s_tid=srchtitle) to obtain a set of points from a .stl file. Now we want to perform the voxelization.

The idea about Voxelization is to discretize the all volume in cubes, for each cube is assigned a logical value (0 if outside the mesh, else 1 inside the mesh).

We tried [Polygon2Voxel](https://it.mathworks.com/matlabcentral/fileexchange/24086-polygon2voxel) without having an interesting result. The problem is how to set the dimensions of the cubes in the discretization.

End of the story: we plotted our chair in voxels of fixed size (?) using [Voxel Plotter](https://it.mathworks.com/matlabcentral/fileexchange/50802-voxelplotter). We still don't know how change the size.


- 2021.03.23 First step

Starting from a 3d model in .stl format we want to perform a voxelization.

**STL FORMAT**:
An .stl file describe only the geometry of a 3d surface, without colors or textures attributes. The surface is discretized by triangles. In the .stl file is stored the information where each object is a triangle with 3 vertices and the facet normal.

Site for .stl files:
https://www.artec3d.com/it

Opened "Wooden chair.stl" with an online stl-viewer and in blender.

We have found a
[STL file Reader](https://it.mathworks.com/matlabcentral/fileexchange/22409-stl-file-reader?s_tid=srchtitle) for Matlab.

Equivalently we viewed the .stl file also in python. Harder to manage than Matlab, points not in tabular form: your_mash.points in python.
https://pypi.org/project/numpy-stl/
