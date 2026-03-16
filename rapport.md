\documentclass[12pt,a4paper]{article}

% Packages
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage[french]{babel}
\usepackage{geometry}
\usepackage{graphicx}
\usepackage{float}
\usepackage{listings}
\usepackage{xcolor}
\usepackage{fancyhdr}
\usepackage{hyperref}
\usepackage{amsmath}
\usepackage{textgreek}
\usepackage{amssymb}
\usepackage{titlesec}

% Configuration de la page
\geometry{margin=2.5cm}

% Configuration des liens
\hypersetup{
colorlinks=true,
linkcolor=blue,
filecolor=magenta,  
 urlcolor=cyan,
citecolor=blue
}

% Configuration de listings pour MATLAB
\lstset{
language=Matlab,
basicstyle=\ttfamily\small,
keywordstyle=\color{blue},
commentstyle=\color{green!50!black},
stringstyle=\color{red},
numbers=left,
numberstyle=\tiny\color{gray},
stepnumber=1,
numbersep=10pt,
backgroundcolor=\color{gray!10},
frame=single,
tabsize=4,
captionpos=b,
breaklines=true,
breakatwhitespace=false,
showstringspaces=false,
xleftmargin=2em,
framexleftmargin=1.5em,
literate=
{é}{{\'e}}1
{è}{{\`e}}1
{ê}{{\^e}}1
{à}{{\`a}}1
{ù}{{\`u}}1
{û}{{\^u}}1
{ô}{{\^o}}1
{ç}{{\c{c}}}1
}

% En-tête et pied de page
\pagestyle{fancy}
\fancyhf{}
\rhead{TP1}
\lhead{EPIGEP-FI-3-S2-USI-E01}
\rfoot{Page \thepage}

\begin{document}

% Page de garde
\begin{titlepage}
\centering
\vspace{2cm}

    {\huge\bfseries ESIEE Paris\par}
    \vspace{1cm}
    {\Large E3 - FI\par}
    \vspace{2cm}

    {\Huge\bfseries Rapport de Travaux Pratiques 1\par}
    \vspace{0.5cm}
    {\Large Traitement du Signal\par}
    \vspace{3cm}

    \begin{flushleft}
    {\Large
    \textbf{Auteur :} Félix MIELCAREK\par
    \vspace{0.5cm}
    \textbf{Destinataire :} Hassane MIMOUN - Philippe TOURON\par
    \vspace{0.5cm}
    \textbf{Date :} 9 mars 2026\par
    }
    \end{flushleft}

    \vfill

\end{titlepage}

% Table des matières
\tableofcontents
\newpage

% Introduction
\section{Introduction}

\subsection{Contexte et environnement du TP}

Ce travail pratique constitue une première prise en main de MATLAB, à la fois en tant que logiciel de calcul numérique et en tant que langage de programmation. MATLAB est un environnement largement utilisé dans le domaine du traitement du signal et de l'analyse scientifique.

\subsection{Raison d'être du rapport}

Ce rapport vise à rendre compte de la découverte et de l'apprentissage de MATLAB à travers la réalisation d'exercices pratiques. Il présente les différentes étapes de travail ainsi que les résultats obtenus.

% Méthodologie
\section{Méthodologie de travail}

La méthodologie adoptée pour ce TP s'articule autour de plusieurs étapes. Dans un premier temps, une lecture attentive du manuel MATLAB fourni a permis de se familiariser avec les concepts fondamentaux et la syntaxe du langage. Ensuite, les exercices ont été réalisés et testés les uns après les autres, chacun permettant d'approfondir des aspects spécifiques de MATLAB. En cas de besoin, la documentation officielle en ligne a été consultée pour clarifier certains détails de fonctionnement ou découvrir des fonctionnalités supplémentaires.

% Travail réalisé
\section{Travail réalisé}

\subsection{Exercice 1}

\subsubsection{Code}

\begin{lstlisting}[caption=Code de l'exercice 1]
clear; clc;

figure;
x = -1:0.1:1;
y = sinc(x);
plot(x, y, 'b-', 'LineWidth', 1.5);
grid on;
axis([-1, 1, -0.5, 1.2]);
xlabel('x');
ylabel('sinc(x)');
title('Fonction Sinus cardinal - Partie 1');

figure;
x = linspace(-1, 1, 100);
y = zeros(1, length(x));
for i = 1:length(x)
if x(i) == 0
y(i) = 1;
else
y(i) = sin(pi _ x(i)) / (pi _ x(i));
end
end
plot(x, y, 'r-', 'LineWidth', 1.5);
grid on;
axis([-1, 1, -0.5, 1.2]);
xlabel('x');
ylabel('sin(pi x)/(pi x)');
title('Fonction Sinus cardinal - Partie 2 (avec IF)');
\end{lstlisting}

\subsubsection{Explications}

\textbf{Logique du code :}

L'exercice compare deux méthodes pour tracer la fonction sinus cardinal. La partie 1 utilise directement la fonction \texttt{sinc()} intégrée à MATLAB (Signal Processing Toolbox), qui calcule automatiquement $\frac{\sin(\pi x)}{\pi x}$ avec gestion du cas $x=0$. La partie 2 implémente manuellement le m\^{e}me calcul en utilisant une boucle \texttt{for} et l'instruction \texttt{IF} pour éviter la division par zéro.

\textbf{Algorithme :}

\textit{Partie 1 :} Génération d'un vecteur x sur l'intervalle $[-1, 1]$, appel direct de la fonction \texttt{sinc()}, tracé du graphique avec grille.

\textit{Partie 2 :} Génération d'un vecteur x avec \texttt{linspace} (100 points), initialisation du vecteur y, boucle \texttt{for} itérant sur chaque élément, test \texttt{IF} pour détecter $x=0$ (affectation de 1) ou calcul de $\sin(\pi x)/(\pi x)$ sinon.

\textbf{Choix de conception :}
\begin{itemize}
\item Deux figures distinctes pour comparer visuellement les résultats des deux méthodes.
\item Partie 1 : Utilisation de la fonction MATLAB native comme demandé dans l'énoncé.
\item Partie 2 : Instruction \texttt{IF} explicite dans la boucle pour la gestion du cas limite.
\item Axes identiques $[-1, 1] \times [-0.5, 1.2]$ pour faciliter la comparaison.
\item Grilles activées sur les deux graphiques pour une meilleure lecture.
\item Couleurs différentes (bleu/rouge) pour distinguer les deux approches.
\end{itemize}

\subsection{Exercice 2}

\subsubsection{Code}

\begin{lstlisting}[caption=Code de l'exercice 2]
% Code de l'exercice 2
clear; clc;

%% Generation des matrices magiques
for a = 5:2:11
eval(sprintf('M%d = magic(%d);', a, a));
fprintf('Matrice magique M%d creee\n', a);
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
\end{lstlisting}

\subsubsection{Explications}

\textbf{Logique du code :}

Le programme génère quatre matrices magiques de tailles impaires (5x5, 7x7, 9x9, 11x11). Une matrice magique est un carré où la somme de chaque ligne, colonne et diagonale est identique.

\textbf{Algorithme :}

Boucle \texttt{for} avec pas de 2 pour générer uniquement les dimensions impaires de 5 à 11. Utilisation de \texttt{eval()} et \texttt{sprintf()} pour créer dynamiquement des variables M5, M7, M9, M11. Chaque matrice est générée via la fonction \texttt{magic()} de MATLAB.

\textbf{Choix de conception :}
\begin{itemize}
\item Utilisation de \texttt{eval()} pour créer des variables avec des noms dynamiques.
\item Boucle avec pas de 2 (5:2:11) pour ne générer que les tailles impaires demandées.
\item Affichage formaté avec \texttt{fprintf()} et \texttt{disp()} pour une sortie claire et structurée.
\end{itemize}

\subsection{Exercice 3}

\subsubsection{Code}

\begin{lstlisting}[caption=Code de l'exercice 3]
% Code de l'exercice 3
clear; clc;

%% Parametres
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

%% Affichage des resultats
N = n;
fprintf('Le plus petit entier N tel que 1/N^2 <= %f est : %d\n', epsilon, N);
fprintf('La somme totale est : %f\n', somme);

%% Visualisation graphique
figure;
plot(1:length(historique_somme), historique_somme, 'b-', 'LineWidth', 1.5);
grid on;
xlabel('Valeur de n');
ylabel('Somme cumulee');
title(['Evolution de la somme pour epsilon = ', num2str(epsilon)]);
\end{lstlisting}

\subsubsection{Explications}

\textbf{Logique du code :}

Le programme calcule la somme des termes $1/n^2$ jusqu'à ce que le terme suivant soit inférieur à $\varepsilon$. Cette somme converge vers $\pi^2/6$ d'après le résultat de Leonhard Euler.

\textbf{Algorithme :}

Boucle \texttt{while} qui s'arrête lorsque $1/n^2 \leq \varepsilon$. À chaque itération : ajout du terme $1/n^2$ à la somme, sauvegarde dans l'historique, incrémentation de n. L'historique permet de tracer l'évolution de la convergence.

\textbf{Choix de conception :}
\begin{itemize}
\item Utilisation d'un vecteur \textit{$historique\_somme$} pour conserver toutes les valeurs intermédiaires.
\item $\varepsilon$ défini comme paramètre pour faciliter les tests avec différentes précisions.
\item Graphique pour visualiser la convergence de la série.
\item Sections commentées (\%\%) pour structurer le code de manière claire.
\end{itemize}

% Résultats
\section{Résultats obtenus}

\subsection{Résultats de l'exercice 1}

\subsubsection{Partie 1 : Fonction sinc() de MATLAB}

\begin{figure}[H]
\centering
\includegraphics[width=0.75\textwidth]{images/Figure_1.png}
\caption{Tracé de la fonction sinus cardinal avec la fonction intégrée \texttt{sinc()}}
\label{fig:ex1_p1}
\end{figure}

Le graphique montre la fonction sinus cardinal calculée avec la fonction \texttt{sinc()} de MATLAB. On observe la forme caractéristique de cette fonction avec un maximum de 1 en $x=0$ et des oscillations amorties qui décroissent de part et d'autre.

\subsubsection{Partie 2 : Calcul manuel avec instruction IF}

\begin{figure}[H]
\centering
\includegraphics[width=0.75\textwidth]{images/Figure_2.png}
\caption{Tracé de la fonction sinus cardinal avec calcul manuel et instruction \texttt{IF}}
\label{fig:ex1_p2}
\end{figure}

Ce graphique présente le m\^{e}me résultat obtenu par calcul manuel. La superposition mentale des deux courbes confirme que l'implémentation avec la boucle \texttt{for} et l'instruction \texttt{IF} reproduit fid\`{e}lement le comportement de la fonction \texttt{sinc()}. La gestion du cas $x=0$ par l'instruction \texttt{IF} permet d'éviter la division par zéro.

\subsection{Résultats de l'exercice 2}

L'exécution du programme a généré les quatre matrices magiques demandées. Voici un extrait de la sortie du terminal :

\begin{verbatim}
Matrice magique M5 créée
Matrice magique M7 créée
Matrice magique M9 créée
Matrice magique M11 créée

--- Affichage des matrices magiques ---

Matrice M5 (5x5) :
17 24 1 8 15
23 5 7 14 16
4 6 13 20 22
10 12 19 21 3
11 18 25 2 9
\end{verbatim}

Les quatre matrices magiques (M5, M7, M9, M11) ont été créées avec succès. La matrice M5 présentée ci-dessus illustre la propriété fondamentale des carrés magiques : la somme de chaque ligne, colonne et diagonale principale est égale à 65. Cette valeur, appelée constante magique, est calculée par la formule $\frac{n(n^2+1)}{2}$ où $n$ est l'ordre de la matrice.

L'utilisation combinée de la boucle \texttt{for} avec pas de 2, de \texttt{eval()} pour la génération dynamique de variables, et de \texttt{magic()} démontre la puissance de MATLAB pour la manipulation matricielle et la programmation dynamique.

\subsection{Résultats de l'exercice 3}

\begin{figure}[H]
\centering
\includegraphics[width=0.75\textwidth]{images/Figure_3.png}
\caption{Évolution de la somme cumulée $\sum*{k=1}^{n} \frac{1}{k^2}$ en fonction de n}
\label{fig:ex3}
\end{figure}

Le graphique illustre la convergence de la série vers une valeur limite (environ 1.64, correspondant \`{a} $\pi^2/6 \approx 1.6449$). La boucle \texttt{while} s'arr\^{e}te lorsque le terme $1/n^2$ devient inférieur \`{a} $\varepsilon = 10^{-4}$. On observe une croissance rapide au début puis un ralentissement progressif, caractéristique d'une convergence asymptotique.

% Acquis
\section{Acquis durant le TP}

\subsection{Connaissances techniques}

Ce travail pratique a permis une première prise en main approfondie de MATLAB. Les principales compétences acquises incluent :

\begin{itemize}
\item La syntaxe de base du langage MATLAB (déclaration de variables, boucles, conditions)
\item L'utilisation des structures de contrôle (\texttt{if}, \texttt{for}, \texttt{while})
\item La manipulation de vecteurs et matrices
\item La création et personnalisation de graphiques (\texttt{plot}, \texttt{grid}, \texttt{xlabel}, etc.)
\item L'utilisation de fonctions intégrées (\texttt{sinc}, \texttt{magic}, \texttt{linspace})
\item La génération dynamique de variables avec \texttt{eval()} et \texttt{sprintf()}
\end{itemize}

\subsection{Difficultés rencontrées et solutions}

La principale difficulté rencontrée concerne les spécificités du langage MATLAB, notamment l'affectation et la manipulation de fonctions dans des variables. Contrairement à d'autres langages, MATLAB possède des particularités dans la gestion des handles de fonctions et l'évaluation dynamique de code. Ces aspects ont nécessité une consultation régulière de la documentation pour bien comprendre le fonctionnement des commandes comme \texttt{eval()}. La pratique progressive à travers les trois exercices a permis de surmonter ces difficultés.

\subsection{Apprentissages et perspectives}

Ce TP a révélé que MATLAB est un outil particulièrement adapté au traitement du signal. Sa syntaxe orientée matrices, ses fonctions mathématiques intégrées et ses capacités de visualisation en font un environnement idéal pour ce domaine. Les notions découvertes durant ce TP constituent une base solide pour aborder des problématiques plus avancées en traitement du signal, analyse de données et calcul scientifique. L'apprentissage de MATLAB sera un atout précieux pour les projets futurs dans le domaine de l'ingénierie du signal.

\end{document}
