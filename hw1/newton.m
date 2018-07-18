function [counter,iter,root,errors] = newton(f,f_prime,root,tolerance)
    errors=[]; err = abs(f(root));counter=[]; iter=[]; count = 0;
    while err > tolerance
    root = root - f(root)/f_prime(root);
    err = abs(f(root)); errors = [errors,err]; count = count +1;
    counter = [counter,count];
    iter = [iter,root];
    end
end