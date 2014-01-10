% function [ output_args ] = MultiVideoShow( input_args )
%MULTIVIDEOSHOW Summary of this function goes here
%   Detailed explanation goes here

clear;
close all;
clc;

load('debugFileNames.mat');

 global img_height;
 global img_width;
 img_height=360;
 img_width=480;

 
 LayoutInfo=getLayout(file_dirs); 
 offsets=synAll(file_dirs);
 
 







% end

