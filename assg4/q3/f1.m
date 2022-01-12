function f = f1(x)
    for i=1:2
      x(i)=sym (['x',num2str(i)]);
    end 
    f(1)=x(1)-13+x(2)*(x(2)*(5-x(2))-2);
    f(2)=x(1)-29+x(2)*((x(2)*(1+x(2))-14));
end