function [ out ] = parallel( resistance )
% obliczenie resyztancji zastêpczej po³¹czenia równoleg³ego

out = sum(resistance.^(-1)).^(-1);
end

