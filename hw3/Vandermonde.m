function [mat] = Vandermonde(n,d)
mat = ones(n,d+1);
a = linspace(-1,1,n);
mat(:,2) = a.';
count = 3;
for i = 2:d
    a = a.^i;
    mat(:,count) = a;
    count = count + 1;
end
