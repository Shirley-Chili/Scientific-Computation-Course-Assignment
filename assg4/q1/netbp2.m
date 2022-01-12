function cost =netbp2(neurons, data, labels, niter, lr, file)
%NETBP  Uses backpropagation to train a network 
% Initialize weights and biases 
rng(5000);
W2 = 0.5*randn(neurons(1),2); W3 = 0.5*randn(neurons(2),neurons(1)); W4 = 0.5*randn(2,neurons(2));
b2 = 0.5*randn(neurons(1),1); b3 = 0.5*randn(neurons(2),1); b4 = 0.5*randn(2,1);
eta=lr;

savecost = zeros(niter,1); % value of cost function at each iteration
for counter = 1:niter
    k = randi(length(data));         % choose a training point at random
    % Forward pass
    x = data(:,k); 
    a2 = activate(x,W2,b2);
    a3 = activate(a2,W3,b3);
    a4 = activate(a3,W4,b4);
    % Backward pass
    delta4 = a4.*(1-a4).*(a4-labels(:,k));
    delta3 = a3.*(1-a3).*(W4'*delta4);
    delta2 = a2.*(1-a2).*(W3'*delta3);
    % Gradient step
    W2 = W2 - eta*delta2*x';
    W3 = W3 - eta*delta3*a2';
    W4 = W4 - eta*delta4*a3';
    b2 = b2 - eta*delta2;
    b3 = b3 - eta*delta3;
    b4 = b4 - eta*delta4;
    % Monitor progress
    newcost = costs(W2,W3,W4,b2,b3,b4) ;  % display cost to screen
    savecost(counter) = newcost;
    %fprintf("i=%d  %e\n", counter, newcost); 
end

% Show decay of cost function  
%save costvec;
%semilogy([1:1e4:niter],savecost(1:1e4:niter));

  function costval = costs(W2,W3,W4,b2,b3,b4)
        costvec = zeros(length(data),1);
            for i = 1:length(data)       
                x = data(:,i);            
                a2 = activate(x,W2,b2);
                a3 = activate(a2,W3,b3);
                a4 = activate(a3,W4,b4);
                costvec(i) = norm(labels(:,i) - a4,2);
            end
        costval = norm(costvec,2)^2;
    end % of nested function
  save(file,'W2','W3','W4','b2','b3','b4');
  cost=savecost;
end
