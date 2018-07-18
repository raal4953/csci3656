function [counter,iter,root,errors] = bisection(f,a,b,tolerance)
errors=[];
counter=[];
iter=[];
if f(a)*f(b)>0 
    disp("guesses do not bracket root!")
else
    root = (a + b)/2; err = abs(f(root)); count = 0; 
    while err > tolerance
    if f(a)*f(root)<0
        b = root;
    else
        a = root;
    end
    root = (a + b)/2; err = abs(f(root)); count = count + 1;
    errors = [errors,err]; counter = [counter,count]; iter = [iter,root];
    end
end
end