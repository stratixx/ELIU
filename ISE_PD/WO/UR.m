Kuproj = -2;
R1 = E12(1000);
R2 = E12(2000);
R3 = E12(parallel([R1 R2]));
Ku = -[ 1.05*R2 0.95*R2 ] ./ [ 0.95*R1 1.05*R1 ]; % odwracający
%Ku = 1+[ 1.05*R2 0.95*R2 ] ./ [ 0.95*R1 1.05*R1 ]; % nieodwracający

opAmp = 'LM258p'

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

% LM258
if opAmp == 'LM258p'
Ft = 700e3;
SR = 0.3/1e-6;
Uomax = 1.8;
end

fg = min(Ft ./ (1+abs(Ku)) ); % odwracający
%fg = min(Ft ./ (abs(Ku)) ); % nieodwracający
tnw = 0.35/fg;
Amax = SR/(2*pi*fg);
Fmax = SR/(Uomax*2*pi);
UomaxFo = SR/(2*pi*100e3);

save(strcat(opAmp, '_Ku_', num2str(Kuproj), '.mat'));