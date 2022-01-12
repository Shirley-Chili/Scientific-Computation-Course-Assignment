function [S,C2]=recursion_simpson(f,S,nodes,y,C2,tol);
    h=(nodes(1,end)-nodes(1))/2;
    nnodes=[nodes(1)+h/2 nodes(2)+h/2];
    ny=feval(f,nnodes);
    S1=(y(1)+4*ny(1)+y(2))*h/6;
    S2=(y(2)+4*ny(2)+y(3))*h/6;
    temp=S1+S2;
    C2=C2+2;
    if abs(temp-S)<tol
        S=16/15*(S1+S2)-S/15;
    else
        tol=tol/2;
        [S1,C21]=recursion_simpson(f,S1,[nodes(1),nodes(1)+h/2,nodes(2)],[y(1),ny(1),y(2)],C2,tol);
        [S2,C22]=recursion_simpson(f,S2,[nodes(2),nodes(2)+h/2,nodes(end)],[y(2),ny(2),y(3)],C2,tol);
        S=S1+S2;
        C2=C21+C22;
    end
end