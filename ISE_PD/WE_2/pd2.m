%dane projektowe WE-2
Rg = 2;%4.7;
R5 = 20;%22;
fd = 200;%500;

%wyniki z WE-1
R1 = 12; % 18;
R2 = 3; % 6.8;
R3 = 9; % 5.6
R4 = 2.7;
Ic = 1; % 0.96
Uce = 4.032;
Ucesat=0;

C1 = [ 1 10 ];
C2 = [ 47 100 ];
B = [ 200 400 ];

R1 = R1*1000;
R2 = R2*1000;
R3 = R3*1000;
R4 = R4*1000;
Ic = Ic*10^(-3);

Rg = Rg*1000;
R5 = R5*1000;
C1 = C1*10^(-6);
C2 = C2*10^(-6);

gm = Ic/0.025;
RL = round(parallel([R3; R5]));
Rwe = round( parallel([R1 R1; R2 R2; B/gm]) );

ku0 = round(-gm*RL);
kus0 = round(Rwe./(Rg+Rwe)*ku0);

% mniejsze ku0 dla mniejszych R3 i R5
% mniej od ku0 dla wiêkszego Rg, bli¿ej ku0 dla wiêkszego Rwe

%dynamika
nasycenie = Uce - Ucesat
zatkanie = Ic*RL

C1 = C1(1);
C2 = C2(1);

RCe = parallel([R4 (mean(B)/gm+parallel([R1 R2 Rg]))/mean(B)])
C3 = 1/(2*pi*fd*RCe)