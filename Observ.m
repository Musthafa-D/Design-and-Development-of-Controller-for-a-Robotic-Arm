%Observability
F= 70;
M= 100;
%Declaration of A,B and C Matrix
A = [0 0 1 0; 0 0 0 1;1 0 0 -20;4.998 -70 -49.98 0];
B = [0 0;0 0 ;F/7 0 ; 0 M/2];
C = [1 0 0 0;0 1 0 0];
obsvm= obsv(A,C);
disp("the observability matrix is :");
disp(obsvm);
%for rank
rank_obse=rank(obsvm);
fprintf("The rank is %d", rank_obse);

