clear; clc;

%% Génération des matrices magiques
for a = 5:2:11
    eval(sprintf('M%d = magic(%d);', a, a));
    fprintf('Matrice magique M%d créée\n', a);
end

%% Affichage des matrices
fprintf('\n--- Affichage des matrices magiques ---\n\n');

fprintf('Matrice M5 (5x5) :\n');
disp(M5);

fprintf('Matrice M7 (7x7) :\n');
disp(M7);

fprintf('Matrice M9 (9x9) :\n');
disp(M9);

fprintf('Matrice M11 (11x11) :\n');
disp(M11);

%% EXPLICATIONS
%Logique du code :
%Le programme génère quatre matrices magiques de tailles impaires (5x5, 7x7, 9x9, 11x11).
%Une matrice magique est un carré où la somme de chaque ligne, colonne et diagonale est identique.

%Algorithme :
%Boucle for avec pas de 2 pour générer uniquement les dimensions impaires de 5 à 11.
%Utilisation de eval() et sprintf() pour créer dynamiquement des variables M5, M7, M9, M11.
%Chaque matrice est générée via la fonction magic() de MATLAB.

%Choix de conception :
%Utilisation de eval() pour créer des variables avec des noms dynamiques.
%Boucle avec pas de 2 (5:2:11) pour ne générer que les tailles impaires demandées.
%Affichage formaté avec fprintf() et disp() pour une sortie claire et structurée.