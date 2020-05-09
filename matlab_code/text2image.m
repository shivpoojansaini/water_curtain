%this matlab code is for display text file into image file
%First it read MakeInIndia_Decode.txt with the help of dlmread function 
%then with the help of imshow function it display the the image
%%
%first enter the text file 
M=dlmread('MakeInIndia_Decode.txt');  %dlmread function read text file into Matrix
imshow(M);                            %display the image