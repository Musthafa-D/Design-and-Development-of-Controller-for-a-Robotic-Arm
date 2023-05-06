%POLE PPLACEMENT FOR CONTROLLER
%EIGEN VALUES
PR1 = -100;
PR2 = -50+2i;
PR3 = -50-2i;
PR4 = -180;
PS1 = -1.23;
PS2 = -0.28+0.25i;
PS3 = -0.28-0.25i;
PS4 = -0.4;
PS=[PS1 PS2 PS3 PS4];
PR=[PR1 PR2 PR3 PR4];
K=place(A,B,PR);
fprintf("\n The K matrix:\n");
disp(K)
