function [counter,iter,root,errors] = secant(f,a,b,tolerance)
errors=[];
counter=[];
iter=[];
root = (a*f(b) - b*f(a))/(f(b) - f(a)); err = abs(f(root));
prev = b;
count = 0;
while err > tolerance
    root = (root*f(prev) - prev*f(root))/(f(prev) - f(root));
    err = abs(f(root)); errors = [errors,err]; count = count +1; counter = [counter,count]; iter = [iter,root];
end
end