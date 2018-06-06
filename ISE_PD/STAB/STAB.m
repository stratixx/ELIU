%dane projektowe
Uz=7.5;
Iomaxproj=10e-3;
Uwemin=10.5;
Uwemax=12;

%przyk³adowe dane
% Uz=4;
% Iomaxproj=10e-3;
% Uwemin=12;
% Uwemax=14;

R4 = (Uwemin-Uz)/(Iomaxproj+5e-3)-100;
R4=E12(R4); % mniejsza wartoœæ z szeregu E12

Iomax = (Uwemin-Uz)/(R4+100)-5e-3;

beta=25;
Idysp = (beta+1)*Iomax;
Uo = Uz-0.7;
