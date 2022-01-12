function [B,ipivot]=GEPP1(A)
    S=size(A);
    n=S(1,1);
    P=eye(n);
    ipivot=zeros(1,n);
    for i=1:n-1
        [x,y]=max(abs(A(i:n,i)));
        ipivot(1,i)=y;
        if((y+i-1)~=i)
            A([i y+i-1],:)=A([y+i-1 i],:);
            P([i y+i-1],:)=P([y+i-1 i],:);
        end
    end
    for j=1:n
        ex=any(ipivot==j);
        if(ex==0)
            ipivot(1,n)=j;
        end    
    end
    B=GE(A);
    
end