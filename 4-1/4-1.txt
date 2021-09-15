I=imread('Penguins.jpg');
imshow(I);
I=double(I);
[M,N]=size(I);
%liner gray transform
for i=1:M
	for j=1:N
		if I(i,j)<=30
			I(i,j)=I(i,j);
		elseif I(i,j)<=150
			I(i,j)=(200-30)/(150-30)*(I(i,j)-30)+30;
		else
			I(i,j)=(255-200)/(255-150)*(I(i,j)-150)+200;
		end
	end
end
%show
figure(2);
imshow(uint8(I));
