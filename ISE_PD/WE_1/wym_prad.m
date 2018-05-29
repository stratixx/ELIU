% podaj dane projektowe Ucc[V], R1[kOhm], R2[kOhm]
Ucc = 13;
R1 = 15;
R2 = 5.6;
% podaj tak¿e Ic[mA] i R3[kOhm] wyznaczone +w poprzednim zadaniu
Ic_cel = 1.9;
R3 = 3.3;

Bdc = 200;

Ic_cel = Ic_cel*10^(-3);
R1 = R1*10^3;
R2 = R2*10^3;
R3 = R3*10^3;

Ur2 = Ucc*R2/(R1+R2);
%Ur2=3.29;
Ue = Ur2-0.7;
R4_wzor = Ue/Ic_cel;

R4 = E12(R4_wzor);
Ic=Ue/R4;
%Ic=0.00096;
Uce=Ucc-Ic*(R4+R3);

Ib=Ic/Bdc;
deltaUb = Ib*(R1*R2)/(R1+R2);

display(Ur2);
display(Ue);
display(R4);
display(Ic);
display(Uce);
display(Ib);
display(deltaUb);