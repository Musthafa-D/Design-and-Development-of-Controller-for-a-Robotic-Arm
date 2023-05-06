A=[0 0 1 0;0 0 0 1;1 0 0 -20;5 -70 -50 0]
Q=[1 0 0 0;0 1 0 0;0 0 1 0;0 0 0 1]
X = lyap(A,Q);
disp('Lyapunov Solution is X = ');
disp(X);
k = eig(X);
disp('Eigen values of Lyapunov: ');
disp(k);
if(k(1)>0 && k(2)>0)
disp('The System is Positive Definite and hence stable');
else
disp('The System is not Positive Definite and hence unstable');
end
