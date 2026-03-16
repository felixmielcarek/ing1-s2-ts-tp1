clear; clc;

%% Paramètres
epsilon = 1e-4; 
n = 1;
somme = 0;
historique_somme = []; 

%% Calcul de la somme
while (1/n^2) > epsilon
    somme = somme + (1/n^2);
    historique_somme(n) = somme; 
    n = n + 1;
end

%% Affichage des résultats
N = n;
fprintf('Le plus petit entier N tel que 1/N^2 <= %f est : %d\n', epsilon, N);
fprintf('La somme totale est : %f\n', somme);

%% Visualisation graphique
figure;
plot(1:length(historique_somme), historique_somme, 'b-', 'LineWidth', 1.5);
grid on;
xlabel('Valeur de n');
ylabel('Somme cumulée');
title(['Évolution de la somme pour \epsilon = ', num2str(epsilon)]);

%% EXPLICATIONS
%Logique du code :
%Le programme calcule la somme des termes 1/n² jusqu'à ce que le terme suivant soit inférieur à epsilon.
%Cette somme converge vers π²/6 d'après le résultat de Leonhard Euler.

%Algorithme :
%Boucle while qui s'arrête lorsque 1/n² <= epsilon.
%À chaque itération : ajout du terme 1/n² à la somme, sauvegarde dans l'historique, incrémentation de n.
%L'historique permet de tracer l'évolution de la convergence.

%Choix de conception :
%Utilisation d'un vecteur historique_somme pour conserver toutes les valeurs intermédiaires.
%Epsilon défini comme paramètre pour faciliter les tests avec différentes précisions.
%Graphique pour visualiser la convergence de la série.
%Sections commentées (%%) pour structurer le code de manière claire.