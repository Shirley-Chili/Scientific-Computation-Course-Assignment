function erft=composit_trapezoid(f,b,h)
    n=b/h;
    i=1:n;
    erft=sum(f(i.*h)).*h+f(0)*h/2-f(b)*h/2;
end