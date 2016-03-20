function [cost grad] = costFunc(x)
  cost = sum((x-1.3).^4);
  grad = 4*(x-1.3).^3;
end