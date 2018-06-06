syms R2 C2 R1 C1

%R1 = 10000;

fg = 1/(2*pi*R2*C2) == 10000;
fd = 1/(2*pi*R1*C1) == 100;
f0 = sqrt(10000*100);
var = [ R1>0 R2>0 C1>0 C2>0];

K = -sqrt(power(parallel([R2, 1/(2*pi*f0*C2)])/(R1+1/(2*pi*f0*C1)), 2)) == -1;


sol = solve([fg,fd,K,var],[C1,C2,R2])
sol.C1
sol.C2
sol.R2

R1 = 3300;
R2 = (617799*R1)/44700;
C2 = 149/(6779900*pi*R1);
C1 = 1/(200*pi*R1);