function f = f3(x)
    for i=1:4
      x(i)=sym (['x',num2str(i)]);
    end 
    f(1)=x(1)+10*x(2);
    f(2)=sqrt(5)*(x(3)-x(4));
    f(3)=(x(2)-x(3))^2;
    f(4)=sqrt(10)*(x(1)-x(4))^2;
end