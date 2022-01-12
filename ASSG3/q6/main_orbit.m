nbodydata=importdata('nbody.dat');
l=length(nbodydata);
c=zeros(5,5);
x = zeros(l,5);
y = zeros(l,5);
fprintf('             a         b         c         d         e\n')
for i=0:4
    x(:,i+1)=nbodydata(:,2+3*i);
    y(:,i+1)=nbodydata(:,3+3*i);
    c(:,i+1)=[y(:,i+1).^2,y(:,i+1).*x(:,i+1),x(:,i+1),y(:,i+1),ones(l,1)]\x(:,i+1).^2;
end
fprintf('Jupiter  %f  %f  %f  %f  %f\nSaturn  %f  %f  %f  %f  %f\nUranus  %f  %f  %f  %f  %f\nNeptune  %f  %f  %f  %f  %f\nPluto  %f  %f  %f  %f  %f\n',c(1,1),c(2,1),c(3,1),c(4,1),c(5,1),c(1,2),c(2,2),c(3,2),c(4,2),c(5,2),c(1,3),c(2,3),c(3,3),c(4,3),c(5,3),c(1,4),c(2,4),c(3,4),c(4,4),c(5,4),c(1,5),c(2,5),c(3,5),c(4,5),c(5,5)); 
