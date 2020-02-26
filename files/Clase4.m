clear all; close all;  clc;
a = imread('paisaje2.jpg');
b = imread('auto.jpg');
%figure(1); imshow(a);impixelinfo;
%figure(2); imshow(b);impixelinfo;

%Capturamos la sdimensiones de b
[row,col,cap]=size(b);
%Hacemos un resize, ya que vamos a sumar las imagenes y deben estar iguales
a=imresize(a,[row,col]);
%Sumamos las imagenes para superponerlas
c=a+b; 
%figure(3); imshow(c);impixelinfo;

for i=0:0.03:1
    c=a*i+b*(1-i);
    figure(3);
    imshow(c);
    pause(0.1)
end

