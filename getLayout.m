function layoutinfo = getLayout( file_dirs )
%GETLAYOUT Summary of this function goes here
%   Detailed explanation goes here
num_inputs=size(file_dirs,1);
global img_height;
global img_width;

switch num_inputs
    
    case 1
        error('Reuqires at least two videos');
    case 2
        layoutinfo.SizeTtl=[img_height,img_width*2];
        layoutinfo.BB{1}=[1,img_height,1,img_width];
        layoutinfo.BB{2}=[1,img_height,img_width+1,img_width*2];
    case 3
        layoutinfo.SizeTtl=[img_height,img_width*3];
        layoutinfo.BB{1}=[1,img_height,1,img_width];
        layoutinfo.BB{2}=[1,img_height,img_width+1,img_width*2];
        layoutinfo.BB{3}=[1,img_height,img_width*2+1,img_width*3];
    case 4
        layoutinfo.SizeTtl=[img_height*2,img_width*2];
        layoutinfo.BB{1}=[1,img_height,1,img_width];
        layoutinfo.BB{2}=[1,img_height,img_width+1,img_width*2];
        layoutinfo.BB{3}=[img_height+1,img_height*2,1,img_width];
        layoutinfo.BB{4}=[img_height+1,img_height*2,img_width+1,img_width*2];
        
    case 5
        layoutinfo.SizeTtl=[img_height*2,img_width*3];
        layoutinfo.BB{1}=[1,img_height,1,img_width];
        layoutinfo.BB{2}=[1,img_height,img_width+1,img_width*2];
        layoutinfo.BB{3}=[1,img_height,img_width*2+1,img_width*3];
        layoutinfo.BB{4}=[img_height+1,img_height*2,1,img_width];
        layoutinfo.BB{5}=[img_height+1,img_height*2,img_width+1,img_width*2];
        
    case 6
        
        layoutinfo.SizeTtl=[img_height*2,img_width*3];
        layoutinfo.BB{1}=[1,img_height,1,img_width];
        layoutinfo.BB{2}=[1,img_height,img_width+1,img_width*2];
        layoutinfo.BB{3}=[1,img_height,img_width*2+1,img_width*3];
        layoutinfo.BB{4}=[img_height+1,img_height*2,1,img_width];
        layoutinfo.BB{5}=[img_height+1,img_height*2,img_width+1,img_width*2];
        layoutinfo.BB{6}=[img_height+1,img_height*2,img_width*2+1,img_width*3];
        
    case 7
        
        layoutinfo.SizeTtl=[img_height*2,img_width*4];
        layoutinfo.BB{1}=[1,img_height,1,img_width];
        layoutinfo.BB{2}=[1,img_height,img_width+1,img_width*2];
        layoutinfo.BB{3}=[1,img_height,img_width*2+1,img_width*3];
        layoutinfo.BB{4}=[1,img_height,img_width*3+1,img_width*4];
        layoutinfo.BB{5}=[img_height+1,img_height*2,1,img_width];
        layoutinfo.BB{6}=[img_height+1,img_height*2,img_width+1,img_width*2];
        layoutinfo.BB{7}=[img_height+1,img_height*2,img_width*2+1,img_width*3];
    case 8
        layoutinfo.SizeTtl=[img_height*2,img_width*4];
        layoutinfo.BB{1}=[1,img_height,1,img_width];
        layoutinfo.BB{2}=[1,img_height,img_width+1,img_width*2];
        layoutinfo.BB{3}=[1,img_height,img_width*2+1,img_width*3];
        layoutinfo.BB{4}=[1,img_height,img_width*3+1,img_width*4];
        layoutinfo.BB{5}=[img_height+1,img_height*2,1,img_width];
        layoutinfo.BB{6}=[img_height+1,img_height*2,img_width+1,img_width*2];
        layoutinfo.BB{7}=[img_height+1,img_height*2,img_width*2+1,img_width*3];
        layoutinfo.BB{8}=[img_height+1,img_height*2,img_width*3+1,img_width*4];
    case 9
        layoutinfo.SizeTtl=[img_height*3,img_width*3];
        
        layoutinfo.BB{1}=[1,img_height,1,img_width];
        layoutinfo.BB{2}=[1,img_height,img_width+1,img_width*2];
        layoutinfo.BB{3}=[1,img_height,img_width*2+1,img_width*3];
       
        layoutinfo.BB{4}=[img_height+1,img_height*2,1,img_width];
        layoutinfo.BB{5}=[img_height+1,img_height*2,img_width+1,img_width*2];
        layoutinfo.BB{6}=[img_height+1,img_height*2,img_width*2+1,img_width*3];
        
        layoutinfo.BB{7}=[img_height*2+1,img_height*2,1,img_width];
        layoutinfo.BB{8}=[img_height+1,img_height*2,img_width+1,img_width*2];
        layoutinfo.BB{9}=[img_height+1,img_height*2,img_width*2+1,img_width*3];
        
        
        
        
        
end
end

