function b = normaliza(a)
a=double(a);
a=a/max(a(:));
a=a*255;
b=uint8(a);
end