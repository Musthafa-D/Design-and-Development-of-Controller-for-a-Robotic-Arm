syms x1 x2 x3 x4 u;
F = 70;
M = 100;
% SOLVING FOR STATE SPACE EQUATION
dx1=x3;
dx2=x4;
dx3=(x1*x4^2)+((1/7)*F);
dx4= (14*x1*x2*x3)/2 + (M/2);
B =[0 0;0 0;F/7 0;0 M/2];
C= [1 0 0 0;0 1 0 0];
D= [0 0;0 0];
%SOLVING THE ABOVE EQUATION
[op1,op2,op3,op4]= solve(dx3,dx4,[x1,x2,x3,x4]);
%OPERATING POINTS
fprintf("x1 value : %f \n", vpa(op1,4));
fprintf("X2 value : %f \n", vpa(op2,4));
fprintf("X3 value : %f \n", vpa(op3,4));
fprintf("X4 value : %f \n", vpa(op4,4));
jac= jacobian([dx1,dx2,dx3,dx4],[x1,x2,x3,x4]);
disp(jac);
Al= double(subs(jac,[x1,x2,x3,x4],[op1,op2,op3,op4]));
disp(Al);
linsys=idss(Al,B,C,D);
step(linsys);
