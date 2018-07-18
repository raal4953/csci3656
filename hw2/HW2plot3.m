[counter,iter,root,errors] = bisection(f3,0,2,0.0001);
plot(counter,iter);
hold on
[counter,iter,root,errors]=newton(f3,f3_prime,1,0.0001);
plot(counter,iter);
hold on
[counter,iter,root,errors]=secant(f3,0,2,0.0001);
plot(counter,iter);
hold off