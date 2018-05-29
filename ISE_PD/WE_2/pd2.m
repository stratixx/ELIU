%dane projektowe WE-2
Rg = 1.8;
R5 = 15;
fd = 200;

%wyniki z WE-1
R1 = 15;
R2 = 5.6;
R3 = 3.3;
R4 = 1.5;
Ic = 1.9;
Uce = 3.9313;
Ucesat=0.2;

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
nasycenie = Uce - Ucesat;
zatkanie = Ic*RL;

C1 = C1(1);
C2 = C2(1);

RCe = parallel([R4 (300/gm+parallel([R1 R2 Rg]))/300]);
C3 = 1/(2*pi*fd*RCe);