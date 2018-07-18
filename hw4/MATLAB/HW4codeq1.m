a = 0.2;
trueVal = 15.0796 * cos(15.0796 * a);
h = 2 .^ (-5:-1:-24);
f = @(x) sin(4.8*pi*x);

fwdDiff = (f(a+h)-f(a)) ./ h;
errFwd = abs(trueVal-fwdDiff).^2;

ctrDiff = ( f(a+h)-f(a-h) ) ./ (2*h);
errCtr = abs(trueVal-ctrDiff).^2;

bkbDiff = (f(a)-f(a-h)) ./ h;
errBkd = abs(trueVal-bkbDiff).^2;

faf = (1./(6.*h)) .* ( 2.*f(a+h) + 3.*f(a) - 6.*f(a-h) + f(a-(2.*h)) );
errFaf = abs(trueVal-faf).^2;

loglog(h,errFwd,'-b', h,errCtr,'--r', h,errBkd, '-.m', h, errFaf, '--g');

( log(errBkd(8)) - log(errBkd(7) ) )/ ( log(h(8) ) - log(h(7) ) )
( log(errFwd(8) ) - log(errFwd(7) ) )/(log(h(8)) - log(h(7)) )
( log(errCtr(4) ) - log(errCtr(3) ) )/(log(h(4)) - log(h(3)) )
( log(errFaf(3) ) - log(errFaf(2) ) )/(log(h(3)) - log(h(2)) )