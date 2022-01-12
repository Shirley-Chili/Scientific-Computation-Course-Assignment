x=[0,0.1,0.2,0.3];
f = @(x) sqrt(x+1);
y=f(x);
p=polyfit(x,y,3)
data=[0.05,0.15];
approx=polyval(p,data)
h=0.1;
n=3;

M=-15/16*1^(-7/2)
BoundError=abs(M/(4*(n+1))*h^(n+1))
actualerror1=abs(f(0.05)-approx(1))
actualerror2=abs(f(0.15)-approx(2))