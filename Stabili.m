%FOR STABILITY
F= 70;
M=100;
%Declaring A,B and C matrix
A= [0 0 1 0; 0 0 0 1;1 0 0 -20;4.998 -70 -49.98 0];
B=[0 0;0 0; F/7 0; 0 M/2];
C= [1 0 0 0; 0 1 0 0];
%FOR EIGEN VALUES
Eig = eig(A);
fprintf("The eigen values are:");
disp(Eig);
%region of stability
a=1;
for i= 1:length(Eig)
    if (Eig(i)<0)
        a=a+1;
    else
        break;
    end
end
%stability
if(a>=length(Eig))
    fprintf("The sysytem is stable");
else
    fprintf("The system is unstable");
end
     
