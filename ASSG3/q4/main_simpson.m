tol=1e-3;
f = @(x)exp(-2366936.*(abs(x.^3)+54321.*x.^4));
I = quad(f,-1111,1111,1e-5);
[A2 C2]=adaptive_simpson(f,-1111,1111,tol)
[A1 C1]=composite_simpson(f,-1111,1111,tol,I)
ERROR1=abs(A1-I)
ERROR2=abs(A2-I)