function res = mtseq(n)

t = [1 -1];
tmp = t;
for i=1:n
    tmp = kron(t, tmp);
end;

res = tmp(1:2^n);