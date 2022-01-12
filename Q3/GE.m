function B=GE(A)
    S=size(A);
    n=S(1,1);
    B=eye(n);
    for i=1:n-1
        for j=i+1:n
            B(j,i)=A(j,i)/A(i,i);
            for k=i:n
                A(j,k)=A(j,k)-B(j,i)*A(i,k);
            end
        end
    end
    for p=1:n
        for q=p:n
            B(p,q)=A(p,q);
        end
    end

end