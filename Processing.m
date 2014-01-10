clear;
close all;
clc;
% step1 convert the video path from different machine location 
% a valid ones
% usage: change the relative path 


load('debugFileNames.mat');
nFiles=length(file_dirs);
relativePath='./SampleVideo/Fire';

for i=1:nFiles
    
   origString=file_dirs{i};
   spltString=strsplit(origString,'/'); 
   filename=spltString{end};
   currentPath=fullfile(relativePath,filename);
   file_dirs{i}=currentPath;
   if ~exist(file_dirs{i},'file')
       disp(i);
      error('not exist'); 
   else
       
       fprintf('%d exist!\n',i);
   end
   
end
