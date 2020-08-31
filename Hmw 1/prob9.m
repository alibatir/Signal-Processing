%PROBLEM 9
Image=imread('lena.png'); %Read the image
%imshow(Image);
GrayImage=rgb2gray(Image); %Convert rgb image into a grayscale image.
%imshow(Image);
mean=mean2(GrayImage); %Find mean of gray image
std=std2(GrayImage); %Find standart deviation
[maxValue, linearIndexesOfMax] = max(GrayImage(:)); %Find the maximum element of the image file and max index
% there can be the max value at more than one location so we use ind2subs function
[rowOfMax , colOfMax] = ind2sub(size(GrayImage), linearIndexesOfMax);%Find maximum row and column
[minValue, linearIndexesOfMin] = min(GrayImage(:)); %Find the minumum element of the image file and min index
[rowOfMin, colOfMin] = ind2sub(size(GrayImage), linearIndexesOfMin);%Find minimum row and column
%Display values
disp(['Mean:' num2str(mean)]);
disp(['Standard Deviation:' num2str(std)]);
disp(['Maximum value:' num2str(maxValue)]);
disp(['Maximum"s index:' num2str(linearIndexesOfMax)]);
disp(['Maximum"s row:' num2str(rowOfMax)]);
disp(['Maximum"s column: ' num2str(colOfMax)]);
disp(['Minimum value: ' num2str(minValue)]);
disp(['Minimum"s index: ' num2str(linearIndexesOfMin)]);
disp(['Minimum"s row: ' num2str(rowOfMin)]);
disp(['Minimum"s column: ' num2str(colOfMin)]);