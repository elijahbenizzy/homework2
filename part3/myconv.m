function out=myconv(a,b)
% This function takes as input row vectors "a" and "b", and returns their
% convolution in the variable "out". For example, myconv([1 2],[3 4 5])
% should return [3 10 13 10]
new_a = [zeros(1,length(b)) a];
new_b = [zeros(1,length(a)) b];
out = (ifft(fft(new_a) .* fft(new_b)));