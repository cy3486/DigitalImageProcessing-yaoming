RGB=imread('Koala.jpg');
GRAY=rgb2gray(RGB);
figure(2);
imshow(GRAY);
[R,xp]=radon(GRAY,[0 45]);
figure;plot(xp,R(:, 1));title('R_{0^o}(x\prime)')
figure;plot(xp,R(:, 2));title('R_{45^o}(x\prime)')
