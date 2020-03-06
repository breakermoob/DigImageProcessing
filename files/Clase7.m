clear ALL, close ALL, clc

a = imread('../assets/figuras.bmp');  [fil,col,cap]=size(a); if cap > 1; a= rgb2gray(a); end
%figure(1); imshow(a);
[l,n] = bwlabel(a);
%figure(2); imagesc(l); colormap(copper);
title(['número de objetos = ',num2str(n)]);

area_total = [];[fil,col,cap]=size(a);
for i=1:n
   b = a*0;
   b(l==i)=1; area=sum(b(:)); c=recorta(b);[fil,col,cap]=size(c);
   %figure(3); imshow(b); impixelinfo;
   figure(5); imshow(c); impixelinfo;
   title(['area=', num2str(area),'area box = ',num2str(fil*col)]);
   area_total = [area_total, area];
   pause
end
%figure(4); plot(area_total);