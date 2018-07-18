function x = horner(a,z)
m = length(z);
n = length(a);
p = a(1);
for j = 2:n
    p = p.*z + a(j);
end
x = p;

%p1 = (z-2).^9;

%z = linspace(1.92, 2.08, 8000);
%z = linspace(10, 11, 8000);
 
%plot(z, horner([1 -18 144 -672 2016 -4032 5376 -4608 2304 -512],z))
 