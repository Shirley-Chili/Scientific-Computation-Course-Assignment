function [S,C2]=adaptive_simpson(f,a,b,tol)
    C2=0;
    h=b-a;
    nodes=[a,a+h/2,b];
    y=f(nodes);
    S=(y(1,1)+4*y(1,2)+y(1,3))*h/6;
    tol=tol*15;
    [S,C2]=recursion_simpson(f,S,nodes,y,C2,tol);
    C2=C2+3 ;
end
    
    