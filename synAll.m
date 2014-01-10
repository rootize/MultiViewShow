function offSetFrame = synAll( input_files )
%SYNALL Summary of this function goes here
%   Detailed explanation goes here
nFiles=length(input_files)-1;
offSetFrame=zeros(nFiles+1,1);
offSetFrame(1)=1;
ref_video=input_files{1};
for i=1:1:nFiles
    offSetFrame(i)=synPairAudio(ref_video,input_files{i+1})+offSetFrame(1);
end

abs_startid=min(offSetFrame);

if abs_startid<=0
    offset=1-abs_startid;
end
offSetFrame=offSetFrame+offset;

end

