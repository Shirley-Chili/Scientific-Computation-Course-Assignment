f = @(x)((x-2).^9);
fff=@(x)(x.^9-18.*x.^8 + 144.*x.^7-672.*x.^6 + 2016.*x.^5-4032.*x.^4 + 5376.*x.^3-4608.*x.^2 + 2304.*x-512);
ff=@(x)(((((((((x-18).*x+144).*x-672).*x+2016).*x-4032).*x+5376).*x-4608).*x+2304).*x-512);
x=linspace(1.92,2.08,161);
y1=f(x);
y2=ff(x);
%plot(x,y1);
%title('(x-2)^9')
%plot(x,y2);
%title('Horner’s method')
x=bisection(ff,1.92,2.07)
options=optimset('TolFun',1e-6);
ans1=fsolve(f,1.9,options)
ans2=fsolve(fff,1.9,options)