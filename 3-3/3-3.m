figure(1);
load imdemos saturn2;
imshow(saturn2);
figure(2);
S=fftshift(fft2(saturn2));
imshow(log(abs(S)),[]);