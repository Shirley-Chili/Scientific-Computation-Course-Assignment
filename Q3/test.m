M=[4 5 6;8 3 9;5 5 6];
[L,U,P] = lu(M)
[output2,l]=GEPP(M)
te=[2;4;7];
backward(output2,te,l)
ra=M\te
