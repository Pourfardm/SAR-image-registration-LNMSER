clc;
close all;
clear all;

% I = imread('C:\Users\HP\Pictures\Database Images\image of papers\A Novel Image Registration Method Based on\noise\2018_Dong_Page_08_Image_0004.jpg');
% I = imread('C:\Users\HP\Pictures\Database Images\image of papers\A new affine invariant feature\s3-1.tif');
I = imread('C:\Users\HP\Pictures\1.jpg');title('Original Image');
subplot(2,2,1),imshow(I);

% noisyImage = imnoise(I,'gaussian',0,0.005);
% imshow(noisyImage)
I_old=I;

for iteration=1:4
    
    Idiffusion = imdiffusefilt(I,'NumberOfIterations',iteration);
    sigma = 1.2;
    Igaussian = imgaussfilt(I_old,sigma);
    I_old=Igaussian;
    % figure,montage({Idiffusion,Igaussian},'ThumbnailSize',[])
    % title('Smoothing Using Anisotropic Diffusion (Left) vs. Gaussian Blurring (Right)');
    
    subplot(2,2,3),imshow(Idiffusion);title(['Smoothing Using Anisotropic Diffusion (Left)  at iteration= ',num2str(iteration)]);
    subplot(2,2,4),imshow(Igaussian);title('Smoothing Using Gaussian Blurring (Right)');
    pause();
end
% n = ssim(I,noisyImage);
% disp(['The SSIM value of the noisy image is ',num2str(n),'.'])