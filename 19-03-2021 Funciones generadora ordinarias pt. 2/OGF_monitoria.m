format rat;
clc;
syms z;

lim = 10;

% funcion = z^2*(3/(1 - 3*z) * 1/(1 - z)^2);    % Ejercicio 1
% funcion = z^2*(1/(1 - z)^3 * 1/(1 - 2*z) - 1);    % Ejercicio 2
% funcion =  (z^2 + z)/(1 - z)^3 * 1/(1 - 2*z) - suma(0)*z^0 - suma(1)*z^1;   % Ejercicio 3
% funcion = 1/(1 - 2*z) * 1/(1 -3*z) - suma(0)*z^0 - suma(1)*z^1 - suma(2)*z^2 - suma(3)*z^3;   % Ejercicio 4
% funcion = (1 - z)^2 * (1/(1 - 2*z));   % Ejercicio 5
% funcion = 1/(1 - z^2)^3;
% funcion = 1/(1-4*z^2);
% funcion = z/(1-4*z^2);
funcion = z^3/(1 - z) * 1/(1 - z^2);

tay = taylor(funcion, "Order", lim);

fprintf("La expansión por series de Taylor de la función F(z) es: \n\n");
disp(tay);

fprintf("La secuencia descrita es la siguiente: \n\n");

for n = 0: lim - 1
   % fn = 2^(n-2);  % Ejercicio 5
   fn = suma(n);
   % fn = binom(n + 2, 2);
   % fn = binom(n + 2, 2);
   % fn = (2^n + (-2)^n) / 2;
   % fn = (2^(n - 1) + (-2)^(n - 1)) / 2;
   fprintf("El resultado f_%i = %s\n", n, strtrim(rats(fn)));
end

function sum = suma(n)
    sum = 0;
    for k = 0: n - 3
        % sum = sum + 3^k * (n - k);  % Ejercicio 1
        % sum = sum + binom(k, 2) * 2^(n - k);  % Ejercicio 2
        % sum = sum + k^2*2^(n-k);  % Ejercicio 3
        % sum = sum + 2^k * 3^(n-k);    % Ejercicio 4
        % sum = sum + 1;
        sum = sum + (1 + (-1)^k)/2;
    end
end

function comb = binom(n, k)
    comb = factorial(n)/(factorial(k)*factorial(n - k));
end

function fact = factorial(n)
    fact = 1;
    for i = 1: n
        fact = fact*i;
    end
end