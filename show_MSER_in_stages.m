% show_MSER_in_stages
clc;
close all;
clear all;
k=0.25;
% A=imresize(imread('C:\Users\hp\Pictures\SAR image\aks\scene1_new\1.jpg'),k,'box');
% A=imresize(imread('C:\Users\hp\Pictures\SAR image\image of papers\test\test11\1.tif'),k,'box');
A=imresize(imread('D:\mohammad file\Database Images\Our SAR database test\test12\s2_2.tif'),k,'box');
B=rgb2gray(A);
grayImage=B;
[points cc] = detectMSERFeatures(grayImage,'ThresholdDelta' ,0.4,'RegionAreaRange',[30 14000],'MaxAreaVariation',0.7,'ROI',[1 1 size(grayImage,2) size(grayImage,1)] );
figure(1), imshow(grayImage); 
hold on;
plot(points,'showPixelList',true,'showEllipses',false);drawnow;

delta=1;
for i=1:delta:256
    C=uint8(255*ones(size(B)));
    Dark=uint8(zeros(size(B)));
    D=C;
    C(B<i)=B(B<i);
    D(B<i)=Dark(B<i);
    figure(2),subplot(2,1,1),imshow(uint8(C));title(['Original image in Gray-level= ',num2str(i)]);
    subplot(2,1,2),imshow(uint8(D));title(['BW image in Gray-level= ',num2str(i)]);
    drawnow;
    pause();
end
%% 
% delta=10;
% for i=1:delta:256
%     C=uint8(255*ones(size(B)));
%     Dark=uint8(zeros(size(B)));
%     D=C;
%     C(B<i)=B(B<i);
%     D(B<i)=Dark(B<i);
%     figure(3),subplot(3,1,1),imshow(uint8(C));title(['Original image in Gray-level= ',num2str(i)]);
%     subplot(3,1,2),imshow(grayImage); hold on; plot(points,'showPixelList',true,'showEllipses',false);drawnow;
%     subplot(3,1,3),imshow(uint8(C));title(['MSER regions in Original image in Gray-level= ',num2str(i)]);
%     hold on;
%     plot(points);
%     drawnow;
% %     pause();
% end
% %% 
% 
% figure, imshow(grayImage); 
% hold on;
% plot(regions,'showPixelList',true,'showEllipses',false);


