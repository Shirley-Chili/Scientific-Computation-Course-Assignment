function erfm=composit_midpoint(f,b,h)
    n=b/h;
    i = 1:n;
    erfm=sum(f((i-0.5).*h))*h;
end