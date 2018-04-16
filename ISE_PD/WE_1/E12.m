function [ Rszereg ] = E12( R )
% funkcja zwracajaca wartosc z szeregu E12 najblizsza R

e12 = [10 12 15 18 22 27 33 39 47 56 68 82] *0.01;
Rszereg = [];

for k=0:1:10
e12 = e12*10;
    for n=1:1:11
        if (R>=e12(n))&&(R<=e12(n+1))
            if R < (e12(n)+e12(n+1))/2
                Rszereg = e12(n);
            else
                Rszereg = e12(n+1);
            end
            break;
        end
    end
end
end

