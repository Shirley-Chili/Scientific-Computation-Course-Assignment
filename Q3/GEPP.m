function [B,ipivot]=GEPP(A)
    S=size(A);
    n=S(1,1);
    P=eye(n);
    ipivot=zeros(1,n);
    for i=1:n-1
        [x,y]=max(abs(A(i:n,i)));
        %ipivot(1,i)=y+i-1;
        if((y+i-1)~=i)
            A([i y+i-1],:)=A([y+i-1 i],:);
            P([i y+i-1],:)=P([y+i-1 i],:);
        end
    end
    for i=1:n
        for j=1:n
            if(P(j,i) ==1)
                ipivot(1,i)=j;
            end 
        end
    end
    B=GE(A);
end