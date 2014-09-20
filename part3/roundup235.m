function out=roundup235(n)
        
% This function rounds up a number n to the next number that is a product
% of powers of 2, 3, and 5. For example, roundup235(999997) should return
% 1000000.
if n == 1
    out = 1;
    return
end
relevant_primes = [2,3,5];

multiples = relevant_primes(find(mod(n,relevant_primes) == 0));
while(isempty(multiples))
    n = n+1;
    multiples = relevant_primes(find(mod(n,relevant_primes) == 0));
end
prime_multiple = multiples(1);
out = roundup235(n/prime_multiple)*prime_multiple;
end
    