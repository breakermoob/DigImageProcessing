function b = recorta(a)
[x,y]=find(a>0);
f_m=min(x(:)); f_x=max(x(:));
c_m=min(y(:)); c_x=max(y(:));
b=a(f_m:f_x,c_m:c_x);
end