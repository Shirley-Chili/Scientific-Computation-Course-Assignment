function f = f4(x)
    for i=1:2
      x(i)=sym (['x',num2str(i)]);
    end 
    f(1)=10^4*x(1)*x(2)-1;
    f(2)=exp(-x(1))+exp(-x(2))-1.0001;
end