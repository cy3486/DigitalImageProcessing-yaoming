clear;
%Butterworth LPF
I = imread('Tulips.jpg');
I = rgb2gray(I);
J = imnoise(I,'salt & pepper',0.02);
subplot(121);imshow(J);title('salt&pepper');
J = double(J);
f = fft2(J);
g = fftshift(f);
[M,N] = size(f);
n = 3;d0 = 20;
n1 = floor(M/2);
n2 = floor(N/2);
for i = 1:M
	for j = 1:N
		d = sqrt((i-n1)^2+(j-n2)^2);
		h = 1/(1+(d/d0)^(2*n));
		g(i,j) = h*g(i,j);
	end
end
g = ifftshift(g);
g = uint8(real(ifft2(g)));
subplot(122);imshow(g)
