function int = simpsons(a,b,k)
f = @(x) (sin(x-0.2)+1);
n = 1+2.^(k);
h=(b-a)./n;
x=a:h:b;
r = f(x);
n=length(x);

st4=0;
st2=0;

for i=2:2:n
    st4 = st4 + 4*r(i);
end

for i=3:2:n-1
    st2 = st2 + 2*r(i);
end

int = h/3*(r(1)+st4+st2+r(n));
end
