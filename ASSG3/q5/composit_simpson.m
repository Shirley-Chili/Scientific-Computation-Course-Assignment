function erfs=composit_simpson(f,b,h)
    n=b/h;
    ti=linspace(0,b,2*n+1);
    y=f(ti);
    erfs=(h/6)*(y(1)+y(2*n+1)+2*sum(y(3:2:2*n-1))+4*sum(y(2:2:2*n)));
end