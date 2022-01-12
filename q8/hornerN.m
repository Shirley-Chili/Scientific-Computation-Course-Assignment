function y=hornerN(xi,xx,yy,n)
    syms x;
    [p,t]=newton(x,xx,yy,n);
    output=t(1,1);
    for i=2:n
        output=output+t(i,i)*t
    end
end
p = a(1);
t = x;      
for i = 2:length(a)  
    p = p+a(i)*t;      % 1 addition, 1 multiplication
    t = t*x;           % 1 multiplication
end
p