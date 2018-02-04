% Uppgift 3a och b
%A = [1 1;1 0.5]; Första Testet
%A=[1.3 -2.7; 2.7 1.3] Roterar ungefär 90 grader moturs och förstorar
%A=[-0.88 -0.48; -0.48 0.88] Roterar ungefär 90 grader moturs och förminskar lite
%A=[1 0; -1.3 1] Roterar lite medurs och minskar y-värdena medans x-värdena är desamma
A=[0.77 -0.42; -0.42 0.23] %Roterar lite och sedan gör till en rät linje.
b = [0;0];
X = [0 4 2 6.5 1 0 3 -1 1 0; 0 2.5 4 6.5 8 7 6 4 2.5 0];
AffinAvbildning(A,b,X);
function out = AffinAvbildning (A,b,X)
subplot (1,2,1);
plot(X(1,:), X(2,:),'-o');
axis([min(X(1,:))-1 max(X(1,:))+1 min(X(2,:))-1 max(X(2,:))+1]);
grid on

subplot(1,2,2);
c=A*X + b;
plot(c(1,:), c(2,:),'-o');
axis([min(c(1,:))-1 max(c(1,:))+1 min(c(2,:))-1 max(c(2,:))+1]);
grid on
end