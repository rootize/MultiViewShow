function [ output_args ] = visualizeAllSynchronization( input_args,layoutInfo,offsets)
%VISUALIZEALLSYNCHRONIZATION Summary of this function goes here
%   Detailed explanation goes here
if nargin<3
   error('Not enough inputs!'); 
end
global img_width;
global img_height;
% consant variables for drawing the axes
im_aixHeight=500; % height of the axes region
margin_dist=10;               % distance of axes to the edge
nFiles=length(input_args);

videoReader=getVideoHandlers(input_args);

videoLengths=[videoReader.NumberOfFrames];
end_frames=offsets+videoLengths';

startid=1;
endid=max(end_frames);

for i=startid:1:endid
im=zeros(layoutInfo.SizeTtl(1),layoutInfo.SizeTtl(2),3);
im_showaxis=zeros(im_aixHeight,layoutInfo.SizeTtl(2),3);
% Form the image part
    for j=1:1:nFiles
      if    i>=offsets(j) && i<end_frames(j)
          temp_im=videoReader(j).read(i-offsets(j)+1);
          temp_im=imresize(temp_im,[img_height,img_width]);
          loc_inof=layoutInfo.BB{j}; 
          im(loc_inof(1):loc_inof(2),loc_inof(3):loc_inof(4),:)=temp_im;
      end
        
    end
 % form the axis part
 
   start_pixel=margin_dist+1;
   end_pixel=layoutInfo.SizeTtl(2)-margin_dist;
   Nverticalspace=nFiles+2;
    
    
end
end

