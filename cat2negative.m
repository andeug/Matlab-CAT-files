%Negative tranformation
%create uint8 images
L=256;
%reading in a colored teeth whitening  image
X=imread('C:\Users\Andrew\Documents\Matlab documents\teethwhitening_Woman_Smile_small.jpg');

Y=255-X;%negative transformation

figure;
%create subplot
subplot(1,2,1);
imshow(X);title('original image','FontSize',14);
subplot(1,2,2);
imshow(Y);title('Negative image','FontSize',14);