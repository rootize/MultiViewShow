function videoReader = getVideoHandlers( input_args )
%GETVIDEOHANDLERS Summary of this function goes here
%   Detailed explanation goes here

nFiles=length(input_args);

for i=1:1:nFiles
   videoReader(i)=VideoReader(input_args{i});
 
    
end
end

