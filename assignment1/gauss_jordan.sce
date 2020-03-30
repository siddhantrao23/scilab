rows = 3;
cols = 3;

A = zeros(rows, cols);
disp("Enter the 3x3 matrix A");
for i = 1:rows
    for j = 1:cols
        A(i,j) = input("value for A:")
    end
end

n = length(A(1,:));
aug = [A, eye(n,n)];
for j = 1:n-1
    for i = j+1:n
        aug(i, j:2*n) = aug(i, j:2*n) - aug(i, j) / aug(j, j) * aug(j, j:2*n);
    end
end

for j = n:-1:2
    aug(1:j-1, :) = aug(1:j-1, :) - aug(1:j-1, j) / aug(j, j)*aug(j, :);
end

for j = 1:n
    aug(j, :) = aug(j, :) / aug(j, j);
end
B = aug(:, n+1:2*n);
disp(B,'The inverse of B is');
