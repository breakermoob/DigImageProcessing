function b = waffer(a)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
[fil, col] = size(a);
b = reshape(a, [fil,  col/3, 3]);
end