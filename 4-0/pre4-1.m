I=imread('catch.PNG');
imshow(I);
I=double(I);
I=256-1-I;
I=uint8(I);
figure;
imshow(I);