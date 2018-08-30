%step 1: Reading Image image, which is an image of a woman smilling.
I = imread('C:\Users\Andrew\Documents\Matlab documents\teethwhitening_Woman_Smile_small.jpg');
figure, imshow(I), title('original image');
I2 = rgb2gray(I);

%Step 2: Detect objects in the image
[~, threshold] = edge(I2, 'sobel');
fudgeFactor = .5;
BWs = edge(I2,'sobel', threshold * fudgeFactor);
figure, imshow(BWs), title('binary gradient mask');

%Step 3: Dilating the Image
se90 = strel('line', 3, 90);
se0 = strel('line', 3, 0);

%The binary gradient mask is dilated using the vertical structuring element followed by the horizontal structuring element. 
%The imdilate function dilates the image.
BWsdil = imdilate(BWs, [se90 se0]);
figure, imshow(BWsdil), title('dilated gradient mask');

%Step 4: Filling the  Interior Gaps That dilated gradient mask shows the outline of the object quite nicely.
BWdfill = imfill(BWsdil, 'holes');
figure, imshow(BWdfill);
title('binary image with filled holes');

%Step 5: Removing Connected Objects on Border.
BWnobord = imclearborder(BWdfill, 4);
figure, imshow(BWnobord), title('cleared border image');

%Step 6: Smoothening the Object Finally
seD = strel('diamond',1);
BWfinal = imerode(BWnobord,seD);
BWfinal = imerode(BWfinal,seD);
figure, imshow(BWfinal), title('segmented image');

%An alternate method for displaying the segmented object.
BWoutline = bwperim(BWfinal);
Segout = I2; 
Segout(BWoutline) = 255; 
figure, imshow(Segout), title('outlined original image');