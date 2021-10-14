%理想低通滤波器产生的模糊和振铃现象
clear;
J = imread('Koala.jpg');
J = rgb2gray(J);
subplot(131);imshow(J);
J = double(J);
%Fourier Transform
f = fft2(J);
%数据矩阵平衡
g = fftshift(f);
subplot(132);imshow(log(abs(g)),[]),color(jet(64));
[M,N] = size(f);
n1 = floor(M/2);
n2 = floor(N/2);
% d0 = 5, 15, 45, 65
d0 = 5;
for i = 1:M
	for j = 1:N
		d = sqrt((i-n1)^2+(j-n2)^2);
		if d<=d0
			h = 1;
		else
			h = 0;
		end
			g(i,j) = h*g(i,j);
	end
end
g = ifftshift(g);
g = uint8(real(ifft2(g)));
subplot(133);imshow(g)