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
% [n, one] = size(v);
% assert(one == 1);
% assert(floor(log2(n)) == log2(n))
l = length(v)
if length(v) == 1
    out = v;
    return
else
    top_product = john(v(1:length(v)/2));
    bottom_product = john(v(length(v)/2 + 1: length(v)));
    out = [1*top_product  - 1*bottom_product; 3*top_product + 5*bottom_product];
end

