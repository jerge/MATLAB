%A=[2 1; 1 2];
%A=[1.3 -2.7; 2.7 1.3]
%Roterar matematisk riktning och typ 3 dubblar storlek
%A=[-0.88 -0.48; -0.48 0.88]
%Speglar  och roterar matematisk riktning
A=[1 0; -1.3 1]
%Roterar motsatt matematisk riktning och förminskar y riktningen
%A=[0.77 -0.42; -0.42 0.23]
b=[0;0];
X=[1 4 6 3 2; 0 0 4 2 4]

myPlot(A,b,X)

function out = myPlot(A,b,X)
subplot(1,2,1)
vx = X(1,:); 
vx = [vx vx(1)];
vy = X(2,:);
vy = [vy vy(1)];
plot(vx,vy,'-o')
axis([(min(vx)-1) round(max(vx)+1) (min(vy)-1) round(max(vy)+1)])  
C=(A*X+b);
cx = C(1,:);
cx = [cx cx(1)];
cy = C(2,:);
cy = [cy cy(1)];
subplot(1,2,2)
plot(cx,cy,'-o')
axis([(min(cx)-1) round(max(cx)+1) (min(cy)-1) round(max(cy)+1)])  
end