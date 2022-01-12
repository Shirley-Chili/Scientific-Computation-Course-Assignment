f=@(x,y) [-1.71.*y(1)+0.43.*y(2)+8.32.*y(3)+0.0007;1.71.*y(1)-8.75.*y(2);-10.03.*y(3)+0.43.*y(4)+0.035.*y(5);8.32.*y(2)+1.71.*y(3)-1.12.*y(4);-1.745.*y(5)+0.43.*y(6)+0.43.*y(7);-280.*y(6)*y(8)+0.69.*y(4)+1.71.*y(5)-0.43.*y(6)+0.69.*y(7);280.*y(6)*y(8)-1.81.*y(7);-280.*y(6)*y(8)+1.81.*y(7)];
y0=[1; 0; 0; 0; 0; 0;0;0.0057 ]';
opts = odeset('RelTol',1e-6,'AbsTol',1e-6);
t023s=cputime;
[t, y, stats1] = ode23s(f,[0 321.8122],y0,opts);
t123s=cputime-t023s
stats1
for i=1:8
    figure(i)
    plot(t,y(:,i))
end
t015s=cputime;
[t, y, stats2] = ode15s(f,[0 321.8122],y0,opts);

t015s=cputime-t015s
stats2

t045=cputime;
[t, y, stats3] = ode45(f,[0 321.8122],y0,opts);
t145=cputime-t045
stats3
fprintf('       CPU time      steps       failed steps       function evaluations       LU decompositions        nonlinear solves\n')
fprintf('ode23s  %f       %d         %d             %d             %d             %d  \node15s  %f       %d         %d             %d             %d             %d  \node45  %f       %d         %d             %d             %d             %d  \n',t123s,stats1(1),stats1(2),stats1(3),stats1(5),stats1(6),t015s,stats2(1),stats2(2),stats2(3),stats2(5),stats2(6), t145,stats3(1),stats3(2),stats3(3),stats3(5),stats3(6)); 