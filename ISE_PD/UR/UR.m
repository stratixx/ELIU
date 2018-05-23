Ucc = 8;
Ieeproj = 0.8e-3;
Kuproj = 27;

% wyznacz Riee zapewniaj¹ce Ieeproj
%Ieeproj --> Riee uwzglednienie 390Ohm
%wartoœæ Riee z E12
%wartoœæ Iee dla Riee z szeregu

Ubee = -11;
Udd = -15;
Uee = Ubee-0.7;

Riee_ideal = (Uee-Udd)/Ieeproj - 390;
Riee = E12(Riee_ideal)
Ieei0 = (Uee-Udd)/(390+Riee);
devIee = (Uee-Udd)./(390+[Riee*0.95, Riee, Riee*1.05]);

% dobierz Rc13 i Rc24 zapewniaj¹ce Kuproj dla Ieei0
gm = 0.5*Ieei0/0.025;
Rc13_ideal = Kuproj*2/gm;
Rc13 = E12(Rc13_ideal)
Rc24 = Rc13;

% zakres Ku od rozrzutu elementów
gm = 0.5*devIee/0.025;
Ku = [0.95*Rc13; Rc13; 1.05*Rc13]*gm/2
devKu = [ min(min(Ku)) Ku(2,2) max(max(Ku)) ];

% napiêcia na kolektorach
Uc01A = Ucc - Rc13*Ieei0
Uc01B = Uc01A;
devUc01A = Ucc - [0.95*Rc13; Rc13; 1.05*Rc13] * devIee;
devUc01A = [ min(min(devUc01A)) devUc01A(2,2) max(max(devUc01A)) ]

%zmiana napiêcia na kolektorach
deltaUc = Ieei0*[0.95*Rc13 Rc13 1.05*Rc13];

% opornik w emiterach
Ree_proj = (0 - 0.7 - Udd)/Ieeproj-1500;
Ree = E12(Ree_proj)
IeeR0 = (0 - 0.7 - Udd)/(Ree+1500)
