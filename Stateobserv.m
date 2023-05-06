%State observer
Pobs=3*PS;
disp(Pobs);
%Pole placement for observer
Ke= place(A',C',Pobs)';
%building observed stae space
error= A-Ke*C;
fprintf("\n The obsserver K Matrix:\n");
disp(Ke);
disp(error);
