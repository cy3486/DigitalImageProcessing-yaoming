I1=imread('212121.jpg');
I=rgb2gray(I1);
imshow(I);
I=double(I);
[M,N]=size(I);
for k=1:8
	figure(k);
	J=zeros(M,N);
	for i=1:M
		for j=1:N
			temp=I(i,j);;
			s1=0;
			s2=0;
			range=[k:-1:1];
			for d=range
				s1=2^(8-d)+s1;
				s2=2^(8-d+1);
				if temp>=s1&temp<s2;
					J(i,j)=255;
					break;
				end
			end
		end
	end
	J=uint8(J);
figure;
imshow(J);
end