[counter,iter,root,errors] = bisection(f1,0,2,0.0001);
semilogy(counter,errors);
hold on
[counter,iter,root,errors]=newton(f1,f1_prime,1,0.0001);
semilogy(counter,errors);
hold on
[counter,iter,root,errors]=secant(f1,0,2,0.0001);
semilogy(counter,errors);
hold off