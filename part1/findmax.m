function out=findmax(v)
%Given a row vector v as input with the property that the elements of v are
%increasing up to a point, then decreasing, out returns the maximum of v.
%For example, findmax([1 4 7 8 6 3 0]) should return 8

%Note: if you use recursion, do not modify v as Matlab will take linear
%time to dupicate and modify v, while your algorithm should run in
%logarithmic time. Even for inputs of size 1000000, your algorithm should
%take less than 0.001 seconds.

% <your code goes here>
% out = ???;
k = round(length(v)/2);
if length(v) == 1
    out = v(1);
elseif v(k)<v(k+1)
    out = findmax(v(k+1:length(v)));
else 
    out = findmax(v(1:k));
end
end
