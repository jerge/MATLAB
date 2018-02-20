A=[1 2 3; 4 5 6; 7 8 10];
b = [1 ; 2 ; 3];

aauss(A,b)

function out = aauss(A, b)
    totrows = length(A(:,1));
    totcols = length(A(1,:));
    % Undre trappan
    for col=1:totcols
        for row=(col+1):totrows
            koeff = -A(row,col)/A(col,col);
            A(row,:) = A(row,:)+(koeff)*A(col,:);
            b(row,1) = b(row,1)+(koeff)*b(col,1);
        end
    end
    % Sätt diagonalen till 1
    for col=1:totcols
        koeff = 1/A(col,col);
       A(col,:) = A(col,:)*koeff;
       b(col,:) = b(col,:)*koeff;
    end
    A
    b
    % Övre trappan INTE KLAR
    for col = totcols:-1:2
        col
        for row = totrows-1:-1:1
           koeff = -(A(row,col))
           A(row,:) = A(row,:) + koeff*(A(col,:))
           b(row,:) = b(row,:) + koeff*(b(col,:))
        end
    end
    
    b
    A
end
