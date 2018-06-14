freq = 1000:1000:6000;
ampl = [ -29.2 -98.0 -86 -96 -77.4 -75.2 ];%-81.6 -83 -90.8 -82.8 ];
scaledAmpl = exp(ampl/10)*1000;

THD = sqrt(sum(power(scaledAmpl(2:end),2)))/scaledAmpl(1)*100

figure(1);
hold on; box on; grid on;
stem(freq,ampl);
title(strcat('Wykres harmonicznych, sygna³ wyjœciowy 1kHz i 100mVpp, THD = ',num2str(THD),'%'));
xlabel('Czêstotliwoœæ [Hz]');
ylabel('Amplituda [dBmV]');
xlim([0 max(freq)+min(freq)])
print('THD_plot','-dpng');
close 1