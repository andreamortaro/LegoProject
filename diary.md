# Diary

## 2021.04.07

We converted the *struct* `fv` into the `PointCloud` class object which gives us the possibility to compute the normals to each triangle. We also started reasoning about the optimal angle for the voxelization in order to avoid "aliasing". 

**Idea:** minmize the area projected on a plane parallel to z axis, which is equivalent (maybe) to maximize the number of triangles with normal parallel to the above plane...

*Implementation (try and error):* we start rotating the mesh and for every angle we compute the projected area on the plane, then we take the best angle. We could rotate the plane instead of the mesh (maybe it is more efficient). There could be a way to find the optimal angle by just looking at the normals: we could project just the normals and take the sum of the lengths of each projected normal. The largest sum corresponds to the optimal angle (?)

## 2021.04.05

In previous days we tried to make `gptoolbox` work on Matlab, with the result that we broke Matlab... We tried also some packages in Python, but we were not satisfied.

Up to now we are able to perform the voxelization of a *.stl* model, but we are not in control of the process:
- how do the algorithms work?
- how can we set parameters such as the number of voxels, the orientation of the model, the size of voxels?
- ...

## 2021.03.28

First attempt to install `gptoolbox` for matlab: `voxelize.m` gives an error but we don't know the reason.

We tried previous functions in matlab with other *.stl* models, and we found out some problems:
1. optimal angle with axis to perform a better voxelization?
2. we can't control properly the size and number of voxel

We are going to try again with `gptoolbox` tomorrow, now it's too late and we are frustrated...

## 2021.03.26

Look at:
- `PyMesh` -> `voxelize.py` (it does not output a logical matrix, but another mesh with voxels)
- `gptoolbox` (Matlab) 
- `trimesh` (Python)

IDEA for simple implementation of a voxelization algorithm: for every cube check if it intersects with the surface (triangles of the mesh). If yes, then voxel=1, else voxel=0.
Another idea: check how many vertices inside the surfaces...


## 2021.03.25 

RECAP (Matlab): *.stl* file --`stlread`-> fv triangulated mesh --`polygon2voxel`-> logical matrix --`voxelPlotter`-> plot voxelized image
We investigate how to pass from the triangulated mesh to the voxelized volume.

We tried [Mesh voxelisation](https://it.mathworks.com/matlabcentral/fileexchange/27390-mesh-voxelisation) on Matlab: we were able to change the size of voxels, but we didn't understood how the algorithm works and using larger voxels the output is terrible.

Some useful tools for manipulating binary volume objects:
https://it.mathworks.com/help/images/ref/bwselect3.html?searchHighlight=voxelization&s_tid=srchtitle
https://it.mathworks.com/help/vision/ref/pcmapndt.html?searchHighlight=voxelization&s_tid=srchtitle
https://it.mathworks.com/help/images/ref/bwmorph3.html?searchHighlight=voxel&s_tid=srchtitle
https://it.mathworks.com/help/images/3d-volumetric-image-processing.html?s_tid=CRUX_lftnav

We cannot find any comprehensible algorithm for voxelization...


## 2021.03.24 

### Voxelization

In Matlab we use [STL file Reader](https://it.mathworks.com/matlabcentral/fileexchange/22409-stl-file-reader?s_tid=srchtitle) to obtain a set of points from a *.stl* file. Now we want to perform the voxelization.

The idea about voxelization is to discretize the all volume in cubes, for each cube is assigned a logical value (0 if outside the mesh, else 1 inside the mesh). **Note:** the situation is much more complicated, there are many ways to decide if the voxel is inside or outside the mesh. Each voxelization algorithm is different...

We tried [Polygon2Voxel](https://it.mathworks.com/matlabcentral/fileexchange/24086-polygon2voxel) without having interesting results. The problem is how to set the dimensions of the cubes in the discretization.

End of the story: we plotted our chair in voxels of fixed size (?) using [Voxel Plotter](https://it.mathworks.com/matlabcentral/fileexchange/50802-voxelplotter). We still don't know how change the size of voxels.


## 2021.03.23 

### First steps

Starting from a 3d model in .stl format we want to perform a voxelization.

A *.stl* file describes only the geometry of a 3d surface, without colors or textures attributes. The surface is discretized by triangles. In the .stl file is stored the information where each object is a triangle with 3 vertices and the facet normal.

We have found [here](https://www.artec3d.com/it) some .stl models: opened *Wooden chair.stl* with an online stl-viewer and in *blender*.

We have found a
[STL file Reader](https://it.mathworks.com/matlabcentral/fileexchange/22409-stl-file-reader?s_tid=srchtitle) for Matlab.

Equivalently we viewed the *.stl* file also in Python. It's harder to manage than Matlab, and points not in tabular form (`your_mash.points` to see the point cloud)

https://pypi.org/project/numpy-stl/
