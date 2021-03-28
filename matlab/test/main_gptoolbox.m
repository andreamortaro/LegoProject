close all
clear all
clc

% convert .stl into fv
fv = stlread('California office chair.stl');
V = fv.vertices; 
F = fv.faces;

% voxelization
W = voxelize(V,F,5);