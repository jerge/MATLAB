function make_polygon(n)
subplot(1,2,1)
ginput(n)
[x,y] = ginput(n)
x = [x;x(1)];
y = [y;y(1)];
plot(x,y,'-o')
axis([0 1 0 1])
text(0.1,0.3,'ABC')
subplot(1,2,2)
fill(x,y,'g')
axis([0 1 0 1])
gtext('DEF')