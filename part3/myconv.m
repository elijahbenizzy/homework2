function out=myconv(a,b)
% This function takes as input row vectors "a" and "b", and returns their
% convolution in the variable "out". For example, myconv([1 2],[3 4 5])
% should return [3 10 13 10]
pad_length = length(a) + length(b)-1;
new_a = [a zeros(1,pad_length-length(a))];
new_b = [b zeros(1,pad_length-length(b))];
out = int32((ifft(fft(new_a) .* fft(new_b))));
out = out(1:pad_length);
return