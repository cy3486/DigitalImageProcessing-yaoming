I=imread('Hydrangeas.jpg');
I=rgb2gray(I);
[M,N]=size(I);
II1=zeros(M,N);
for i=1:16
	II(:,:,i)=imnoise(I,'gaussian',0,0.01);
	II1=II1+double(II(:,:,i));
	if or(or(i==1,i==4),or(i==8,i==16));
		figure;
		imshow(uint8(II1/i));
	end
end