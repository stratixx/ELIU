Kuproj = -33;
R1 = E12(1000);
R2 = E12(33000);
R3 = E12(parallel([R1 R2]));
Ku = -[ 1.05*R2 0.95*R2 ] ./ [ 0.95*R1 1.05*R1 ]; % odwracaj�cy
%Ku = 1+[ 1.05*R2 0.95*R2 ] ./ [ 0.95*R1 1.05*R1 ]; % nieodwracaj�cy

opAmp = 'MC1458'

% MC4558
if opAmp == 'MC4558'
Ft = 5.5e6;
SR = 2.2/1e-6;
Uomax = 14;
end

% MC1458
if opAmp == 'MC1458'
Ft = 1e6;
SR = 1/1e-6;
Uomax = 14;
end

fg = min(Ft ./ (1+abs(Ku)) ); % odwracaj�cy
%fg = min(Ft ./ (abs(Ku)) ); % nieodwracaj�cy
tnw = 0.35/fg;
Amaxpp = SR/(pi*fg);
Fmax = SR/(Uomax*2*pi);

save(strcat(opAmp, '_Ku_', num2str(Kuproj), '.mat'));