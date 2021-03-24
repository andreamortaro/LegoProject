## Diary

- 2021.03.24 Voxelization

In Matlab we use [STL file Reader](https://it.mathworks.com/matlabcentral/fileexchange/22409-stl-file-reader?s_tid=srchtitle) to obtain a set of points from a .stl file. Now we want to perform the voxelization.


- 2021.03.23 First step

Starting from a 3d model in .stl format we want to perform a voxelization.

STL FORMAT:
An .stl file describe only the geometry of a 3d surface, without colors or textures attributes. The surface is discretized by triangles. In the .stl file is stored the information where each object is a triangle with 3 vertices and the facet normal.

Site for .stl files:
https://www.artec3d.com/it

Opened "Wooden chair.stl" with an online stl-viewer and in blender.

We have found a
[STL file Reader](https://it.mathworks.com/matlabcentral/fileexchange/22409-stl-file-reader?s_tid=srchtitle) for Matlab.

Equivalently we viewed the .stl file also in python. Harder to manage than Matlab, points not in tabular form: your_mash.points in python.
https://pypi.org/project/numpy-stl/
