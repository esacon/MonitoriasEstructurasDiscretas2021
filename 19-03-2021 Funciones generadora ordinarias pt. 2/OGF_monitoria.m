format rat;
clc;
syms z;

lim = 10;
% \frac{243\left(81z^4-81z^3+36z^2\right)}{\left(1-3z\right)^3}
funcion = 243*(81*z^4 - 81*z^3 + 36*z^2)/(1-3*z)^3;

tay = taylor(funcion, "Order", lim);

disp(tay);

for n = 2: lim - 1
   % fn = suma(n); 
   fn = n^2 * 3^(n+5);
   fprintf("\nEl resultado f_%i = %i", n, fn);
end

function sum = suma(n)
    sum = 0;
    for k = 0: n
       sum = sum + 2^k * (n-k);
    end
end