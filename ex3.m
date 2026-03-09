clear; clc;

epsilon = 1e-4; 
n = 1;
somme = 0;
historique_somme = []; 

while (1/n^2) > epsilon
    somme = somme + (1/n^2);
    historique_somme(n) = somme; 
    n = n + 1;
end

N = n;
fprintf('Le plus petit entier N tel que 1/N^2 <= %f est : %d\n', epsilon, N);
fprintf('La somme totale est : %f\n', somme);

figure;
plot(1:length(historique_somme), historique_somme);
grid on;
xlabel('Valeur de n');
ylabel('Somme cumulée');
title(['Évolution de la somme pour \epsilon = ', num2str(epsilon)]);