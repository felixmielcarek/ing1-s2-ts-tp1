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
        y(i) = sin(pi * x(i)) / (pi * x(i));
    end
end
plot(x, y, 'r-', 'LineWidth', 1.5);
grid on;
axis([-1, 1, -0.5, 1.2]);
xlabel('x');
ylabel('sin(\pi x)/(\pi x)');
title('Fonction Sinus cardinal - Partie 2 (avec IF)');

