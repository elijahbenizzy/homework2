function out=bigmult(a,b)
% This function takes as input row vectors "a" and "b", and, treating each
% entry as a digit of a large number, returns the product of these two
% numbers in the same format. For example, bigmult([5 0],[1 4]) returns
% [7 0 0].

raw_digits = [0,conv(a,b)];
out = zeros(1,length(raw_digits));
carry = 0;
for i = length(raw_digits):-1:1
    raw_digits(i) = raw_digits(i) + carry;
    curr_digit = mod(raw_digits(i),10);
    out(i) = curr_digit;
    carry = (raw_digits(i) - curr_digit)/10;
end
out = out(find(out,1,'first'):end);
if length(out) == 0
    out = [ 0 ]
end

