f=@(x,u) [u(2);u(1)+2*u(4)-0.987722529*((u(1)+0.012277471)/((((u(1)+0.012277471)^2)+u(3)^2)^(3/2)))-0.012277471*((u(1)-0.987722529)/((((u(1)-0.987722529)^2)+u(3)^2)^(3/2))); u(4); u(3)-2*u(2)-0.987722529*(u(3)/((((u(1)+0.012277471)^2)+u(3)^2)^(3/2)))-0.012277471*(u(3)/((((u(1)-0.987722529)^2)+u(3)^2)^(3/2)))];
y0=[0.994,0,0,-2.0015851063790825224205378622]';
opts = odeset('RelTol',1e-10,'AbsTol',1e-10);
t023=cputime;
[t, y, stats1] = ode23(f,[0 1000],y0,opts);
t123=cputime-t023
t045=cputime;
[t, y, stats2] = ode45(f,[0 1000],y0,opts);
t145=cputime-t045
t023s=cputime;
[t, y, stats3] = ode23s(f,[0 1000],y0,opts);
t123s=cputime-t023s
t015s=cputime;
[t, y, stats4] = ode15s(f,[0 1000],y0,opts);
t115s=cputime-t015s
t0113=cputime;
[t, y, stats5] = ode113(f,[0 1000],y0,opts);
t1113=cputime-t0113
fprintf('       CPU time      steps       failed steps       function evaluations\n')
fprintf('ode23  %f       %d      %d         %d  \node45  %f       %d      %d         %d  \node23s  %f       %d      %d         %d  \node15s  %f       %d      %d         %d  \node113  %f       %d      %d         %d  \n',t123,stats1(1),stats1(2),stats1(3),t145,stats2(1),stats2(2),stats2(3),t123s,stats3(1),stats3(2),stats3(3),t115s,stats4(1),stats4(2),stats4(3),t1113,stats5(1),stats5(2),stats5(3)); 