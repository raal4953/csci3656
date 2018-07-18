function [ret] = Forward(x,h,f)
ret = (f(x-h)-f(x))./h;