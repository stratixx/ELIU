function [ out ] = parallel( resistance )
% obliczenie resyztancji zast�pczej po��czenia r�wnoleg�ego

out = sum(resistance.^(-1)).^(-1);
end

