k=-1;
x=linspace(0,2,100);
in =2.55*0.5*sin(2*pi*x);
out = in * k;

max = 2.44/2;
min = -3.3/2;

out(out>max)=max;
out(out<min)=min;

figure(1);
hold on; box on; grid on;
plot(x/1000,in);
plot(x/1000,out);
%xlim([0 12]);
xlabel('Czas [s]');
ylabel('Warto�� sygna��w [V]');
legend('U_w_e','U_w_y','location','southeast');
%title('Ograniczenie dynamiki wzmacniacza, obcinanie g�rnej po��wki');
title('Ograniczenie dynamiki wzmacniacza, obcinanie g�rnej po��wki');
print('ogr_dyn_gora','-dpng')