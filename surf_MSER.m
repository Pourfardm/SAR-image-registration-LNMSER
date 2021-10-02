clc;
close all;
clear all;
k=0.25;
% A=imresize(imread('C:\Users\hp\Pictures\SAR image\aks\scene1_new\1.jpg'),k,'box');
% A=imresize(imread('C:\Users\hp\Pictures\SAR image\image of papers\test\test11\1.tif'),k,'box');
A=imresize(imread('D:\mohammad file\Database Images\Our SAR database test\test12\s2_2.tif'),k,'box');
B=rgb2gray(A);
grayImage=B;
% grayImage=zeros(size(grayImage));
% grayImage (150:160, :)=255;
grayImage = flipud(grayImage);

[a b]=size(grayImage);
[X Y]=meshgrid(1:a,1:b);
surf(X,Y,grayImage);xlabel('X');ylabel('Y');zlabel('Gray level');
