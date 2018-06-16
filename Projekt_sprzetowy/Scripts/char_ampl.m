%char czêstotliwoœciowa
in = 50.0;
freq = [ 10 25 30 50 75 100 500 1000 1500 2000 3000 4000 5000 6000 7000 8000 9000 10000 13000 16000 ];
ampl = [ 15.2 32.8 36.4 42.4 45.6 47.2 49.6 50 49.2 49 47.4 46.6 44.8 42.8 40.8 39.2 36.8 35.2 30.4 26.4 ];

figure(1);
hold on; box on; grid on;
semilogx(freq,20*log10(ampl/in),'-*');
set(gca, 'XScale', 'log')
title('Charakterystyka amplitudowa wzmacniacza');
xlabel('Czêstotliwoœæ [Hz]');
ylabel('Wzmocnienie [dB]');
print('char_ampl_wzm','-dpng')

