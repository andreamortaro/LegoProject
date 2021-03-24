close all
clear all
clc

stldemo;
volume=polygon2voxel(fv,[100 100 100],'auto');
[vol_handle1]=VoxelPlotter(volume,1);