clear all
close all
clc

%% convert .stl into fv
fv = stlread('chair.stl');
vertices = fv.vertices; 

%% convert fv into pointCLoud object
pc = pointCloud(vertices);
%normals = pcnormals(pc); % compute normals
%pc = pointCloud(vertices,'Normal',normals); % add normals to pc

%% plot point cloud
%pcshow(pc)

%% 