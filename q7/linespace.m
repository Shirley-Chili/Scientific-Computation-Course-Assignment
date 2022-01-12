x=linspace(-pi, pi, 21);
y=sin(x);
P=polyfit(x,y,20);
f = @(t) sin(t);
xx=linspace(-pi,pi,41);
yy=polyval(P,xx);
%plot(xx,yy)
hold on
y2=f(xx);
%plot(xx,y2)
%legend('y=p(x)','y=f(x)')
%hold off
error=abs(f(xx)-yy);
plot(xx,error)