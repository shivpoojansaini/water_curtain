%This matlab code for read a .jpg file and convert it into matrix form in matlab
%First it convert it into RGB matrix i.e in 3-D then by using rgb2gray
%function it convert into 2-D matrix
%After converting into matrix it form its .txt file
%The size of image must be lessthan 127X28px
%%
%first enter the image name with extension
a=imread('mon.jpg');                % imread function read image as 3D matrix  
z=rgb2gray(a);                      %rgb2gray convert color image to grayscale in 2D matrix
[x,y]=size(z);                      %x denote for vertical,y denote for horizontal  
if(x<=127 && y==28)                 %check proper size of image
    fid=fopen('convert.txt','wt');  % make a text file to save 2D matrix
    for ii=1:size(z,1)
        fprintf(fid,'%g\t',z(ii,:));
        fprintf(fid,'\n');
    end
    fclose(fid);
else                                %if size of image is not proper
    disp('invalid');
    disp('image size as width must be 28 and');
    disp('height less than 127');
end




