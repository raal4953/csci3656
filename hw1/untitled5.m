[counter,iter,root,errors] = bisection(f2,0,2,0.0001);
plot(counter,iter);
hold on
[counter,iter,root,errors]=newton(f2,f2_prime,1,0.0001);
plot(counter,iter);
hold on
[counter,iter,root,errors]=secant(f2,0,2,0.0001);
plot(counter,iter);
hold off