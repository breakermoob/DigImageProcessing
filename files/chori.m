function b = chori(a)
[row,col,cap]=size(a);
b = reshape(a,[row,col*cap]);
b = normaliza(b);
end
