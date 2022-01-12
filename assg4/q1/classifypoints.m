function category = classifypoints(file, points)
    load(file);
    for i = 1:length(points)
        x = points(:,i);   
        a2 = activate(x,W2,b2);            
        a3 = activate(a2,W3,b3);
        a4 = activate(a3,W4,b4); 
        if a4(1,1) >= a4(2,1)
            category(i) = 1;
        else
            category(i) = 0;
        end    
    end    

end