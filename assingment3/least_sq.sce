n = input('Enter the number of equations:')

for i=1:n
    for j=1:2
        a(i,j) = input("Enter the values:") 
    end
end

for i=1:n
    b(i) = input("Enter the values:")
end

x = (a'*a)\(a'*b)
C = x(1,1)
D = x(2,1)
disp(C, 'C = ')
disp(D, 'D = ')
disp("The best fit line is b = C + Dt.")
