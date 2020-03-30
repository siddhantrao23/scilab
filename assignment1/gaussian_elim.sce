rows = 3;
cols = 3;

A = zeros(rows, cols);
disp("Enter the 3x3 A matrix");
for i = 1:rows
    for j = 1:cols
        A(i,j) = input("value for A:");
    end
end

B = zeros(rows, 1);
disp("Enter the 3x1 B matrix");
for i = 1:rows
    B(i) = input("Value for B:")
end

n = length(B);
// augmented matrix
aug = [A , B];
for j = 1:n-1
    for i = j+1:n
        aug(i, j:n+1) = aug(i, j:n+1) - aug(i, j) / aug(j, j) * aug(j, j:n+1);
    end
end

x = zeros(n, 1);
x(n) = aug(n, n+1) / aug(n,n);
for i = n-1:-1:1
    x(i) = (aug(i, n+1) - aug(i, i+1:n) * x(i+1:n)) / aug(i,i);
end

disp(x(3), x(2), x(1),'The values of x,y,z are ')
disp(aug(1,1), aug(2,2), aug(3,3),'The pivots are ');
