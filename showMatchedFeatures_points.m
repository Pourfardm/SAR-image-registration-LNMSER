function showMatchedFeatures_points(grayImage_prev2,grayImage_prev,matchedPoints,matchedPointsPrev)

im1=grayImage_prev2;
im2=grayImage_prev;
loc1=matchedPoints.Location;
loc2=matchedPointsPrev.Location;



figure, imshow(im1);
hold on;
plot(loc1(:,1) ,loc1(:,2),'Marker','o', 'Color',[rand(),rand(),rand()],'LineStyle','none','LineWidth',2);
title('Image features 1');
figure, imshow(im2);
plot(loc2(:,1),loc2(:,2),'Marker','o', 'Color',[rand(),rand(),rand()],'LineStyle','none','LineWidth',2);
title('Image features 2');
