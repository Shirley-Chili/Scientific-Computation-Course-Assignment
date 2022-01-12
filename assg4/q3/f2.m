function f = f2(x)
    for i=1:3
      x(i)=sym (['x',num2str(i)]);
    end 
    f(1)=x(1)^2+x(2)^2+x(3)^2-5;
    f(2)=x(1)+x(2)-1;
    f(3)=x(1)+x(3)-3;
end