%% Lab 5 by Cole Bardin Section 62
%% Aplications of the Inverse Matrix
%% Question 1
clc, clear, close all
disp("Question 1:")

syms x y;
A = @(x,y) [x, y, 15-x-y; 20-2*x-y, 5, 2*x+y-10; x+y-5, 10-y, 10-x];

% Iterate y1 through each odd number 1-9 except 5
for y1 = [1,3,7,9]
    % Iterate x1 through each even number 2-4
    for x1 = 2:2:8
        % Create magic matrix with x1 y1
        M = A(x1,y1);
        % Assume it is a proper magic
        is_magic = 1;
        % Initialize empty cache for each 9 slots
        cache = zeros(1,9);
        % Iterate through each element
        for i = 1:1:9
            % Set is_magic false if any element<1 or >9
            if M(i) < 1 || M(i) > 9
                is_magic = 0;
            else
                % If number is already found in cache, set false
                if cache(M(i)) == 1
                    is_magic = 0;
                % If not, mark number as found in cache
                else
                    cache(M(i)) = 1;
                end
            end
        end
        % If this matrix did not fail any tests display
        if is_magic == 1
            disp("x="+x1+" y="+y1+" makes a magic matrix:")
            disp(M)
        end
    end
end
%% Question 2
clc, clear, close all
disp("Question 2:")
syms x y;
A = @(x,y) [x, y, 15-x-y; 20-2*x-y, 5, 2*x+y-10; x+y-5, 10-y, 10-x];

M3 = A(8,1);
r = ones(3,1);
S = r'*M3*r;
disp("Sum of all elements in M3=")
disp(S)
%% Question 3
clc, clear, close all
disp("Question 3:")

A = sym(pascal(4));
disp("Pascal(4)")
disp("Det=")
disp(det(A))
disp("Adj=")
disp(adjoint(A))
disp("Inv=")
disp(inv(A))

A = sym(mod(pascal(4),2));
disp("Pascal(4) mod2")
disp("Det=")
disp(det(A))
disp("Adj=")
disp(adjoint(A))
disp("Inv=")
disp(inv(A))

A = sym(vander(1:4));
disp("vander(1:4)")
disp("Det=")
disp(det(A))
disp("Adj=")
disp(adjoint(A))
disp("Inv=")
disp(inv(A))

A = [1, 2, 3; 4, 5, 6; 7, 8, 9];
disp("1-9")
disp("Det=")
disp(det(A))
disp("Adj=")
disp(adjoint(A))
disp("Inv=")
disp(inv(A))
%% Question 4
clc, clear, close all
A = eye(1000);
whos A
S = sparse(A);
whos S

S = sparse(4,3);
A = full(S);

I10 = sparse(eye(10));

i = [1:10, 1:10];
j = [1:10, 10:-1:1];
k = ones(size(i));
A = sparse(i, j, k);

A = sparse([5, 6], [5, 6], [3, -3],10,10); % two nonzero elements in a 10x10 sparse matrix.

clear
p = pascal(32); % Pascal matrix of dimension 16
s = rem(p,2); % remainder of p mod 2 applied to each component
spy(s) % displays 16x16 Sierpinski gasket
%% Question 5
clc, clear, close all

A = mod(pascal(4),2); 
A = sym(A);
I = eye(4);
AI = [A, I];
AIR = rref(AI);
disp(AIR(:,5:end))
%% Question 6
clc, clear, close all

n = 5;
X = -ones(n-1,1);
Y = 2*ones(n,1);
Z = X;

A  = gallery('tridiag',X,Y,Z);
A = sym(full(A));

disp("Det of tridiag A=")
disp(det(A))
disp("Inverse of tridiag A=")
disp(inv(A))
disp("Adjoint of tridiag A=")
disp(adjoint(A))

%% Question 7
clc, clear, close all

n = 5;
X = -ones(n-1,1);
Y = 2*ones(n,1);
Z = X;

A  = gallery('tridiag',X,Y,Z);
b = [0; 0; 0; 0; 6];

AI = [A, eye(5)];
AIR = rref(AI);
Ainv = AIR(:,n+1:end);
disp("Inverse of tridiag=")
disp(Ainv)

x = Ainv*b;
x = x(:,end);
disp("Solution set=")
disp(x)

disp("Ax-b =")
disp(A*x - b)
%% Question 8
clc, clear, close all

