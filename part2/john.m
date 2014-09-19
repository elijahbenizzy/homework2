function out=john(v)
% This function takes as input a column vector v whose length is a power of
% two, and returns the column vector produced by multiplying the matrix
% J_length(n) by v. The class of matrices J_n are defined recursively as:
% J_1=1, J_2=[1 -1; 3 5], and J_2n=[1*J_n -1*J_n; 3*J_n 5*J_n]
% Thus john([3; 4; 5; 8]) should return [2; -26; -18; 362]

% Note: do not actually construct these matrices. "J_n" is math notation
% not Matlab notation. Your algorithm should be much *faster* than any
% algorithm that constructs these matrices.


% <your code goes here>
% out = ???;
