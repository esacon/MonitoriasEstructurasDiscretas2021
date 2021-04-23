clc;
close all;

%% Matrices predefinidas

n = input('Digite el tamaño de la matriz: ');

% Matriz de Pascal
fprintf("\nMatriz de Pascal de orden %i:\n", n);
matriz = pascal(n);
disp(matriz);

% Matriz mágica
fprintf("\nMatriz mágica de orden %i:\n", n);
matriz = magic(n);
disp(matriz);

% Matriz de ceros nxn
fprintf("\nMatriz de ceros de tamaño %ix%i:\n", n, n);
matriz = zeros(n);
disp(matriz);

% Matriz de ceros nxm
m = n - 2;
fprintf("\nMatriz de ceros de tamaño %ix%i:\n", n, m);
matriz = zeros(n, m);
disp(matriz);

% Matriz de unos
fprintf("\nMatriz de unos de tamaño %ix%i:\n", n, n);
matriz = ones(n);
disp(matriz);

% Matriz de unos nxm
m = n - 2;
fprintf("\nMatriz de unos de tamaño %ix%i:\n", n, m);
matriz = ones(m, n);
disp(matriz);

% Matriz de identidad
fprintf("\nMatriz de identidad de tamaño %ix%i:\n", n, n);
matriz = eye(n);
disp(matriz);

% Matriz de Vandermone
fprintf("\nMatriz de Vandermonde de tamaño %ix%i:\n", n, n);
matriz = fliplr(vander([1: n]));
disp(matriz);

% Matriz aleatoria
matriz = randi(20, 6, 6); % Esto es una matriz aleatoria de 6x6 y con números hasta 20.
disp(matriz);

%% Matrices manuales

matriz = [1 2 3; 4 5 6; 7 8 9];
disp(matriz);

%% Vectores
x = -2:1:5; % (Vfinal - Vinicial) / Incremento + 1
disp(x);

y = linspace(-2, 5, 8); % (b - a)/(n - 1) // n = (b - a + e)/e
disp(y);

%% Manejo de elemento de una matriz

matriz = randi(7, 3, 3);
disp(matriz);

% Acceder a filas fijas.
fila_1 = matriz(1, :);
disp(fila_1);
fila_2 = matriz(2, :);
disp(fila_2);

% Acceder a columnas fijas.
columna_1 = matriz(:, 1);
disp(columna_1);
columna_2 = matriz(:, 2);
disp(columna_2);

% Acceder a distinas filas y columnas
disp(matriz(1:2, 2:3));

% Acceder a diagonales de una matriz.

matriz = randi(10, 5, 5);
disp(matriz);
% Diagonal principal.
dp = 0;
diag_princ = diag(diag(matriz, dp));
disp(diag_princ);

% Diagonal secundaria.
ds = 0;
diag_sec = fliplr(diag(diag(fliplr(matriz), ds)));
disp(diag_sec);

%% Intercambiar diagonales de una matriz.

n = 6;
matriz = randi(20, n, n);
matriz2 = matriz;
fprintf("\nMatriz original: \n");
disp(matriz);
dp = 1; % Diagonal principal a escoger.
ds = n - dp + 1; % Diagonal secundaria a escoger (Deben ser de la misma longitud).

% Todos los valores de la matriz cumplen con la condición abs(M) >= 0
[i, j] = find(abs(matriz) >= 0);

% Posiciones de la diagonal principal
pos_diag_princ = find(j - i == dp);
% Posiciones de la diagonal secundaria
pos_diag_sec = find(j + i == ds);

% Guardar los valores de la diag. principal
valores_diag_princ = matriz(pos_diag_princ);
fprintf("\nDiagonal principal: \n");
disp(valores_diag_princ');
% Guardar los valores de la diag. secundaria
valores_diag_sec = matriz(pos_diag_sec);
fprintf("\nDiagonal secundaria: \n");
disp(valores_diag_sec');

% Intercambiar valores.
matriz(pos_diag_princ) = valores_diag_sec;
matriz(pos_diag_sec) = valores_diag_princ;
fprintf("\nMatriz intercambiada: \n");
disp(matriz);
subplot(1, 2, 1);
colormap gray;
imagesc(matriz);
colorbar;
subplot(1, 2, 2);
colormap gray;
imagesc(matriz2);
colorbar;

%% Funciones 

% Obtener elementos pares de una matriz.

matriz = randi(10, 5, 5);
disp(matriz);
[v, tam] = buscar_pares(matriz);
disp(sort(v));
pos = find(mod(matriz, 2) == 0);
disp(sort(matriz(pos)'));
disp(tam);

function [v, tam] = buscar_pares(matriz)
    v = [];
    k = 1;
    [n, m] = size(matriz);
    for i = 1: n
        for j = 1: m
            elem = matriz(i, j);
            if mod(elem, 2) == 0
                v(k) = elem;
                k = k + 1;
            end
        end
    end
    tam = length(v);
end








