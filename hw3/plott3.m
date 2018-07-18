f = @(x) 2+x+x.*sin(2.*pi.*x);
px = Vandermonde(33,3);
fx = linspace(-1,1,33);
cof = mldivide(px,f(fx).');
b = @(x) cof(1:1) + cof(2:2).*x + cof(3:3).*x.^2 + cof(4:4).*x.^3;
x = linspace(-1,1.100);
plot(b(x),x);
hold on
plot(f(x),x);
hold off