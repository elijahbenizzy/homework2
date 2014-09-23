function out=myconv235(a,b)

desired_length = length(a) + length(b) - 1;
pad_length = roundup235(desired_length);
new_a = [a zeros(1,pad_length-length(a))];
new_b = [b zeros(1,pad_length-length(b))];
out = round(ifft(fft(new_a) .* fft(new_b)));
out = out(1:desired_length);
end
% This function takes as input row vectors "a" and "b", and returns their
% convolution in the variable "out". For example, myconv([1 2],[3 4 5])
% should return [3 10 13 10]. Each of the Fourier transforms in this
% function has a size which is a product of powers of 2,3, and 5, as
% computed by roundup235