I=imread('Tulips.jpg');
I1=rgb2gray(I);
figure(1);
imshow(I1);
I2=double(I1);
[M,N]=size(I1);
for i=1:M
	for j=1:N
		if I1(i,j)<=50
			I2(i,j)=40;
		elseif I1(i,j)<=180
			I2(i,j)=220;
		else
			I2(i,j)=40;
		end
	end
end
I2=uint8(I2);
figure(2)
imshow(I2);