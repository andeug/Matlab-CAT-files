%Gamma transformation

X=imread('C:\Users\Andrew\Documents\Matlab documents\teethwhitening_Woman_Smile_small.jpg');
gamma=0.05;
L=256;
c=(L-1)/(L-1)^gamma; %it maps L-1 into L-1

Y=uint8(c*double(X).^gamma);
figure;

subplot(2,2,1);
imshow(X);title('Original','FontSize',14);

subplot(2,2,2);
imshow(Y);title('Gamma=0.05', 'FontSize',14);

gamma = 30;
c=(L-1)/(L-1)^gamma;
M=uint8(c*double(X).^gamma);
subplot(2,2,3);
imshow(M);title('Gamma=30', 'FontSize',14);

gamma = 0.1;
c=(L-1)/(L-1)^gamma;
Q=uint8(c*double(X).^gamma);
subplot(2,2,4);
imshow(Q);title('Gamma=0.1', 'FontSize',14);

