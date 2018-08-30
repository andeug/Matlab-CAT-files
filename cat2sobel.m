I = imread('C:\Users\Andrew\Documents\Matlab documents\teethwhitening_Woman_Smile_small.jpg');
imshow(I)
I2=rgb2gray(I);
lap =fspecial('laplacian',0.2)
resp = uint8(filter2(lap,I2))
BW1 = edge(I2,'sobel');
BW2 = edge(I2,'canny');
BW3 = edge(I2,'prewitt');
b4 = imgaussfilt(I2);
BW4= fspecial('gaussian',[100 100],0.5);
gau= uint8(filter2(BW4,I2));
figure;
subplot(4,1,1);imshow(BW1); title('sobel filter');
subplot(4,1,2);imshow(BW2); title('canny filter');
subplot(4,1,3);imshow(BW3); title('prewitt filter');
subplot(4,1,4);imshow(resp); title('laplacian filter');
figure;
imshow(b4);
figure;
imshow(gau);

%imshowpair(BW1,BW2,BW3,'montage')
%title('Sobel Filter                                   Canny Filter');