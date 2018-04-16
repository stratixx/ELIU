% Podaj dane projektowe Ucc i R1
Ucc = 15;
R1 = 2;

Bdc = 200;

R1 = R1*10^6;

Ur1 = Ucc-0.7;
Ib = Ur1/R1;
Ic = Bdc*Ib;
R3 = Ucc/2/Ic;

R3_szereg = E12(R3);

Uce = Ucc-Ic*R3_szereg;

display(Ur1);
display(Ib);
display(Ic);
display(R3);
display(R3_szereg);
display(Uce);
