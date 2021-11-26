% write a matlab code for bending loss in fiber with different core radius.
lambda = 1550e-9;
alpha = 2;
n1 = 1.48;
diff = 0.01;
R = 2.5e-2;
a = [25e-6; 38e-6; 50e-6];
% propagation constant
k = 2*pi/lambda
% cladding index
n2 = n1*(1-diff)
% ratio Meff/M͚
const1 = power(3/(2*n2*k*R),2/3);
const2 = (alpha + 2)/(2*alpha*diff);
Meffinf = (1 - const2*(2*a/R + const1))

bar(a,Meffinf)
title('Bending Loss - percentage of modes calculation for different core radius');
xlabel('core radius in um');
ylabel('percentage of modes remain in the fiber in %');