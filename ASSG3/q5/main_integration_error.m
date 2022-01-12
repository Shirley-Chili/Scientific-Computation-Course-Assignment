f = @(t)exp(-t.^2)*2/sqrt(pi);
I=integral(f,0,1);
for i = 1:10
   h(i)=1/2^i;
   errort(i) = abs(composit_trapezoid(f,1,h(i))-I);
   errorm(i) = abs(composit_midpoint(f,1,h(i))-I);
   errors(i) = abs(composit_simpson(f,1,h(i))-I);
end

loglog(h,errort);
hold on
loglog(h,errorm);
loglog(h,errors);
legend('composit_trapezoid','composit_midpoint','composit_simpson');
xlabel('h');
ylabel('error');
hold off
t=[ones(10,1),log(h)']\(log(errort))';
ct=exp(t(1))
kt=t(2)
m=[ones(10,1),log(h)']\(log(errorm))';
cm=exp(m(1))
km=m(2)
s=[ones(10,1),log(h)']\(log(errors))';
cs=exp(s(1))
ks=s(2)
fprintf('trapezoid %.2e*h^%.2f\n', ct, kt);
fprintf('midpoint %.2e*h^%.2f\n', cm, km);
fprintf('simpson %.2e*h^%.2f\n', cs, ks);