function out=myconv235(a,b)
pad_length = roundup235(length(a) + length(b) - 1);
new_a = [zeros(1,pad_length-length(a)) a];
new_b = [zeros(1,pad_length-length(b)) b];
out = (ifft(fft(new_a) .* fft(new_b)));
out = int32(ifft(fft(new_a) .* fft(new_b)));
end
% This function takes as input row vectors "a" and "b", and returns their
% convolution in the variable "out". For example, myconv([1 2],[3 4 5])
% should return [3 10 13 10]. Each of the Fourier transforms in this
% function has a size which is a product of powers of 2,3, and 5, as
% computed by roundup235