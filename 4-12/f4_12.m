clear;
I = imread('Hydrangeas.jpg');
I = rgb2gray(I);
subplot(121),imshow(I);
H = fspecial('Sobel');
H = H';             %SobelË®Æ½Ä£°å
TH = filter2(H,I);
subplot(122),imshow(TH,[])