field = randi(20,1,10);
vectorSize= size(field);
variable = 0;
n = 2;
disp(field);

while n <= vectorSize(2)
    if field(n-1)> field(n)
        variable = field(n-1);
        field(n-1) = field(n);
        field(n) = variable;
        n =2;
    else
        n = n+1;

    end

end


disp(field);
