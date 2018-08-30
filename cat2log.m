%Logarithmic transformation

L=256;
X=imread('C:\Users\Andrew\Documents\Matlab documents\teethwhitening_Woman_Smile_small.jpg');
C=(L-1)/log(L);
Y=uint8(C*log(double(X))+1);
figure;
subplot(1,2,1);
imshow(X);title('Original','FontSize',14);

subplot(1,2,2);
imshow(Y);title('Logarithmic Transformation','FontSize',14);