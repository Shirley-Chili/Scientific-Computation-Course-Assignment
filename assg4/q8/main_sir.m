f=@(x,y) [-1.71.*y(1)+0.43.*y(2)+8.32.*y(3)+0.0007]
y0=[999,1,0];
RS=[0.9,1,3,5];
for i =1:4
   beta=RS(i)/999/14;
   f=@(x,y) [-beta*y(1)*y(2);beta*y(1)*y(2)-y(2)/14;y(2)/14];
   [t,y]=ode45(f,[0 200],y0);
   figure(i);
   plot(t,y)
   legend('S','I','R')
end
