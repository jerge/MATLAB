%% 3 a)
A = [1 0; 
     0 1];
b = [1;2];

X = [0 0 1 0.2; 
     0 1 1 1];
 
plotVectors(calcVectors(A, b, X));
%% 3 b)
A = [0.5 0.5; 
     0.5 0.5];
 % Roterar ungef�r 90 grader moturs och f�rstorar
 
B = [-0.88 -0.48;
     -0.48 0.88];
 % Roterar ungef�r 180 grader moturs och f�rminskar lite
 
C = [1 0;
    -1.3 1];
 % Roterar lite medurs och minskar y-v�rdena medan x-v�rdena �r desamma
 
D = [0.77 -0.42;
    -0.42 0.23];
 % Roterar lite och sedan g�r till en r�t linje
 
b = [0;0];

X = [0 1 1 0.2; 
     0 0.4 0.8 1];
%% Base polygon
subplot(3,2,1)
text(2,2,'X')
plotVectors(X);
%% A polygon
subplot(3,2,3)
text(1.7,1.7,'A')
plotVectors(calcVectors(A, b, X));
%% B polygon
subplot(3,2,4)
text(1.7,1.7,'A^2')
plotVectors(calcVectors(B, b, X));
%% C polygon
subplot(3,2,5)
text(1.7,1.7,'A^3')
plotVectors(calcVectors(C, b, X));
%% D polygon
subplot(3,2,6)
text(1.7,1.7,'A^4')
plotVectors(calcVectors(D, b, X));
%% Functions
function out = calcVectors(A, b, X)
    out = A * X + b
end
 
function out = plotVectors(X)
   hold on
   xValues = X(1,:);
   xValues = [xValues xValues(1)]
   yValues = X(2,:);
   yValues = [yValues yValues(1)]
   
   xMin = min(xValues) - 1;
   yMin = min(yValues) - 1;
   xMax = max(xValues) + 1;
   yMax = max(yValues) + 1;
   
   plot(xValues, yValues, '-o')
   axis([xMin xMax yMin yMax]);
end