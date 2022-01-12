n=input("pls");
A=rand(n,n)
x=ones(n,1);
b=A*x;
ipivotGER=1:n;
ipivotGE=ipivotGER.';
output1=GE(A);
[output2,l]=GEPP(A);
GEx=backward(output1,b,ipivotGE);
GEPPx=backward(output2,b,l);
error1=abs(x-A\b)./x;
error2=abs(x-GEx)./x;
error3=abs(x-GEPPx)./x;
con=cond(A);
fprintf("inv(A)*b  NO PIVOTING  PIVOTING  cond(A)\n %.2e  %.2e  %.2e  %.2e\n ",error1(1,1),error2(1,1),error3(1,1),con)