function [ out ] = parallel( resistance )
% obliczenie resyztancji zastępczej połączenia równoległego

out = sum(resistance.^(-1)).^(-1);
end

