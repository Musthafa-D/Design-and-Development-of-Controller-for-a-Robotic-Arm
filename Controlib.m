%Controllability
F = 70;
M = 100;
% A,B,C matrix
A=[0 0 1 0;0 0 0 1;1 0 0 -20;4.998 -70 -49.98 0];
B=[0 0;0 0;F/7 0;0 M/2];
C=[1 0 0 0 ;0 1 0 0];
%To find the Controllability matrix 
cntrlb = ctrb(A,B);
disp("The controllability matrix is:");
disp(cntrlb);
%To find the rank
rank_cntrl= rank(cntrlb);
fprintf("The rank of matrix is \n");
disp(rank_cntrl)