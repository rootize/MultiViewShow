function allExistFlag = checkVideoFiles( input_args )
%CHECKVIDEOFILES Summary of this function goes here
%   Detailed explanation goes here
allExistFlag=1;
nFiles=length(input_args);
for i=1:1:nFiles
   
    if ~exist(input_args{i},'file')
       allExistFlag=0;
       break;  
    end
end

end

