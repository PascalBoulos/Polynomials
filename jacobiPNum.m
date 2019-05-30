function [poly]=jacobiPNum(n,alpha,beta)
% generate the coefficients of the Jacobi polynomial of J_n^{(alpha,beta)}
% n, alpha, beta are positive integers

poly=0;
for s=0:n
    poly=poly+1/factorial(s)/factorial(n+alpha-s)/factorial(beta+s)/factorial(n-s)*conv(polyPower([1/2 -1/2],n-s),polyPower([1/2 1/2],s));

end

poly=poly*factorial(n+alpha)*factorial(n+beta);

end
