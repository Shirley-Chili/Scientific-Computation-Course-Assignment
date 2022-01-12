function x=bisection(f,a,b)
    c=8888;
    n=0;
    while abs(2-c)>1e-6 &&n<=1000
        n=n+1
        c=(a+b)/2
        if f(c)*f(b)==0
            x=c;
            break;
        elseif f(c)*f(b)<0
            a=c;
        else
            b=c;
        end
    end
    x=c;
end