%% Lab 5 by Cole Bardin Section 62
%% Aplications of the Inverse Matrix
%% Question 1
clc, clear, close all

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

syms x y;
A = @(x,y) [x, y, 15-x-y; 20-2*x-y, 5, 2*x+y-10; x+y-5, 10-y, 10-x];

M3 = A(8,1);
r = ones(3,1);
S = r'*M3*r;
disp("Sum of all elements in M3=")
disp(S)
%% Question 3
clc, clear, close all

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

A11 = pascal(3);
A12 = pascal(3);
A12 = A12(:, 1:2);
A21 = zeros(2,3);
A22 = pascal(2);
A = [A11 A12; A21 A22];

B11 = inv(A11)
B22 = inv(A22)
B12 = -1*B11*A12*B22
B = inv(A)

%% Questions 9-10
clc, clear, close all

message1 = "Beware the Jabberwock, my son!\nThe jaws that bite, the claws that catch!\n";
message2 = "Beware the Jubjub bird,\nand shun The frumious Bandersnatch!\n";
message = message1 + message2; % combine the two strings
message = char(message); % convert to character array
%fprintf(message) % display the full message

A = [1, -2, 2; 2, -1, 2; 2, -2, 3];

% We better encode it, so the Jabberwock is not warned in advance!
while mod(length(message),3) ~= 0
    message = [message ' ']; % Add another space.
end
M = reshape( message, 3, []); % Reshape message into a 3xn matrix
A = [1 -2 2; 2 -1 2; 2 -2 3]; % Matrix to encrypt the message.
coded_message = A*M;

% The son will now decode his father's message using the matrix inverse.
decoder = round( inv(A) );
message_in_a_matrix = decoder*coded_message;
original_message = char( reshape( message_in_a_matrix, 1, [] ) );
fprintf(original_message)


coded_message1 = [68 258 278 -34 88 -59 95 121 111 -49 -61 257 109 77 -20 110 240 -53 249 115 121 18 71 86 8 -71 129 -65 133 5 4 -51 110 6 -55 107 144 -23 -61 119 85 30 267 138 38 119 252 115 71 121 140 187 69 105 116 99 -64; 237 402 420 171 309 148 322 342 315 183 159 386 324 289 199 321 372 172 378 329 317 167 294 315 156 142 335 151 349 221 206 182 330 152 150 334 363 193 159 324 303 173 400 355 168 351 384 329 216 198 351 326 284 320 192 326 138; 237 475 504 102 301 70 311 347 321 100 76 466 328 279 130 321 442 90 454 331 328 160 277 301 144 58 345 68 358 166 162 98 327 139 74 329 376 124 76 335 297 172 483 366 171 350 460 331 202 236 364 366 268 322 228 317 60];

message_in_a_matrix = decoder*coded_message1;
original_message = char( reshape( message_in_a_matrix, 1, [] ) );
fprintf(original_message)
