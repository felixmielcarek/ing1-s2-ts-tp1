clear;

for a=5:2:11
    eval(sprintf('M%d=magic(%d)',a,a));
end

M5
M7
M9
M11