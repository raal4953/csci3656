a = 0.2;
trueVal = 15.0796 * cos(15.0796 * a);
h = 2 .^ (-5:-1:-24);
f = @(x) sin(4.8*pi*x);

faf = (1./(6.*h)) .* ( 2.*f(a+h) + 3.*f(a) - 6.*f(a-h) + f(a-(2.*h)) );
errFaf = abs(trueVal-faf).^2;

loglog(h, errFaf);