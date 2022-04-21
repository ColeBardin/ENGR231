function [number] = number_of_solutions(A,b)
    % Input A is an mxn matrix. b is a mx1 column vector. 
    % The unknown x is an nx1 column vector.  
    % Finds the number of solutions of the linear system Ax = b
    % Number of solutions can only be 
    %   0. zero, (inconsistent) 
    %   1. one (unique) or
    % inf. infinite (there are free variables). 
    %      (Infinity in MATLAB is written inf or Inf.)

    number_of_variables = numel( A(1,:)); % x1, x2, ..., xn
    AM = [A b]; % augmented matrix
    if rank(AM) > rank(A) % system is inconsistent. There is a pivot in the final column.
        number = 0;
    elseif rank(A) < number_of_variables
        number = inf;   % There are free variables
    else  
        number = 1; % unique!
    end  
end

