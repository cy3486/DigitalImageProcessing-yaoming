figure(1);
[u,v]=meshgrid(-1:0.01:1);
F1=abs(sinc(u.*pi));
F2=abs(sinc(v.*pi));
F=F1.*F2;
surf(u,v,F);
shading interp;
axis off;
figure(2);
F1=histeq(F);
imshow(F1)