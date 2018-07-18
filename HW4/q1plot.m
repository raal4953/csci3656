f = @(x) sin(4.8 .* pi .*x);
fprime = @(x) 15.0796 .* cos(15.0796 .* x);
x = 0.2;
%b = 2.^(-14);
%bb = (f(x+b)-f(x))/b - fprime(x)
forward = 1:20;
backward = 1:20;
central = 1:20;
h = 1:20;
for k = 1:20
    h(k) = 2.^(-(k+4));
    forward(k) =  (abs( ((f(x+h(k))-f(x))./h(k)) - fprime(x) ))^2;
    backward(k) =   (abs( fprime(x) - ((f(x)-f(x-h(k)))./h(k)) ))^2;
    central(k) =  (abs( ((f(x+h(k))-f(x-h(k)))./(2.*h(k))) - fprime(x) ))^2;
end


loglog(h, forward, h, backward, h, central);