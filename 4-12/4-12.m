clear;
I = imread('Hydrangeas.jpg');
I = rgb2gray(I);
subplot(121),imshow(I);
H = fspecial('Sobel');
H = H';             %Sobelˮƽģ��
TH = filter2(H,I);
subplot(122),imshow(TH,[])