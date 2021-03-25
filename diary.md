## Diary

- 2021.03.25 

RECAP: .stl file --(stlread)-> fv triangulated mesh --(polygon2voxel)-> logical matrix --(voxelPlotter)-> plot voxelized image
Investigate how to pass from the triangulated mesh to the voxelized volume.

We tried [Mesh voxelisation](https://it.mathworks.com/matlabcentral/fileexchange/27390-mesh-voxelisation) on Matlab: we were able to change the size of voxels, but we didn't understood how the algorithm works and using larger voxels the output is terrible.

Some useful tools for manipulating binary volume objects:
https://it.mathworks.com/help/images/ref/bwselect3.html?searchHighlight=voxelization&s_tid=srchtitle
https://it.mathworks.com/help/vision/ref/pcmapndt.html?searchHighlight=voxelization&s_tid=srchtitle
https://it.mathworks.com/help/images/ref/bwmorph3.html?searchHighlight=voxel&s_tid=srchtitle
https://it.mathworks.com/help/images/3d-volumetric-image-processing.html?s_tid=CRUX_lftnav

We cannot find any comprehensible algorithm for voxelization...


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
