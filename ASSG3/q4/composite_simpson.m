function [SC,C1]=composite_simpson(f,a,b,tol,I);   
    n=0;
    error=88888;
    while error>tol
        n=n+2;
        x=linspace(a,b,2*n+1);
        y=f(x);
        SC=((b-a)/n/6)*(y(1)+y(2*n+1)+2*sum(y(3:2:2*n-1))+4*sum(y(2:2:2*n)));
        error=abs(SC-I);
    end
    C1=2*n+1;
end