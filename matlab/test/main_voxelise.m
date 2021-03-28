close all
clear all
clc

% VOXELISE converts the triangulated mesh found in the .stl file into a logical binary matrix volume (voxels)
% NOTES: 
% - [100 100 100] corresponds to the number of voxels in each direction
% (each voxel has dimension 1)
volume=VOXELISE(100,15,100,'Copper key.stl','xyz');
% plot the voxelized model
[vol_handle1]=VoxelPlotter(volume,1);