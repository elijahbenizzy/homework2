function out=myconv(a,b)
% This function takes as input row vectors "a" and "b", and returns their
% convolution in the variable "out". For example, myconv([1 2],[3 4 5])
% should return [3 10 13 10]
new_a = padarray(a,[0,length(b)-1],0, 'pre');
new_b = padarray(b,[0,length(a)-1],0, 'pre');
out = int32(ifft(fft(new_a) .* fft(new_b)));