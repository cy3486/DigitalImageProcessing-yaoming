f=checkerboard(24);
figure(1);imshow(f);
s=0.7;theta=pi/6;
T=[s*cos(theta) s*sin(theta) 0
-s*sin(theta) s*cos(theta) 0
0 0 1];
tform=maketform('affine',T);
g1=imtransform(f,tform,'nearest');
g2=imtransform(f,tform);
g3=imtransform(f,tform,'FillValue',0.5);
figure(2);imshow(g1);
figure(3);imshow(g2);
figure(4);imshow(g3)