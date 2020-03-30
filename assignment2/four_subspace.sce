rows = 3;
cols = 3;

A = zeros(rows, cols);
disp("Enter the 3x3 A matrix");
for i = 1:rows
    for j = 1:cols
        A(i,j) = input("value for A:");
    end
end

[m,n] = size(A)
[v,pivots] = rref(A)
r = length(pivots)
disp(r,'rank = ')
cs = A(:,pivots)
disp(cs,'Column space = ')

ns = kernel(A)
disp(ns,"null space = ")

rs = v(1:r,:)'
disp(rs,'Row space = ')

lns = kernel(A')
disp(lns,"Left Null space = ")
