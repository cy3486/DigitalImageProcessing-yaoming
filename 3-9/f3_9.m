I=zeros(100,100);
I(25:75,25:75)=1;
figure(1);
imshow(I);
theta=0:180;
[R,xp]=radon(I,theta);
figure(2);
imagesc(theta, xp, R);

title('R_[\theta}(X\prime)');
xlabel('\theta(degrees)');
ylabel('X\prime');
set(gca,'Xtick',0:20:180);
colormap(hot);
colorbar;