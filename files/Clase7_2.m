clear ALL, close ALL, clc;
a=imread('../assets/placa_bin.png');
figure(1);imshow(a);
b = imclearborder(a);
figure(2);imshow([a,b]);
[l,n] = bwlabel(b); area_total=[];

for i=1:n
    c=b*0;
    c(l==i)=1;area=sum(c(:));
    area_total=[area_total,area];
end

figure(3);plot(area_total);

d=max(area_total);
e=find(area_total==d);
c=a*0;
c(l==e)=1;
figure(4);imshow(c);
[x,y]=find(c>0);
f_m=min(x(:)); f_x=max(x(:)); c_m=min(y(:)); c_x=max(y(:));
f=c(f_m:f_x,c_m:c_x); f=1-c;
figure(5);imshow(f);
g = imread('../assets/carro.jpg');
g = imresize(g, 0.3);
g = g(f_m:f_x, c_m:c_x, :);
figure(6); imshow(g);
