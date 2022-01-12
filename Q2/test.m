function [ex1,ex2,condA]=test(eps)

    A=[1,1+eps;1-eps,1];
    B=[1+(1+eps)*eps;1];
    sol=inv(A)*B;
    ex1=abs(sol(1,1)-1);
    ex2=abs((sol(2,1)-eps)/eps);
    condA=cond(A);
end