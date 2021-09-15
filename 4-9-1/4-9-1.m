I=imread('Jellyfish.jpg');
I=rgb2gray(I);
[M,N]=size(I);
I=double(I);
I1=ones(M,N)*255;
I1(20:750,100:800)=0;
for i=1:M
	for j=1:N
		II(i,j)=bitor(I(i,j),I1(i,j));
	end
end
I=uint8(I);
I1=uint8(I1);
II=uint8(II);
subplot(131);imshow(I);
subplot(132);imshow(I1);
subplot(133);imshow(II);
