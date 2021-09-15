SI=imread('Desert.jpg');
SI=rgb2gray(SI);
subplot(221);imshow(SI);
[M,N]=size(SI);
I=SI;
for i=1:M
	for j=1:N
		I(i,j)=bitand(I(i,j),240);
	end
end
subplot(222);
imshow(I);
IMIN=double(SI)-double(I);
IMIN=uint8(IMIN);
subplot(223);imshow(IMIN);
IMIN=histeq(IMIN);
subplot(224);imshow(IMIN);