Ucc = 4.8;
Umax = 3.6;
Umin = 0.0;
Uo = (Umax-Umin)/2;
maxDeltaU = Umax-Uo;

s = tf('s');

fg = 10000;
fd = 10;

C2 = 1.5e-9;
R2 = 10e3;
C1 = 1.47e-6;
R1 = 12e3;

fd = 1/(2*pi*C1*R1);
fg = 1/(2*pi*C2*R2);
syms R11 R12;
divider = [ R11/(R11+R12) == Uo/Ucc; R11*R12/(R11+R12) == R1; R11>0; R12>0 ];
[R11,R12] = solve(divider);
R11 =595213301182199/34359738368
 
 
R12 =2976066505910995/103079215104
Rfeed = R1+R2;

X1 = 1/(s*C1);
X2 = 1/(s*C2);

tf1 = R1/(R1+X1); % highpass
tf2 = X2/(R2+X2); % lowpass

filter = tf2 * tf1;

bode(filter)
hold on; box on; grid on; 
bode(tf2)
bode(tf1)
legend('filter','LP','HP')