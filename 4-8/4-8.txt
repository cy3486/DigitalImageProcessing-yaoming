I0=imread('Desert.jpg');
I=rgb2gray(I0);
[M,N]=size(I);
for i=1:8:257
	counts(i)=i;
end
Q0=imread('Desert.jpg');
Q=rgb2gray(Q0);
N=histeq(Q,counts);
figure
subplot(121);imshow(N);
subplot(122);imhist(N);
axis([0 260 0 5000])