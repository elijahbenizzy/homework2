function out=roundup235(n)
%         
% This function rounds up a number n to the next number that is a product
% % of powers of 2, 3, and 5. For example, roundup235(999997) should return
% % 1000000.
if n == 0
    out = 0;
    return
end
out = Inf;
maxa = ceil(log(n)/log(2));
maxb = ceil(log(n)/log(3));
maxc = ceil(log(n)/log(5));
for a = 0:maxa
    for b = 0:maxb
        for c = 0:maxc
            candidate = 2^a*3^b*5^c;
            if candidate >= n && candidate <= out
                out = candidate;
            end
            
        end
    end
end

return



    