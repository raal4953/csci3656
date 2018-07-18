x = 1:8;
n = 1:8;
for k = 1:8
    n(k:k) = 2.^k + 1;
    An = Vandermonde(n(k:k),(n(k:k) - 1));
    x(k,k) = cond(An);
end
semilogy(x,n);
%plot(x,n);