function k=next_prime(n)
n=n+1;
while isprime(n)==0
    n=n+1;
    k=n;
end
end