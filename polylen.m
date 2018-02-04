function a=polylen(x,y)
L = 0;
for i=1:(length(x)-1)
    L=L+sqrt((x(i+1)-x(i))^2+(y(i+1)-y(i))^2);
end
disp(L)