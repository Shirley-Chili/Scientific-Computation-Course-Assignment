x=linspace(-1, 1, 21);
y=abs(x);
P=polyfit(x,y,20);
f = @(t) abs(t);
xx=linspace(-1,1,41);
yy=polyval(P,xx);
plot(xx,yy)
hold on
y2=f(xx);
plot(xx,y2)
legend('y=p(x)','y=f(x)')
%hold off
%error=abs(f(xx)-yy);
%plot(xx,error)