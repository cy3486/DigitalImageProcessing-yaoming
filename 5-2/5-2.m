[MF,map] = imread('233.jpg');
figure(1);imshow(MF);
LEN=30;THETA=45;
INITPSF=fspecial('motion',LEN,THETA);
[J,P]=deconvblind(MF,INITPSF,30);
figure(2);imshow(J);
figure(3);imshow(P,[],'InitialMagnification','fit')