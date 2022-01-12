function [xlist, outputx,iteration]=newton(f,x0)
    eps=1e-6;
    iteration=1;
    tol=8888;
    maxlevel=1000;
    x=transpose(symvar(f));
    diff = jacobian(f,x);
    while tol>eps && iteration<=maxlevel
        fx = subs(f,x,x0);
        dfx = subs(diff,x,x0);
        outputx=vpa(x0-dfx\fx');
        tol=norm(outputx-x0);
        x0=outputx;
        xlist(:,iteration)=x0;
        iteration=iteration+1;
    end
end