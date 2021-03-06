clear all; close all;  clc;
a = imread('../assets/carro.jpg'); a = imresize(a,0.3);
%figure(1);imshow(a);impixelinfo;
b = rgb2hsv(a); s=b(:,:,2);
%figure(2);imshow(b);impixelinfo;
c = rgb2lab(a);b2=c(:,:,3);
%figure(3);imshow(c);impixelinfo;
a1=chori(a);
b1=chori(b);
c1=chori(c);
%figure(4);imshow([a1;b1;c1]);impixelinfo;
cform = makecform('srgb2cmyk');
d=applycform(a,cform);
%Todo de la capa 4
k=d(:,:,4);
d=d(:,:,1:3);y=d(:,:,3);
k=normaliza(k);
%Pega la k tres veces, ya que ; permite ponerlas abajo, pero debe tener la
%misma dimension y el otro tiene cmy
k=[k,k,k];
%chori es una funcion que pega las imagenes en una sola fila
d1=chori(d);
%figure(5);imshow([d1;k]);impixelinfo;
s=normaliza(s);b2= normaliza(b2);y=normaliza(y);  
%figure(6);imshow([s,b2,y]);impixelinfo;

%L=graythresh(b2); b2=imbinarize(b2,L);
L=graythresh(b2); b2=imbinarize(b2,L*2.5);
%impixe pellisca la imagen
%e=impixel(b2);e=min(e(:));
%b2(b2<e)=0;b2(b2>0)=255;
figure(7);imshow(b2);
b2=[b2,b2,b2];b2=waffer(b2); b2=normaliza(b2);
a(b2==0)=0;
figure(8);imshow(a);
imwrite(b2,'../assets/placa_bin.png');
imwrite(a,'../assets/placa_bin_color.png');
