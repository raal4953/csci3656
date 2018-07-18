f = @(x) 2+x+x.*sin(2.*pi.*x);
for d = 1:31
    px = Vandermonde(33,d);
    fx = linspace(-1,1,33);
    cof = mldivide(px,f(fx).');
    b = polyval(cof,x);
    x = linspace(-1,1.100);
    semilogy(cond(b),d);
    hold on
end

hold off