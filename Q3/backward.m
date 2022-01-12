function x=backward(B,b,ipivot)
    S=size(B);
    n=S(1,1);
    P=zeros(n,n);
    for j=1:n
        P(ipivot(j),j)=1;
    end
    U1=triu(B);
    for i=1:n
        B(i,i)=1;
    end
    L1=tril(B);
    Newb=P*b;
    y=L1\Newb;
    x=U1\y;
end
