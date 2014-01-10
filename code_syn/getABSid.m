function  output_args  = getABSid(varargin)
%GETABSID Summary of this function goes here
%   Detailed explanation goes here
disp('debug');

ref_start=zeros(1,length(varargin));
rel_start=ref_start;

for i=1:1: length( varargin)
    
    if length( varargin{i})~=2
        
        error('Please check %d th parameter! \n',i) ;
    else
        ref_start(i)=varargin{i}(1);
        rel_start(i)=varargin{i}(2);
    end
end

abs_start=max(ref_start);
abs_start_mat=repmat(abs_start,1,length(varargin));
diff_frame=abs_start_mat-ref_start;

rel_start=rel_start+diff_frame;
output_args=[abs_start,rel_start];

end

