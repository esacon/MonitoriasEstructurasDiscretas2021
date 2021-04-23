clc;

%% Gr�fica de una funci�n como entrada
funcion = input('Digite la funci�n: '); 
% Ejemplos:
% @(t) sin(t) + 1
% @(t) t.^2 + 3.*t - 2

% Vector tiempo.
t = -360:10:360;

% Gr�fica de una funci�n.
plot(t, funcion(t), "--r", "linewidth", 2);
xlabel("Tiempo [s]")
ylabel("$f(t)$", "interpreter", "latex", "fontsize", 16)
title("Gr�fica de una funci�n")
legend(func2str(funcion))
grid on;
saveas(gcf, "imagen", "png")


%% Distribuci�n de Rayleigh.

x = 0:1e-03:10;
f = @(x, s) x./s^2.*exp(-x.^2./(2.*s.^2));
text = "";
figure;
for i=1:5
    text = "\sigma= " + i;
    plot(x, f(x, i), "DisplayName", text, "linewidth", 2)    
    hold on
end
grid on
legend
title("Funci�n de distribuci�n de Rayleigh")

