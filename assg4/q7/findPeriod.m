function T = findPeriod(t, x, y, z)
    l=length(t);
    for i= 10:l
        if abs(x(i)-x(1))<2e-2&&abs(y(i)-y(1))<2e-2&&abs(z(i)-z(1))<2e-2
            T=(t(i)-t(1))*100/365;
            break;
        end
        
    end
end