clear;
figure;
axis([-1;1;-1;1]);

x=-1:0.1:1;
y=sinc(x);
plot(x,y);

clear;
figure;
axis([-1;1;-1;1]);

size=100;
x = linspace(-1,1,size);
y = zeros(0,size);
for a = x
    if a == 0
        y(end+1) = 1;
    else
        y(end+1) = sin(pi*a)/(pi*a);
    end
end
plot(x,y)

