rows = 3;
cols = 3;

A = zeros(rows, cols);
disp("Enter the 3x3 A matrix");
for i = 1:rows
    for j = 1:cols
        A(i,j) = input("value for A:");
    end
end
a = A;
disp(a)

disp('Performing gaussian elimination:')
a(2,:) = a(2,:)-(a(2,1)/a(1,1))*a(1,:)
a(3,:) = a(3,:)-(a(3,1)/a(1,1))*a(1,:)
a(3,:) = a(3,:)-(a(3,2)/a(2,2))*a(2,:)
disp(a)

disp('coloumn space of matrix is:')
flag = 0
for i = 1:rows
    for j = 1:cols
        if a(i,j) ~=0 then
            disp(A(:,i))
            f = 1
            break
        end
    end
end
if f == 0 then
    disp([0 0 0])
end
