k=-1;
x=linspace(0,4*pi,100);
in =3.4*0.5*sin(x);
out = in * k;

max = 2.44/2;
min = -3.3/2;

out(out>max)=max;
out(out<min)=min;

figure(1);
hold on; box on; grid on;
plot(x,in);
plot(x,out);
xlim([0 12]);
xlabel('Czas [s]');
ylabel('Warto�� sygna��w [V]');
legend('U_w_e','U_w_y','location','southeast');
%title('Ograniczenie dynamiki wzmacniacza, obcinanie g�rnej po��wki');
title('Ograniczenie dynamiki wzmacniacza, obcinanie obydwu po��wek');
print('ogr_dyn_obydwa','-dpng')