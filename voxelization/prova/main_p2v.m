close all
clear all
clc

% stldemo imports .stl file in a struct type variable fv ("faces-vertices")
stldemo;
% polygon2voxel converts the triangulated mesh fv into a logical binary matrix volume (voxels)
% NOTES: 
% - only works with the option "auto"
% - [100 100 100] corresponds to the dimensions of the whole volume: it's
% not allowed to change the voxel size!
volume=polygon2voxel(fv,[100 100 100],'auto');
% plot the voxelized model
[vol_handle1]=VoxelPlotter(volume,1);