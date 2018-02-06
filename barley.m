A1=[0 0; 0 0.16];
A2=[0.85 0.04; -0.04 0.85];
A3=[0.2 -0.26; 0.23 0.22];
A4=[-0.15 0.28; 0.26 0.24];

b1=[0;0];
b2=[0;1.6];
b3=[0;1.6];
b4=[0;0.44];

v =[5;5];
clf
hold on

axis([-5 5 0 10])

for i = 1:5000
    r = rand(1);
    if (r < 0.01)
        % Skapar stammen
        v = do(A1,v,b1);
    elseif (r < 0.86)
        % Gör det mesta, exempelvis flyttar uppåt och lutar den
        v = do(A2,v,b2);
    elseif (r < 0.93)
        % Skapar vänstra sidan av bladet
        v = do(A3,v,b3);
    else
        % Skapar högra sidan av ladet
        v = do(A4,v,b4);
    end
end
hold off

P = ginput(4)
P=P.'
F1 = A1*(P)
F1 = [F1 F1(:,1)]
F2 = A2*(P)
F2 = [F2 F2(:,1)]
F3 = A3*(P)
F3 = [F3 F3(:,1)]
F4 = A4*(P)
F4 = [F4 F4(:,1)]

hold on
%subplot(2,2,1)
plot(F1(1,:),F1(2,:),'-o')
%subplot(2,2,2)
plot(F2(1,:),F2(2,:),'-o')
%subplot(2,2,3)
plot(F3(1,:),F3(2,:),'-o')
%subplot(2,2,4)
plot(F4(1,:),F4(2,:),'-o')
hold off
function out = do(A,v,b)
    vi = (A*v+b);
    x = vi(1,:);
    y = vi(2,:);
    plot(x,y,'c.')
    out = vi;
end