[xlist1, outputx1,iteration1]=newton(f1,[15;-2])
[xlist2, outputx2,iteration2]=newton(f2,[(1+sqrt(3))/2;(1-sqrt(3))/2;sqrt(3)])
[xlist3, outputx3,iteration3]=newton(f3,[1;2;1;1])
[xlist4, outputx4,iteration4]=newton(f4,[0;0])
f11=@(x)[x(1)-13+x(2)*(x(2)*(5-x(2))-2);x(1)-29+x(2)*((x(2)*(1+x(2))-14))];
f22=@(x)[x(1)^2+x(2)^2+x(3)^2-5;x(1)+x(2)-1;x(1)+x(3)-3];
f33=@(x)[x(1)+10*x(2);sqrt(5)*(x(3)-x(4));(x(2)-x(3))^2;sqrt(10)*(x(1)-x(4))^2];
f44=@(x)[10^4*x(1)*x(2)-1;exp(-x(1))+exp(-x(2))-1.0001];
options=optimset('TolFun',1e-6);
[fsolve1,feval1,exit1]=fsolve(f11,[15;-2],options)
[fsolve2,feval2,exit2]=fsolve(f22,[(1+sqrt(3))/2;(1-sqrt(3))/2;sqrt(3)],options)
[fsolve3,feval3,exit3]=fsolve(f33,[1;2;1;1],options)
[fsolve4,feval4,exit4]=fsolve(f44,[0;0],options)