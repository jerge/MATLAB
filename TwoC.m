A=[0.5 0.5 ; 0.5 0.5];
b=[2;2]
A*b
c=[3;3]
A*c
d=[55;55]
A*d
e=[7.5;7.5]
A*e
f=[-4;-4]
A*f
count = 0;
for i=(-9999):10000
    t=[i;i];
    if (A*t == t)
        count = count + 1;
    else 
        count = 0;
    end
end
count