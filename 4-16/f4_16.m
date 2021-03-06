J=imread('Jellyfish.jpg');
J=rgb2gray(J);
subplot(211);imshow(J);
J=double(J);
f=fft2(J);
g=fftshift(f);
[M,N]=size(f);
d0=10;rl=0.5;rh=2;c=4;
n1=floor(M/2);n2=floor(N/2);
for i=1:M
	for j=1:N
		d=sqrt((i-n1)^2+(j-n2)^2);
		h=(rh-rl)*(1-exp(-c*(d.^2/d0.^2)))+rl;
	end
end
g=ifftshift(g);
g=uint8(real(ifft2(g)));
subplot(212);imshow(g)