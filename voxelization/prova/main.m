close all
clear all
clc

%stldemo;
%volume=polygon2voxel(fv,[100 100 100],'auto');
volume=VOXELISE(40,40,40,'femur.stl','xyz');
[vol_handle1]=VoxelPlotter(volume,1);