function [p,table]=newton(x,xx,yy,n)
    diff=zeros(n,n);
    for i=1:n
        diff(i,1) =yy(i);
    end
    for j=2:n
        for k=j:n
            diff(k,j)=(diff(k,j-1)-diff(k-1,j-1))/(xx(k)-xx(k-j+1));
        end
    end
    p=diff(1,1);
    for i=2:n
        mult=1;
        for j=1:i-1
            mult=mult*(x-xx(j));
        end
        p=p+diff(i,i)*mult;    
    end
    table=diff;
end