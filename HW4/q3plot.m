tVal = 1.66565;
f = @(x) (sin(x-0.2)+1);
trap = 1:10;
errTrp = 1:10;
smp = 1:10;
errSmp = 1:10;
shw = 1:10;
errShw = 1:10;

% Trap
for k = 1:10
    n = 2.^(k)+1;
    a = -1;
    b = 1;
    h = ( (b-a)/n );
    trap(k) = 0;
    while (a<b-h)
        trap(k) = trap(k) + (h./2).*(f(a)+f(a+h) );
        shw(k) = shaw(f,-1,a+h,n);
        a = a + h;
    end
    errTrp(k) = abs( (trap(k)-tVal)./tVal);
    errShw(k)= abs( (shw(k)-tVal)./tVal );
end

% simpsons & clenshaw
for k= 1:10
    smp(k) = simpsons(-1,1,k);
    errSmp(k) = abs( (smp(k)-tVal)./tVal );
end

ln = 2.^(1:10)+1;
loglog(ln,errTrp,'-b', ln,errSmp,'--r', ln,errShw,'-.g');
