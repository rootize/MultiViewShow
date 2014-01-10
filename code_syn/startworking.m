%% get Offset
v_dir='C:\Users\Zijun\Dropbox\LooxcieVideo20131218';
v1='v1.mp4';
v2='v2.mp4';
v3='v8.mp4';
v4='v9.mp4';
%%
offset(1)=synchronizeAudio(fullfile(v_dir,v1),fullfile(v_dir,v2));
offset(2)=synchronizeAudio(fullfile(v_dir,v1),fullfile(v_dir,v3));
offset(3)=synchronizeAudio(fullfile(v_dir,v1),fullfile(v_dir,v4));

%%



[startid12,startid2,clip_length(1)]=getStartIDandLength(fullfile(v_dir,v1),fullfile(v_dir,v2),offset(1));
[startid13,startid3,clip_length(2)]=getStartIDandLength(fullfile(v_dir,v1),fullfile(v_dir,v3),offset(2));
[startid14,startid4,clip_length(3)]=getStartIDandLength(fullfile(v_dir,v1),fullfile(v_dir,v4),offset(3));


%%
% clip_length_min=min(clip_length);
video{1}=VideoReader(fullfile(v_dir,v1));
video{2}=VideoReader(fullfile(v_dir,v2));
video{3}=VideoReader(fullfile(v_dir,v3));
video{4}=VideoReader(fullfile(v_dir,v4));
%% get absolute startid with  respect to the corresponding id
startid1=[startid12,startid13,startid14];
abs_startid=getABSid([startid12,startid2],[startid13,startid3], [startid14, startid4]);
videow=VideoWriter('combined.avi');
videow.FrameRate=30;
videow.open;
%%
 clip_length_min=min(clip_length);
for j=1:1:clip_length_min
%     dir_name=sprintf('SFM_%.05d',j);
%     if exist(dir_name,'dir')
%         rmdir(dir_name);
%     end 
%     mkdir(dir_name);
    
    for i=1:1:length(abs_startid)
%         im_name=sprintf('%.05d.jpg',i);
        im{i}=video{i}.read(abs_startid(i)+j-1);
%         imwrite(im,fullfile(dir_name ,im_name));
        
    end
    
    im1=ImgSyn(im{1},im{2},'h');
    im2=ImgSyn(im{3},im{4},'h');
    im_final=ImgSyn(im1,im2,'v');
    fprintf('Write %d th frame\n',j);
    videow.writeVideo(im_final);
end
videow.close;
